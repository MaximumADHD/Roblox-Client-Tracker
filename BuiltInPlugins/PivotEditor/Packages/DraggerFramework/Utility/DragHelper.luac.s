PROTO_0:
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
       21 MOVE                             R5 R0
       22 NAMECALL                         R3 R1 K7 ["Cross"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R3 K8 ["Magnitude"]
       27 LOADK                            R5 K9 [1E-05]
       28 JUMPIFNOTLT                      R4 R5 ; [+12]
       30 LOADK                            R3 K10 [{1, 0, 0}]
       31 GETTABLEKS                       R5 R0 K11 ["X"]
       33 FASTCALL1                        MATH_ABS R5 ; [+2]
       34 GETIMPORT                        R4 K6 [math.abs]
       36 CALL                             R4 1 1
       37 LOADK                            R5 K12 [0.9]
       38 JUMPIFNOTLT                      R5 R4 ; [+2]
       40 LOADK                            R3 K13 [{0, 1, 0}]
       41 GETTABLEKS                       R4 R3 K14 ["Unit"]
       43 MOVE                             R8 R4
       44 NAMECALL                         R6 R1 K7 ["Cross"]
       46 CALL                             R6 2 1
       47 MINUS                            R5 R6
       48 MOVE                             R6 R5
       49 MOVE                             R7 R1
       50 MOVE                             R8 R4
       51 RETURN                           R6 3

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K11 ["getClosestFace"]
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 SUBRK                            R7 K1 [1] R2
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

PROTO_7:
        0 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R5 0
        1 DIV                              R4 R0 R5
        2 ADDK                             R3 R4 K0 [0.5]
        3 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        4 GETIMPORT                        R2 K3 [math.floor]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 MUL                              R1 R2 R3
        9 RETURN                           R1 1

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+3]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R7 K2 [CFrame.fromMatrix]
        2 MOVE                             R8 R3
        3 MOVE                             R12 R5
        4 NAMECALL                         R10 R6 K3 ["Cross"]
        6 CALL                             R10 2 1
        7 MINUS                            R9 R10
        8 MOVE                             R10 R5
        9 CALL                             R7 3 1
       10 JUMPIF                           R4 ; [+7]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K4 ["getSizeInSurface"]
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

PROTO_11:
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
       78 GETTABLEKS                       R16 R5 K4 ["X"]
       80 LOADN                            R17 0
       81 GETTABLEKS                       R18 R5 K6 ["Z"]
       83 FASTCALL                         VECTOR ; [+2]
       84 GETIMPORT                        R15 K20 [Vector3.new]
       86 CALL                             R15 3 1
       87 GETTABLEKS                       R15 R15 K21 ["Unit"]
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
      140 LOADN                            R25 -1
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
      162 SUBRK                            R28 K27 [1] R24
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
      179 SUBRK                            R29 K27 [1] R25
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
      209 GETTABLEKS                       R26 R0 K1 ["CFrame"]
      211 GETTABLEKS                       R26 R26 K31 ["YVector"]
      213 MOVE                             R30 R26
      214 NAMECALL                         R28 R24 K32 ["Dot"]
      216 CALL                             R28 2 1
      217 FASTCALL1                        MATH_ABS R28 ; [+2]
      218 GETIMPORT                        R27 K14 [math.abs]
      220 CALL                             R27 1 1
      221 LOADK                            R28 K33 [0.99]
      222 JUMPIFNOTLT                      R28 R27 ; [+24]
      224 GETTABLEKS                       R29 R0 K1 ["CFrame"]
      226 GETTABLEKS                       R29 R29 K34 ["XVector"]
      228 NAMECALL                         R27 R24 K35 ["Cross"]
      230 CALL                             R27 2 1
      231 GETTABLEKS                       R28 R27 K36 ["Magnitude"]
      233 LOADK                            R29 K37 [1E-05]
      234 JUMPIFNOTLT                      R28 R29 ; [+9]
      236 GETTABLEKS                       R30 R0 K1 ["CFrame"]
      238 GETTABLEKS                       R30 R30 K38 ["ZVector"]
      240 NAMECALL                         R28 R24 K35 ["Cross"]
      242 CALL                             R28 2 1
      243 MOVE                             R27 R28
      244 GETTABLEKS                       R25 R27 K21 ["Unit"]
      246 JUMP                             ; [+22]
      247 MOVE                             R29 R26
      248 NAMECALL                         R27 R24 K35 ["Cross"]
      250 CALL                             R27 2 1
      251 GETTABLEKS                       R28 R27 K36 ["Magnitude"]
      253 LOADK                            R29 K37 [1E-05]
      254 JUMPIFNOTLT                      R28 R29 ; [+12]
      256 LOADK                            R27 K39 [{1, 0, 0}]
      257 GETTABLEKS                       R29 R24 K4 ["X"]
      259 FASTCALL1                        MATH_ABS R29 ; [+2]
      260 GETIMPORT                        R28 K14 [math.abs]
      262 CALL                             R28 1 1
      263 LOADK                            R29 K40 [0.9]
      264 JUMPIFNOTLT                      R29 R28 ; [+2]
      266 LOADK                            R27 K41 [{0, 1, 0}]
      267 GETTABLEKS                       R25 R27 K21 ["Unit"]
      269 MOVE                             R29 R23
      270 NAMECALL                         R27 R4 K42 ["PointToWorldSpace"]
      272 CALL                             R27 2 1
      273 JUMPIFNOT                        R14 ; [+12]
      274 GETUPVAL                         R28 1
      275 MOVE                             R29 R0
      276 MOVE                             R30 R3
      277 GETUPVAL                         R31 2
      278 GETTABLEKS                       R31 R31 K43 ["Polygon"]
      280 MOVE                             R32 R27
      281 LOADK                            R33 K44 [{0, 0, 0}]
      282 MOVE                             R34 R24
      283 MOVE                             R35 R25
      284 CALL                             R28 7 -1
      285 RETURN                           R28 -1
      286 GETUPVAL                         R28 1
      287 MOVE                             R29 R0
      288 MOVE                             R30 R3
      289 GETUPVAL                         R31 2
      290 GETTABLEKS                       R31 R31 K45 ["Sphere"]
      292 MOVE                             R32 R27
      293 LOADK                            R33 K44 [{0, 0, 0}]
      294 MOVE                             R34 R24
      295 MOVE                             R35 R25
      296 CALL                             R28 7 -1
      297 RETURN                           R28 -1

PROTO_12:
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
       33 JUMPIFNOTLT                      R11 R12 ; [+69]
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
       71 LOADN                            R16 0
       72 FASTCALL3                        VECTOR R8 R16 R8
       74 MOVE                             R15 R8
       75 MOVE                             R17 R8
       76 GETIMPORT                        R14 K19 [Vector3.new]
       78 CALL                             R14 3 1
       79 MULK                             R13 R14 K10 [0.5]
       80 GETUPVAL                         R14 0
       81 MOVE                             R15 R0
       82 MOVE                             R16 R3
       83 GETUPVAL                         R17 1
       84 GETTABLEKS                       R17 R17 K20 ["Polygon"]
       86 FASTCALL3                        VECTOR R10 R11 R12
       88 MOVE                             R21 R10
       89 MOVE                             R22 R11
       90 MOVE                             R23 R12
       91 GETIMPORT                        R20 K19 [Vector3.new]
       93 CALL                             R20 3 1
       94 NAMECALL                         R18 R5 K21 ["PointToWorldSpace"]
       96 CALL                             R18 2 1
       97 MOVE                             R19 R13
       98 MOVE                             R20 R4
       99 GETTABLEKS                       R21 R5 K22 ["YVector"]
      101 CALL                             R14 7 -1
      102 RETURN                           R14 -1
      103 GETTABLEKS                       R13 R6 K11 ["X"]
      105 ADD                              R12 R13 R10
      106 FASTCALL1                        MATH_ABS R12 ; [+2]
      107 GETIMPORT                        R11 K13 [math.abs]
      109 CALL                             R11 1 1
      110 LOADK                            R12 K14 [0.001]
      111 JUMPIFNOTLT                      R11 R12 ; [+70]
      113 GETTABLEKS                       R13 R6 K5 ["Y"]
      115 FASTCALL1                        MATH_ABS R13 ; [+2]
      116 GETIMPORT                        R12 K13 [math.abs]
      118 CALL                             R12 1 1
      119 MULK                             R13 R9 K10 [0.5]
      120 JUMPIFNOTLT                      R13 R12 ; [+9]
      122 GETTABLEKS                       R13 R6 K5 ["Y"]
      124 FASTCALL1                        MATH_SIGN R13 ; [+2]
      125 GETIMPORT                        R12 K16 [math.sign]
      127 CALL                             R12 1 1
      128 MUL                              R11 R12 R9
      129 JUMP                             ; [+1]
      130 LOADN                            R11 0
      131 GETTABLEKS                       R14 R6 K6 ["Z"]
      133 FASTCALL1                        MATH_ABS R14 ; [+2]
      134 GETIMPORT                        R13 K13 [math.abs]
      136 CALL                             R13 1 1
      137 MULK                             R14 R9 K10 [0.5]
      138 JUMPIFNOTLT                      R14 R13 ; [+9]
      140 GETTABLEKS                       R14 R6 K6 ["Z"]
      142 FASTCALL1                        MATH_SIGN R14 ; [+2]
      143 GETIMPORT                        R13 K16 [math.sign]
      145 CALL                             R13 1 1
      146 MUL                              R12 R13 R9
      147 JUMP                             ; [+1]
      148 LOADN                            R12 0
      149 LOADN                            R16 0
      150 FASTCALL3                        VECTOR R8 R16 R8
      152 MOVE                             R15 R8
      153 MOVE                             R17 R8
      154 GETIMPORT                        R14 K19 [Vector3.new]
      156 CALL                             R14 3 1
      157 MULK                             R13 R14 K10 [0.5]
      158 GETUPVAL                         R14 0
      159 MOVE                             R15 R0
      160 MOVE                             R16 R3
      161 GETUPVAL                         R17 1
      162 GETTABLEKS                       R17 R17 K20 ["Polygon"]
      164 MINUS                            R21 R10
      165 FASTCALL3                        VECTOR R21 R11 R12
      167 MOVE                             R22 R11
      168 MOVE                             R23 R12
      169 GETIMPORT                        R20 K19 [Vector3.new]
      171 CALL                             R20 3 1
      172 NAMECALL                         R18 R5 K21 ["PointToWorldSpace"]
      174 CALL                             R18 2 1
      175 MOVE                             R19 R13
      176 MOVE                             R20 R4
      177 GETTABLEKS                       R22 R5 K22 ["YVector"]
      179 MINUS                            R21 R22
      180 CALL                             R14 7 -1
      181 RETURN                           R14 -1
      182 LOADN                            R11 0
      183 GETTABLEKS                       R14 R6 K6 ["Z"]
      185 FASTCALL1                        MATH_SIGN R14 ; [+2]
      186 GETIMPORT                        R13 K16 [math.sign]
      188 CALL                             R13 1 1
      189 MUL                              R12 R13 R9
      190 GETTABLEKS                       R15 R6 K5 ["Y"]
      192 FASTCALL1                        MATH_SIGN R15 ; [+2]
      193 GETIMPORT                        R14 K16 [math.sign]
      195 CALL                             R14 1 1
      196 MUL                              R13 R14 R9
      197 LOADN                            R14 0
      198 GETTABLEKS                       R16 R6 K5 ["Y"]
      200 FASTCALL1                        MATH_ABS R16 ; [+2]
      201 GETIMPORT                        R15 K13 [math.abs]
      203 CALL                             R15 1 1
      204 GETTABLEKS                       R17 R6 K6 ["Z"]
      206 FASTCALL1                        MATH_ABS R17 ; [+2]
      207 GETIMPORT                        R16 K13 [math.abs]
      209 CALL                             R16 1 1
      210 JUMPIFNOTLT                      R16 R15 ; [+7]
      212 MOVE                             R15 R13
      213 MOVE                             R13 R11
      214 MOVE                             R11 R15
      215 MOVE                             R15 R14
      216 MOVE                             R14 R12
      217 MOVE                             R12 R15
      218 GETTABLEKS                       R18 R6 K5 ["Y"]
      220 MUL                              R17 R11 R18
      221 GETTABLEKS                       R19 R6 K6 ["Z"]
      223 MUL                              R18 R12 R19
      224 ADD                              R16 R17 R18
      225 MUL                              R17 R9 R9
      226 DIV                              R15 R16 R17
      227 JUMPIFEQ                         R15 R15 ; [+2]
      229 LOADN                            R15 0
      230 LOADN                            R19 -1
      231 LOADN                            R20 1
      232 FASTCALL3                        MATH_CLAMP R15 R19 R20
      234 MOVE                             R18 R15
      235 GETIMPORT                        R17 K24 [math.clamp]
      237 CALL                             R17 3 1
      238 FASTCALL1                        MATH_ACOS R17 ; [+2]
      239 GETIMPORT                        R16 K26 [math.acos]
      241 CALL                             R16 1 1
      242 MUL                              R17 R16 R9
      243 JUMPIFNOT                        R2 ; [+3]
      244 NEWCLOSURE                       R18 P0
      245 CAPTURE                          VAL R2
      246 JUMP                             ; [+1]
      247 GETUPVAL                         R18 2
      248 MOVE                             R19 R18
      249 MOVE                             R20 R17
      250 CALL                             R19 1 1
      251 LOADK                            R22 K27 [1.5707963267949]
      252 MUL                              R21 R22 R9
      253 DIV                              R20 R19 R21
      254 MOVE                             R22 R11
      255 MOVE                             R23 R13
      256 SUBRK                            R27 K28 [1] R20
      257 MULK                             R26 R27 K27 [1.5707963267949]
      258 FASTCALL1                        MATH_SIN R26 ; [+2]
      259 GETIMPORT                        R25 K30 [math.sin]
      261 CALL                             R25 1 1
      262 MUL                              R24 R22 R25
      263 MULK                             R27 R20 K27 [1.5707963267949]
      264 FASTCALL1                        MATH_SIN R27 ; [+2]
      265 GETIMPORT                        R26 K30 [math.sin]
      267 CALL                             R26 1 1
      268 MUL                              R25 R23 R26
      269 ADD                              R21 R24 R25
      270 MOVE                             R23 R12
      271 MOVE                             R24 R14
      272 SUBRK                            R28 K28 [1] R20
      273 MULK                             R27 R28 K27 [1.5707963267949]
      274 FASTCALL1                        MATH_SIN R27 ; [+2]
      275 GETIMPORT                        R26 K30 [math.sin]
      277 CALL                             R26 1 1
      278 MUL                              R25 R23 R26
      279 MULK                             R28 R20 K27 [1.5707963267949]
      280 FASTCALL1                        MATH_SIN R28 ; [+2]
      281 GETIMPORT                        R27 K30 [math.sin]
      283 CALL                             R27 1 1
      284 MUL                              R26 R24 R27
      285 ADD                              R22 R25 R26
      286 LOADN                            R26 0
      287 FASTCALL3                        VECTOR R26 R21 R22
      289 MOVE                             R27 R21
      290 MOVE                             R28 R22
      291 GETIMPORT                        R25 K19 [Vector3.new]
      293 CALL                             R25 3 1
      294 NAMECALL                         R23 R5 K31 ["VectorToWorldSpace"]
      296 CALL                             R23 2 1
      297 GETTABLEKS                       R4 R23 K32 ["Unit"]
      299 GETTABLEKS                       R28 R6 K11 ["X"]
      301 FASTCALL1                        MATH_SIGN R28 ; [+2]
      302 GETIMPORT                        R27 K16 [math.sign]
      304 CALL                             R27 1 1
      305 MUL                              R26 R10 R27
      306 FASTCALL3                        VECTOR R26 R21 R22
      308 MOVE                             R27 R21
      309 MOVE                             R28 R22
      310 GETIMPORT                        R25 K19 [Vector3.new]
      312 CALL                             R25 3 1
      313 NAMECALL                         R23 R5 K21 ["PointToWorldSpace"]
      315 CALL                             R23 2 1
      316 LOADN                            R25 0
      317 LOADN                            R26 0
      318 GETTABLEKS                       R27 R7 K11 ["X"]
      320 FASTCALL                         VECTOR ; [+2]
      321 GETIMPORT                        R24 K19 [Vector3.new]
      323 CALL                             R24 3 1
      324 GETUPVAL                         R25 0
      325 MOVE                             R26 R0
      326 MOVE                             R27 R3
      327 GETUPVAL                         R28 1
      328 GETTABLEKS                       R28 R28 K33 ["Cylinder"]
      330 MOVE                             R29 R23
      331 MOVE                             R30 R24
      332 MOVE                             R31 R4
      333 GETTABLEKS                       R32 R5 K34 ["XVector"]
      335 CALL                             R25 7 -1
      336 RETURN                           R25 -1

PROTO_13:
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
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K4 ["intersectRayPlane"]
       18 MOVE                             R8 R5
       19 LOADK                            R9 K5 [{1, 0, 0}]
       20 MOVE                             R10 R4
       21 MOVE                             R11 R6
       22 CALL                             R7 4 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K4 ["intersectRayPlane"]
       26 MOVE                             R9 R5
       27 LOADK                            R10 K6 [{0, 1, 0}]
       28 MOVE                             R11 R4
       29 MOVE                             R12 R6
       30 CALL                             R8 4 1
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K4 ["intersectRayPlane"]
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

PROTO_14:
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
       14 GETTABLEKS                       R5 R0 K3 ["CFrame"]
       16 GETTABLEKS                       R5 R5 K4 ["XVector"]
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
       33 MOVE                             R8 R4
       34 NAMECALL                         R6 R5 K11 ["Cross"]
       36 CALL                             R6 2 1
       37 GETTABLEKS                       R7 R6 K12 ["Magnitude"]
       39 LOADK                            R8 K13 [1E-05]
       40 JUMPIFNOTLT                      R7 R8 ; [+22]
       42 LOADK                            R6 K14 [{1, 0, 0}]
       43 GETTABLEKS                       R8 R4 K15 ["X"]
       45 FASTCALL1                        MATH_ABS R8 ; [+2]
       46 GETIMPORT                        R7 K8 [math.abs]
       48 CALL                             R7 1 1
       49 LOADK                            R8 K9 [0.9]
       50 JUMPIFNOTLT                      R8 R7 ; [+2]
       52 LOADK                            R6 K16 [{0, 1, 0}]
       53 GETTABLEKS                       R8 R4 K17 ["Y"]
       55 FASTCALL1                        MATH_ABS R8 ; [+2]
       56 GETIMPORT                        R7 K8 [math.abs]
       58 CALL                             R7 1 1
       59 LOADK                            R8 K9 [0.9]
       60 JUMPIFNOTLT                      R8 R7 ; [+2]
       62 LOADK                            R6 K18 [{0, 0, 1}]
       63 GETTABLEKS                       R7 R6 K19 ["Unit"]
       65 MOVE                             R10 R4
       66 NAMECALL                         R8 R7 K11 ["Cross"]
       68 CALL                             R8 2 1
       69 GETIMPORT                        R9 K22 [table.freeze]
       71 DUPTABLE                         R10 K29 [{["matrix"], ["size"] = {0, 0, 0}, ["hit"], ["type"], ["color"]}]
       72 GETIMPORT                        R11 K31 [CFrame.fromMatrix]
       74 MOVE                             R12 R3
       75 MOVE                             R13 R8
       76 MOVE                             R14 R4
       77 CALL                             R11 3 1
       78 SETTABLEKS                       R11 R10 K23 ["matrix"]
       80 SETTABLEKS                       R3 R10 K26 ["hit"]
       82 GETUPVAL                         R11 1
       83 GETTABLEKS                       R11 R11 K32 ["Round"]
       85 SETTABLEKS                       R11 R10 K27 ["type"]
       87 GETTABLEKS                       R11 R0 K33 ["Color"]
       89 SETTABLEKS                       R11 R10 K28 ["color"]
       91 CALL                             R9 1 -1
       92 RETURN                           R9 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+73]
        4 GETTABLEKS                       R4 R1 K0 ["Position"]
        6 GETTABLEKS                       R5 R1 K1 ["Normal"]
        8 GETTABLEKS                       R8 R3 K2 ["a"]
       10 SUB                              R7 R8 R4
       11 GETTABLEKS                       R7 R7 K3 ["Magnitude"]
       13 GETTABLEKS                       R9 R3 K4 ["b"]
       15 SUB                              R8 R9 R4
       16 GETTABLEKS                       R8 R8 K3 ["Magnitude"]
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
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K10 ["getSizeInSurface"]
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
       66 GETUPVAL                         R12 2
       67 GETTABLEKS                       R12 R12 K25 ["Polygon"]
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

PROTO_16:
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
       19 DUPTABLE                         R9 K14 [{["matrix"], ["size"] = {0, 0, 0}, ["hit"], ["type"], ["color"]}]
       20 GETIMPORT                        R10 K16 [CFrame.fromMatrix]
       22 MOVE                             R11 R3
       23 MOVE                             R14 R6
       24 NAMECALL                         R12 R4 K17 ["Cross"]
       26 CALL                             R12 2 1
       27 GETTABLEKS                       R12 R12 K18 ["Unit"]
       29 MOVE                             R13 R4
       30 CALL                             R10 3 1
       31 SETTABLEKS                       R10 R9 K8 ["matrix"]
       33 SETTABLEKS                       R3 R9 K11 ["hit"]
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R10 R10 K19 ["Terrain"]
       38 SETTABLEKS                       R10 R9 K12 ["type"]
       40 GETTABLEKS                       R11 R1 K20 ["Material"]
       42 GETIMPORT                        R12 K23 [Enum.Material.Water]
       44 JUMPIFNOTEQ                      R11 R12 ; [+3]
       46 GETUPVAL                         R10 3
       47 JUMP                             ; [+5]
       48 GETTABLEKS                       R12 R1 K20 ["Material"]
       50 NAMECALL                         R10 R0 K24 ["GetMaterialColor"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K13 ["color"]
       55 CALL                             R8 1 -1
       56 RETURN                           R8 -1

PROTO_17:
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

PROTO_18:
        0 GETTABLEKS                       R3 R1 K0 ["Position"]
        2 GETTABLEKS                       R4 R1 K1 ["Normal"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["getClosestFace"]
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
       55 SUB                              R16 R3 R15
       56 GETTABLEKS                       R16 R16 K11 ["Magnitude"]
       58 JUMPIFNOTLT                      R16 R8 ; [+3]
       60 MOVE                             R8 R16
       61 MOVE                             R7 R13
       62 FORGLOOP                         R9 2 ; [-46]
       64 JUMPIFNOT                        R7 ; [+31]
       65 LOADNIL                          R9
       66 GETTABLEKS                       R11 R7 K5 ["a"]
       68 SUB                              R10 R11 R3
       69 GETTABLEKS                       R10 R10 K11 ["Magnitude"]
       71 GETTABLEKS                       R12 R7 K9 ["b"]
       73 SUB                              R11 R12 R3
       74 GETTABLEKS                       R11 R11 K11 ["Magnitude"]
       76 JUMPIFNOTLT                      R10 R11 ; [+4]
       78 GETTABLEKS                       R9 R7 K5 ["a"]
       80 JUMP                             ; [+2]
       81 GETTABLEKS                       R9 R7 K9 ["b"]
       83 GETUPVAL                         R10 1
       84 MOVE                             R11 R0
       85 MOVE                             R12 R3
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R13 R13 K12 ["Polygon"]
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["intersectRayPlane"]
        3 GETTABLEKS                       R3 R1 K1 ["Origin"]
        5 GETTABLEKS                       R4 R1 K2 ["Direction"]
        7 GETTABLEKS                       R5 R0 K3 ["Position"]
        9 GETTABLEKS                       R6 R0 K4 ["UpVector"]
       11 CALL                             R2 4 1
       12 GETIMPORT                        R3 K7 [table.freeze]
       14 DUPTABLE                         R4 K14 [{["matrix"], ["size"] = {0, 0, 0}, ["hit"], ["type"], ["color"]}]
       15 SETTABLEKS                       R0 R4 K8 ["matrix"]
       17 GETTABLEKS                       R6 R1 K1 ["Origin"]
       19 GETTABLEKS                       R8 R1 K2 ["Direction"]
       21 MUL                              R7 R8 R2
       22 ADD                              R5 R6 R7
       23 SETTABLEKS                       R5 R4 K11 ["hit"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K15 ["Nothing"]
       28 SETTABLEKS                       R5 R4 K12 ["type"]
       30 GETIMPORT                        R5 K18 [Color3.new]
       32 LOADN                            R6 1
       33 LOADN                            R7 1
       34 LOADN                            R8 1
       35 CALL                             R5 3 1
       36 SETTABLEKS                       R5 R4 K13 ["color"]
       38 CALL                             R3 1 -1
       39 RETURN                           R3 -1

PROTO_20:
        0 GETTABLEKS                       R3 R1 K0 ["Position"]
        2 GETTABLEKS                       R4 R1 K1 ["Normal"]
        4 GETTABLEKS                       R5 R0 K2 ["ExtentsCFrame"]
        6 GETTABLEKS                       R7 R0 K4 ["ExtentsSize"]
        8 MULK                             R6 R7 K3 [0.5]
        9 NEWTABLE                         R7 0 3
       11 GETTABLEKS                       R8 R5 K5 ["XVector"]
       13 GETTABLEKS                       R9 R5 K6 ["YVector"]
       15 GETTABLEKS                       R10 R5 K7 ["ZVector"]
       17 SETLIST                          R7 R8 3 [1]
       19 NEWTABLE                         R8 0 3
       21 GETTABLEKS                       R9 R6 K8 ["X"]
       23 GETTABLEKS                       R10 R6 K9 ["Y"]
       25 GETTABLEKS                       R11 R6 K10 ["Z"]
       27 SETLIST                          R8 R9 3 [1]
       29 LOADN                            R9 1
       30 LOADN                            R10 1
       31 LOADK                            R11 K11 [-∞]
       32 MOVE                             R12 R7
       33 LOADNIL                          R13
       34 LOADNIL                          R14
       35 FORGPREP                         R12
       36 MOVE                             R19 R4
       37 NAMECALL                         R17 R16 K12 ["Dot"]
       39 CALL                             R17 2 1
       40 FASTCALL1                        MATH_ABS R17 ; [+3]
       41 MOVE                             R19 R17
       42 GETIMPORT                        R18 K15 [math.abs]
       44 CALL                             R18 1 1
       45 JUMPIFNOTLT                      R11 R18 ; [+14]
       47 FASTCALL1                        MATH_ABS R17 ; [+3]
       48 MOVE                             R19 R17
       49 GETIMPORT                        R18 K15 [math.abs]
       51 CALL                             R18 1 1
       52 MOVE                             R11 R18
       53 MOVE                             R9 R15
       54 LOADN                            R18 0
       55 JUMPIFNOTLE                      R18 R17 ; [+3]
       57 LOADN                            R10 1
       58 JUMP                             ; [+1]
       59 LOADN                            R10 -1
       60 FORGLOOP                         R12 2 ; [-25]
       62 GETTABLE                         R13 R7 R9
       63 MUL                              R12 R13 R10
       64 GETTABLEKS                       R14 R5 K0 ["Position"]
       66 GETTABLE                         R16 R8 R9
       67 MUL                              R15 R12 R16
       68 ADD                              R13 R14 R15
       69 MODK                             R15 R9 K17 [3]
       70 ADDK                             R14 R15 K16 [1]
       71 MODK                             R16 R14 K17 [3]
       72 ADDK                             R15 R16 K16 [1]
       73 GETTABLE                         R16 R7 R14
       74 GETTABLE                         R17 R7 R15
       75 GETTABLE                         R18 R8 R14
       76 GETTABLE                         R19 R8 R15
       77 SUB                              R20 R3 R13
       78 MOVE                             R23 R16
       79 NAMECALL                         R21 R20 K12 ["Dot"]
       81 CALL                             R21 2 1
       82 MOVE                             R24 R17
       83 NAMECALL                         R22 R20 K12 ["Dot"]
       85 CALL                             R22 2 1
       86 MUL                              R25 R16 R21
       87 ADD                              R24 R13 R25
       88 MUL                              R25 R17 R22
       89 ADD                              R23 R24 R25
       90 MINUS                            R26 R18
       91 FASTCALL3                        MATH_CLAMP R21 R26 R18
       93 MOVE                             R25 R21
       94 MOVE                             R27 R18
       95 GETIMPORT                        R24 K19 [math.clamp]
       97 CALL                             R24 3 1
       98 MINUS                            R27 R19
       99 FASTCALL3                        MATH_CLAMP R22 R27 R19
      101 MOVE                             R26 R22
      102 MOVE                             R28 R19
      103 GETIMPORT                        R25 K19 [math.clamp]
      105 CALL                             R25 3 1
      106 LOADN                            R27 0
      107 JUMPIFNOTLE                      R27 R24 ; [+3]
      109 MOVE                             R26 R18
      110 JUMP                             ; [+1]
      111 MINUS                            R26 R18
      112 LOADN                            R28 0
      113 JUMPIFNOTLE                      R28 R25 ; [+3]
      115 MOVE                             R27 R19
      116 JUMP                             ; [+1]
      117 MINUS                            R27 R19
      118 MUL                              R30 R16 R26
      119 ADD                              R29 R13 R30
      120 MUL                              R30 R17 R27
      121 ADD                              R28 R29 R30
      122 FASTCALL1                        MATH_ABS R24 ; [+3]
      123 MOVE                             R32 R24
      124 GETIMPORT                        R31 K15 [math.abs]
      126 CALL                             R31 1 1
      127 SUB                              R30 R18 R31
      128 FASTCALL1                        MATH_ABS R25 ; [+3]
      129 MOVE                             R33 R25
      130 GETIMPORT                        R32 K15 [math.abs]
      132 CALL                             R32 1 1
      133 SUB                              R31 R19 R32
      134 JUMPIFNOTLE                      R30 R31 ; [+3]
      136 MOVE                             R29 R17
      137 JUMP                             ; [+1]
      138 MOVE                             R29 R16
      139 GETUPVAL                         R30 0
      140 MOVE                             R31 R0
      141 MOVE                             R32 R23
      142 GETUPVAL                         R33 1
      143 GETTABLEKS                       R33 R33 K20 ["Polygon"]
      145 MOVE                             R34 R28
      146 LOADNIL                          R35
      147 MOVE                             R36 R12
      148 MOVE                             R37 R29
      149 CALL                             R30 7 -1
      150 RETURN                           R30 -1

PROTO_21:
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 NOT                              R6 R7
        3 JUMPIF                           R6 ; [+4]
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 FASTCALL2K                       ASSERT R6 K0 ; [+4]
       10 LOADK                            R7 K0 ["Verify flagging"]
       11 GETIMPORT                        R5 K2 [assert]
       13 CALL                             R5 2 0
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETTABLEKS                       R5 R1 K3 ["Instance"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R5
       19 GETUPVAL                         R6 1
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+7]
       22 JUMPIF                           R5 ; [+6]
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETUPVAL                         R6 2
       25 MOVE                             R7 R2
       26 MOVE                             R8 R0
       27 CALL                             R6 2 -1
       28 RETURN                           R6 -1
       29 GETUPVAL                         R6 3
       30 MOVE                             R7 R1
       31 CALL                             R6 1 1
       32 JUMPIF                           R6 ; [+2]
       33 LOADNIL                          R6
       34 RETURN                           R6 1
       35 FASTCALL2K                       ASSERT R1 K4 ; [+5]
       37 MOVE                             R7 R1
       38 LOADK                            R8 K4 ["Good isGoodRaycastResult confirmed it to be non-nil"]
       39 GETIMPORT                        R6 K2 [assert]
       41 CALL                             R6 2 0
       42 JUMPIFNOT                        R5 ; [+11]
       43 LOADK                            R8 K5 ["Terrain"]
       44 NAMECALL                         R6 R5 K6 ["IsA"]
       46 CALL                             R6 2 1
       47 JUMPIFNOT                        R6 ; [+6]
       48 GETUPVAL                         R6 4
       49 MOVE                             R7 R5
       50 MOVE                             R8 R1
       51 MOVE                             R9 R3
       52 CALL                             R6 3 -1
       53 RETURN                           R6 -1
       54 JUMPIFNOT                        R5 ; [+104]
       55 GETUPVAL                         R6 0
       56 CALL                             R6 0 1
       57 JUMPIFNOT                        R6 ; [+7]
       58 JUMPIFNOT                        R4 ; [+6]
       59 GETUPVAL                         R6 5
       60 MOVE                             R7 R5
       61 MOVE                             R8 R1
       62 MOVE                             R9 R3
       63 CALL                             R6 3 -1
       64 RETURN                           R6 -1
       65 LOADK                            R8 K7 ["TriangleMeshPart"]
       66 NAMECALL                         R6 R5 K6 ["IsA"]
       68 CALL                             R6 2 1
       69 JUMPIFNOT                        R6 ; [+6]
       70 GETUPVAL                         R6 6
       71 MOVE                             R7 R5
       72 MOVE                             R8 R1
       73 MOVE                             R9 R3
       74 CALL                             R6 3 -1
       75 RETURN                           R6 -1
       76 LOADK                            R8 K8 ["FormFactorPart"]
       77 NAMECALL                         R6 R5 K6 ["IsA"]
       79 CALL                             R6 2 1
       80 JUMPIFNOT                        R6 ; [+41]
       81 LOADK                            R8 K9 ["WedgePart"]
       82 NAMECALL                         R6 R5 K6 ["IsA"]
       84 CALL                             R6 2 1
       85 JUMPIFNOT                        R6 ; [+6]
       86 GETUPVAL                         R6 7
       87 MOVE                             R7 R5
       88 MOVE                             R8 R1
       89 MOVE                             R9 R3
       90 CALL                             R6 3 -1
       91 RETURN                           R6 -1
       92 GETTABLEKS                       R6 R5 K10 ["Shape"]
       94 GETIMPORT                        R7 K14 [Enum.PartType.Ball]
       96 JUMPIFNOTEQ                      R6 R7 ; [+7]
       98 GETUPVAL                         R6 8
       99 MOVE                             R7 R5
      100 MOVE                             R8 R1
      101 MOVE                             R9 R3
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1
      104 GETTABLEKS                       R6 R5 K10 ["Shape"]
      106 GETIMPORT                        R7 K16 [Enum.PartType.Cylinder]
      108 JUMPIFNOTEQ                      R6 R7 ; [+7]
      110 GETUPVAL                         R6 9
      111 MOVE                             R7 R5
      112 MOVE                             R8 R1
      113 MOVE                             R9 R3
      114 CALL                             R6 3 -1
      115 RETURN                           R6 -1
      116 GETUPVAL                         R6 7
      117 MOVE                             R7 R5
      118 MOVE                             R8 R1
      119 MOVE                             R9 R3
      120 CALL                             R6 3 -1
      121 RETURN                           R6 -1
      122 LOADK                            R8 K17 ["CornerWedgePart"]
      123 NAMECALL                         R6 R5 K6 ["IsA"]
      125 CALL                             R6 2 1
      126 JUMPIF                           R6 ; [+10]
      127 LOADK                            R8 K18 ["TrussPart"]
      128 NAMECALL                         R6 R5 K6 ["IsA"]
      130 CALL                             R6 2 1
      131 JUMPIF                           R6 ; [+5]
      132 LOADK                            R8 K19 ["VehicleSeat"]
      133 NAMECALL                         R6 R5 K6 ["IsA"]
      135 CALL                             R6 2 1
      136 JUMPIFNOT                        R6 ; [+6]
      137 GETUPVAL                         R6 7
      138 MOVE                             R7 R5
      139 MOVE                             R8 R1
      140 MOVE                             R9 R3
      141 CALL                             R6 3 -1
      142 RETURN                           R6 -1
      143 GETUPVAL                         R6 10
      144 JUMPIFNOT                        R6 ; [+9]
      145 GETUPVAL                         R6 10
      146 NAMECALL                         R6 R6 K20 ["HasInternalPermission"]
      148 CALL                             R6 1 1
      149 JUMPIFNOT                        R6 ; [+4]
      150 GETIMPORT                        R6 K22 [warn]
      152 LOADK                            R7 K23 ["Dragger encountered unhandled geometry type, report this to the Studio Builder Tools team."]
      153 CALL                             R6 1 0
      154 GETUPVAL                         R6 11
      155 MOVE                             R7 R5
      156 MOVE                             R8 R1
      157 CALL                             R6 2 -1
      158 RETURN                           R6 -1
      159 GETUPVAL                         R6 1
      160 CALL                             R6 0 1
      161 JUMPIF                           R6 ; [+6]
      162 JUMPIFNOT                        R2 ; [+5]
      163 GETUPVAL                         R6 2
      164 MOVE                             R7 R2
      165 MOVE                             R8 R0
      166 CALL                             R6 2 -1
      167 RETURN                           R6 -1
      168 LOADNIL                          R6
      169 RETURN                           R6 1

PROTO_22:
        0 LOADNIL                          R10
        1 LOADNIL                          R11
        2 GETUPVAL                         R12 0
        3 GETTABLEKS                       R12 R12 K0 ["getSurfaceMatrix"]
        5 MOVE                             R13 R1
        6 GETUPVAL                         R14 0
        7 GETTABLEKS                       R14 R14 K1 ["raycast"]
        9 MOVE                             R15 R1
       10 MOVE                             R16 R2
       11 CALL                             R14 2 1
       12 MOVE                             R15 R4
       13 MOVE                             R16 R8
       14 LOADB                            R17 0
       15 CALL                             R12 5 1
       16 JUMPIFNOT                        R12 ; [+4]
       17 GETTABLEKS                       R10 R12 K2 ["matrix"]
       19 GETTABLEKS                       R11 R12 K3 ["type"]
       21 JUMPIF                           R10 ; [+1]
       22 RETURN                           R5 1
       23 GETIMPORT                        R13 K6 [CFrame.identity]
       25 JUMPIF                           R9 ; [+12]
       26 NAMECALL                         R14 R10 K7 ["Inverse"]
       28 CALL                             R14 1 1
       29 MUL                              R13 R14 R3
       30 JUMPIFNOT                        R7 ; [+5]
       31 GETUPVAL                         R14 1
       32 MOVE                             R15 R13
       33 CALL                             R14 1 1
       34 MOVE                             R13 R14
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R13 R13 K8 ["Rotation"]
       38 MUL                              R14 R10 R13
       39 LOADNIL                          R15
       40 LOADK                            R16 K9 [{0, 1, 0}]
       41 JUMPIFNOTEQ                      R6 R16 ; [+4]
       43 GETTABLEKS                       R15 R10 K10 ["UpVector"]
       45 JUMP                             ; [+5]
       46 MOVE                             R18 R6
       47 NAMECALL                         R16 R0 K11 ["VectorToWorldSpace"]
       49 CALL                             R16 2 1
       50 MOVE                             R15 R16
       51 LOADNIL                          R16
       52 LOADK                            R17 K12 [-∞]
       53 GETIMPORT                        R18 K14 [ipairs]
       55 GETUPVAL                         R19 2
       56 CALL                             R18 1 3
       57 FORGPREP_INEXT                   R18
       58 MOVE                             R25 R22
       59 NAMECALL                         R23 R14 K11 ["VectorToWorldSpace"]
       61 CALL                             R23 2 1
       62 MOVE                             R25 R15
       63 NAMECALL                         R23 R23 K15 ["Dot"]
       65 CALL                             R23 2 1
       66 JUMPIFNOTLT                      R17 R23 ; [+3]
       68 MOVE                             R16 R22
       69 MOVE                             R17 R23
       70 FORGLOOP                         R18 2 [inext] ; [-13]
       72 ORK                              R16 R16 K9 [{0, 1, 0}]
       73 GETUPVAL                         R18 3
       74 GETIMPORT                        R19 K17 [CFrame.fromAxisAngle]
       76 MOVE                             R20 R16
       77 LOADK                            R21 K18 [1.5707963267949]
       78 CALL                             R19 2 -1
       79 CALL                             R18 -1 1
       80 MUL                              R19 R18 R5
       81 MOVE                             R20 R11
       82 RETURN                           R19 2

PROTO_23:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["getSurfaceMatrix"]
        5 MOVE                             R5 R0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K1 ["raycast"]
        9 MOVE                             R7 R0
       10 GETTABLEKS                       R8 R1 K2 ["selection"]
       12 CALL                             R6 2 1
       13 GETTABLEKS                       R7 R1 K3 ["lastTargetMat"]
       15 GETTABLEKS                       R8 R1 K4 ["gridSnap"]
       17 GETTABLEKS                       R9 R1 K5 ["useBoundingBoxes"]
       19 CALL                             R4 5 1
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETTABLEKS                       R2 R4 K6 ["matrix"]
       23 GETTABLEKS                       R3 R4 K7 ["type"]
       25 JUMPIF                           R2 ; [+11]
       26 DUPTABLE                         R5 K10 [{"tiltRotate", "dragTargetType"}]
       27 GETTABLEKS                       R6 R1 K8 ["tiltRotate"]
       29 SETTABLEKS                       R6 R5 K8 ["tiltRotate"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K11 ["Nothing"]
       34 SETTABLEKS                       R6 R5 K9 ["dragTargetType"]
       36 RETURN                           R5 1
       37 GETIMPORT                        R5 K14 [CFrame.identity]
       39 GETTABLEKS                       R6 R1 K15 ["disableTargetSpace"]
       41 JUMPIF                           R6 ; [+16]
       42 NAMECALL                         R6 R2 K16 ["Inverse"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R1 K17 ["mainCFrame"]
       47 MUL                              R5 R6 R7
       48 GETTABLEKS                       R6 R1 K18 ["alignRotation"]
       50 JUMPIFNOT                        R6 ; [+5]
       51 GETUPVAL                         R6 2
       52 MOVE                             R7 R5
       53 CALL                             R6 1 1
       54 MOVE                             R5 R6
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R5 R5 K19 ["Rotation"]
       58 MUL                              R6 R2 R5
       59 LOADNIL                          R7
       60 GETTABLEKS                       R8 R1 K20 ["axis"]
       62 LOADK                            R9 K21 [{0, 1, 0}]
       63 JUMPIFNOTEQ                      R8 R9 ; [+4]
       65 GETTABLEKS                       R7 R2 K22 ["UpVector"]
       67 JUMP                             ; [+8]
       68 GETTABLEKS                       R8 R1 K23 ["cameraCFrame"]
       70 GETTABLEKS                       R10 R1 K20 ["axis"]
       72 NAMECALL                         R8 R8 K24 ["VectorToWorldSpace"]
       74 CALL                             R8 2 1
       75 MOVE                             R7 R8
       76 LOADNIL                          R8
       77 LOADK                            R9 K25 [-∞]
       78 GETUPVAL                         R10 3
       79 LOADNIL                          R11
       80 LOADNIL                          R12
       81 FORGPREP                         R10
       82 MOVE                             R17 R14
       83 NAMECALL                         R15 R6 K24 ["VectorToWorldSpace"]
       85 CALL                             R15 2 1
       86 MOVE                             R17 R7
       87 NAMECALL                         R15 R15 K26 ["Dot"]
       89 CALL                             R15 2 1
       90 JUMPIFNOTLT                      R9 R15 ; [+3]
       92 MOVE                             R8 R14
       93 MOVE                             R9 R15
       94 FORGLOOP                         R10 2 ; [-13]
       96 ORK                              R8 R8 K21 [{0, 1, 0}]
       97 GETUPVAL                         R10 4
       98 GETIMPORT                        R11 K28 [CFrame.fromAxisAngle]
      100 MOVE                             R12 R8
      101 LOADK                            R13 K29 [1.5707963267949]
      102 CALL                             R11 2 -1
      103 CALL                             R10 -1 1
      104 DUPTABLE                         R11 K10 [{"tiltRotate", "dragTargetType"}]
      105 GETTABLEKS                       R13 R1 K8 ["tiltRotate"]
      107 MUL                              R12 R10 R13
      108 SETTABLEKS                       R12 R11 K8 ["tiltRotate"]
      110 SETTABLEKS                       R3 R11 K9 ["dragTargetType"]
      112 RETURN                           R11 1

PROTO_24:
        0 LOADK                            R4 K0 [∞]
        1 LOADNIL                          R5
        2 LOADN                            R8 -1
        3 LOADN                            R6 1
        4 LOADN                            R7 1
        5 FORNPREP                         R6
        6 MUL                              R10 R8 R1
        7 ADD                              R9 R0 R10
        8 LOADN                            R12 -1
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

PROTO_25:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
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

PROTO_26:
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

PROTO_27:
        0 LOADNIL                          R9
        1 LOADNIL                          R10
        2 JUMPIFNOT                        R6 ; [+29]
        3 GETUPVAL                         R11 0
        4 GETTABLEKS                       R11 R11 K0 ["Sphere"]
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
       36 JUMPIFNOT                        R7 ; [+167]
       37 GETUPVAL                         R15 0
       38 GETTABLEKS                       R15 R15 K7 ["Polygon"]
       40 JUMPIFNOTEQ                      R2 R15 ; [+163]
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
       86 GETIMPORT                        R24 K16 [workspace]
       88 GETTABLEKS                       R24 R24 K17 ["CurrentCamera"]
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
      175 JUMPIFNOTLT                      R26 R21 ; [+28]
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
      204 MOVE                             R17 R9
      205 MOVE                             R18 R11
      206 JUMPIFNOT                        R17 ; [+40]
      207 JUMPIFNOT                        R18 ; [+39]
      208 FASTCALL1                        MATH_ABS R17 ; [+3]
      209 MOVE                             R22 R17
      210 GETIMPORT                        R21 K27 [math.abs]
      212 CALL                             R21 1 1
      213 FASTCALL1                        MATH_ABS R18 ; [+3]
      214 MOVE                             R23 R18
      215 GETIMPORT                        R22 K27 [math.abs]
      217 CALL                             R22 1 1
      218 SUB                              R20 R21 R22
      219 FASTCALL1                        MATH_ABS R20 ; [+2]
      220 GETIMPORT                        R19 K27 [math.abs]
      222 CALL                             R19 1 1
      223 LOADK                            R20 K31 [0.01]
      224 JUMPIFNOTLT                      R19 R20 ; [+4]
      226 MOVE                             R15 R17
      227 LOADK                            R16 K32 ["grid"]
      228 JUMP                             ; [+28]
      229 FASTCALL1                        MATH_ABS R17 ; [+3]
      230 MOVE                             R20 R17
      231 GETIMPORT                        R19 K27 [math.abs]
      233 CALL                             R19 1 1
      234 FASTCALL1                        MATH_ABS R18 ; [+3]
      235 MOVE                             R21 R18
      236 GETIMPORT                        R20 K27 [math.abs]
      238 CALL                             R20 1 1
      239 JUMPIFNOTLT                      R19 R20 ; [+4]
      241 MOVE                             R15 R17
      242 LOADK                            R16 K32 ["grid"]
      243 JUMP                             ; [+13]
      244 MOVE                             R15 R18
      245 LOADK                            R16 K33 ["soft"]
      246 JUMP                             ; [+10]
      247 JUMPIFNOT                        R17 ; [+3]
      248 MOVE                             R15 R17
      249 LOADK                            R16 K32 ["grid"]
      250 JUMP                             ; [+6]
      251 JUMPIFNOT                        R18 ; [+3]
      252 MOVE                             R15 R18
      253 LOADK                            R16 K33 ["soft"]
      254 JUMP                             ; [+2]
      255 LOADN                            R15 0
      256 LOADK                            R16 K34 ["none"]
      257 MOVE                             R19 R10
      258 MOVE                             R20 R12
      259 JUMPIFNOT                        R19 ; [+40]
      260 JUMPIFNOT                        R20 ; [+39]
      261 FASTCALL1                        MATH_ABS R19 ; [+3]
      262 MOVE                             R24 R19
      263 GETIMPORT                        R23 K27 [math.abs]
      265 CALL                             R23 1 1
      266 FASTCALL1                        MATH_ABS R20 ; [+3]
      267 MOVE                             R25 R20
      268 GETIMPORT                        R24 K27 [math.abs]
      270 CALL                             R24 1 1
      271 SUB                              R22 R23 R24
      272 FASTCALL1                        MATH_ABS R22 ; [+2]
      273 GETIMPORT                        R21 K27 [math.abs]
      275 CALL                             R21 1 1
      276 LOADK                            R22 K31 [0.01]
      277 JUMPIFNOTLT                      R21 R22 ; [+4]
      279 MOVE                             R17 R19
      280 LOADK                            R18 K32 ["grid"]
      281 JUMP                             ; [+28]
      282 FASTCALL1                        MATH_ABS R19 ; [+3]
      283 MOVE                             R22 R19
      284 GETIMPORT                        R21 K27 [math.abs]
      286 CALL                             R21 1 1
      287 FASTCALL1                        MATH_ABS R20 ; [+3]
      288 MOVE                             R23 R20
      289 GETIMPORT                        R22 K27 [math.abs]
      291 CALL                             R22 1 1
      292 JUMPIFNOTLT                      R21 R22 ; [+4]
      294 MOVE                             R17 R19
      295 LOADK                            R18 K32 ["grid"]
      296 JUMP                             ; [+13]
      297 MOVE                             R17 R20
      298 LOADK                            R18 K33 ["soft"]
      299 JUMP                             ; [+10]
      300 JUMPIFNOT                        R19 ; [+3]
      301 MOVE                             R17 R19
      302 LOADK                            R18 K32 ["grid"]
      303 JUMP                             ; [+6]
      304 JUMPIFNOT                        R20 ; [+3]
      305 MOVE                             R17 R20
      306 LOADK                            R18 K33 ["soft"]
      307 JUMP                             ; [+2]
      308 LOADN                            R17 0
      309 LOADK                            R18 K34 ["none"]
      310 NEWTABLE                         R19 0 0
      312 JUMPIFNOTEQKS                    R16 K33 ["soft"] ; [+8]
      314 FASTCALL2                        TABLE_INSERT R19 R13 ; [+5]
      316 MOVE                             R21 R19
      317 MOVE                             R22 R13
      318 GETIMPORT                        R20 K37 [table.insert]
      320 CALL                             R20 2 0
      321 JUMPIFNOTEQKS                    R18 K33 ["soft"] ; [+8]
      323 FASTCALL2                        TABLE_INSERT R19 R14 ; [+5]
      325 MOVE                             R21 R19
      326 MOVE                             R22 R14
      327 GETIMPORT                        R20 K37 [table.insert]
      329 CALL                             R20 2 0
      330 MOVE                             R20 R19
      331 LOADNIL                          R21
      332 LOADNIL                          R22
      333 FORGPREP                         R20
      334 GETTABLEKS                       R27 R24 K28 ["a"]
      336 GETTABLEKS                       R28 R24 K29 ["b"]
      338 NAMECALL                         R25 R0 K38 ["PointToWorldSpace"]
      340 CALL                             R25 3 2
      341 SETTABLEKS                       R25 R24 K28 ["a"]
      343 SETTABLEKS                       R26 R24 K29 ["b"]
      345 FORGLOOP                         R20 2 ; [-12]
      347 GETIMPORT                        R20 K39 [CFrame.new]
      349 MOVE                             R21 R15
      350 LOADN                            R22 0
      351 MOVE                             R23 R17
      352 CALL                             R20 3 1
      353 MOVE                             R21 R19
      354 RETURN                           R20 2

PROTO_28:
        0 GETUPVAL                         R14 0
        1 GETTABLEKS                       R14 R14 K0 ["raycast"]
        3 MOVE                             R15 R5
        4 MOVE                             R16 R0
        5 CALL                             R14 2 1
        6 GETUPVAL                         R15 0
        7 GETTABLEKS                       R15 R15 K1 ["getSurfaceMatrix"]
        9 MOVE                             R16 R5
       10 MOVE                             R17 R14
       11 MOVE                             R18 R8
       12 MOVE                             R19 R6
       13 LOADB                            R20 0
       14 CALL                             R15 5 1
       15 JUMPIF                           R15 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R16 R15 K2 ["matrix"]
       19 GETTABLEKS                       R17 R15 K3 ["type"]
       21 GETUPVAL                         R18 1
       22 GETTABLEKS                       R18 R18 K4 ["Terrain"]
       24 JUMPIFNOTEQ                      R17 R18 ; [+3]
       26 JUMPIFNOT                        R10 ; [+1]
       27 LOADB                            R9 0
       28 GETIMPORT                        R18 K7 [CFrame.identity]
       30 JUMPIF                           R13 ; [+12]
       31 NAMECALL                         R19 R16 K8 ["Inverse"]
       33 CALL                             R19 1 1
       34 MUL                              R18 R19 R1
       35 JUMPIFNOT                        R9 ; [+5]
       36 GETUPVAL                         R19 2
       37 MOVE                             R20 R18
       38 CALL                             R19 1 1
       39 MOVE                             R18 R19
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R18 R18 K9 ["Rotation"]
       43 GETUPVAL                         R19 0
       44 GETTABLEKS                       R19 R19 K10 ["getSizeInSpace"]
       46 MOVE                             R20 R3
       47 MUL                              R21 R18 R7
       48 CALL                             R19 2 1
       49 GETTABLEKS                       R22 R15 K11 ["hit"]
       51 NAMECALL                         R20 R16 K12 ["PointToObjectSpace"]
       53 CALL                             R20 2 1
       54 LOADNIL                          R21
       55 GETUPVAL                         R22 1
       56 GETTABLEKS                       R22 R22 K13 ["Sphere"]
       58 JUMPIFNOTEQ                      R17 R22 ; [+3]
       60 MOVE                             R21 R16
       61 JUMP                             ; [+9]
       62 GETIMPORT                        R22 K15 [CFrame.new]
       64 GETTABLEKS                       R23 R20 K16 ["X"]
       66 LOADN                            R24 0
       67 GETTABLEKS                       R25 R20 K17 ["Z"]
       69 CALL                             R22 3 1
       70 MUL                              R21 R16 R22
       71 GETIMPORT                        R22 K15 [CFrame.new]
       73 MINUS                            R23 R4
       74 CALL                             R22 1 1
       75 NEWTABLE                         R23 0 0
       77 MUL                              R25 R18 R7
       78 GETIMPORT                        R27 K15 [CFrame.new]
       80 MOVE                             R28 R2
       81 CALL                             R27 1 1
       82 MUL                              R26 R22 R27
       83 MUL                              R24 R25 R26
       84 GETTABLEKS                       R24 R24 K18 ["Position"]
       86 LOADNIL                          R25
       87 GETUPVAL                         R26 3
       88 MOVE                             R27 R16
       89 MOVE                             R28 R19
       90 MOVE                             R29 R17
       91 MOVE                             R30 R15
       92 MOVE                             R31 R20
       93 MOVE                             R32 R24
       94 MOVE                             R33 R6
       95 MOVE                             R34 R12
       96 MOVE                             R35 R11
       97 CALL                             R26 9 2
       98 MOVE                             R25 R26
       99 MOVE                             R23 R27
      100 MUL                              R21 R21 R25
      101 NOT                              R26 R10
      102 LOADNIL                          R27
      103 JUMPIFNOT                        R26 ; [+22]
      104 SUB                              R28 R2 R4
      105 MUL                              R29 R18 R7
      106 MOVE                             R31 R28
      107 NAMECALL                         R29 R29 K19 ["VectorToWorldSpace"]
      109 CALL                             R29 2 1
      110 LOADK                            R32 K20 [0.5]
      111 GETTABLEKS                       R33 R19 K21 ["Y"]
      113 MUL                              R31 R32 R33
      114 GETTABLEKS                       R32 R29 K21 ["Y"]
      116 SUB                              R30 R31 R32
      117 GETIMPORT                        R31 K15 [CFrame.new]
      119 LOADN                            R32 0
      120 MOVE                             R33 R30
      121 LOADN                            R34 0
      122 CALL                             R31 3 1
      123 MUL                              R32 R21 R31
      124 MUL                              R27 R32 R18
      125 JUMP                             ; [+1]
      126 MUL                              R27 R21 R18
      127 GETIMPORT                        R28 K24 [table.freeze]
      129 DUPTABLE                         R29 K35 [{"baseCFrame", "offsetCFrame", "mainCFrame", "targetMatrix", "targetPart", "targetSize", "targetColor", "dragTargetType", "mouseWorld", "softSnaps"}]
      130 SETTABLEKS                       R27 R29 K25 ["baseCFrame"]
      132 SETTABLEKS                       R22 R29 K26 ["offsetCFrame"]
      134 MUL                              R31 R27 R7
      135 MUL                              R30 R31 R22
      136 SETTABLEKS                       R30 R29 K27 ["mainCFrame"]
      138 SETTABLEKS                       R16 R29 K28 ["targetMatrix"]
      140 JUMPIFNOT                        R14 ; [+3]
      141 GETTABLEKS                       R30 R14 K36 ["Instance"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R30
      145 SETTABLEKS                       R30 R29 K29 ["targetPart"]
      147 GETTABLEKS                       R30 R15 K37 ["size"]
      149 SETTABLEKS                       R30 R29 K30 ["targetSize"]
      151 GETTABLEKS                       R30 R15 K38 ["color"]
      153 SETTABLEKS                       R30 R29 K31 ["targetColor"]
      155 SETTABLEKS                       R17 R29 K32 ["dragTargetType"]
      157 GETTABLEKS                       R30 R15 K11 ["hit"]
      159 SETTABLEKS                       R30 R29 K33 ["mouseWorld"]
      161 SETTABLEKS                       R23 R29 K34 ["softSnaps"]
      163 CALL                             R28 1 -1
      164 RETURN                           R28 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["raycast"]
        3 MOVE                             R3 R0
        4 GETTABLEKS                       R4 R1 K1 ["selection"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getSurfaceMatrix"]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 GETTABLEKS                       R6 R1 K3 ["lastTargetMat"]
       14 GETTABLEKS                       R7 R1 K4 ["gridSnap"]
       16 GETTABLEKS                       R8 R1 K5 ["useBoundingBoxes"]
       18 CALL                             R3 5 1
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R4 R3 K6 ["matrix"]
       23 GETTABLEKS                       R5 R1 K7 ["alignRotation"]
       25 GETTABLEKS                       R6 R3 K8 ["type"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K9 ["Terrain"]
       30 JUMPIFNOTEQ                      R6 R7 ; [+5]
       32 GETTABLEKS                       R7 R1 K10 ["draggingByPivot"]
       34 JUMPIFNOT                        R7 ; [+1]
       35 LOADB                            R5 0
       36 GETIMPORT                        R7 K13 [CFrame.identity]
       38 GETTABLEKS                       R8 R1 K14 ["disableTargetSpace"]
       40 JUMPIF                           R8 ; [+14]
       41 NAMECALL                         R8 R4 K15 ["Inverse"]
       43 CALL                             R8 1 1
       44 GETTABLEKS                       R9 R1 K16 ["selectionBoundsCFrame"]
       46 MUL                              R7 R8 R9
       47 JUMPIFNOT                        R5 ; [+5]
       48 GETUPVAL                         R8 2
       49 MOVE                             R9 R7
       50 CALL                             R8 1 1
       51 MOVE                             R7 R8
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R7 R7 K17 ["Rotation"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K18 ["getSizeInSpace"]
       58 GETTABLEKS                       R9 R1 K19 ["selectionBoundsSize"]
       60 GETTABLEKS                       R11 R1 K20 ["tiltRotate"]
       62 MUL                              R10 R7 R11
       63 CALL                             R8 2 1
       64 GETTABLEKS                       R11 R3 K21 ["hit"]
       66 NAMECALL                         R9 R4 K22 ["PointToObjectSpace"]
       68 CALL                             R9 2 1
       69 LOADNIL                          R10
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K23 ["Sphere"]
       73 JUMPIFNOTEQ                      R6 R11 ; [+3]
       75 MOVE                             R10 R4
       76 JUMP                             ; [+9]
       77 GETIMPORT                        R11 K25 [CFrame.new]
       79 GETTABLEKS                       R12 R9 K26 ["X"]
       81 LOADN                            R13 0
       82 GETTABLEKS                       R14 R9 K27 ["Z"]
       84 CALL                             R11 3 1
       85 MUL                              R10 R4 R11
       86 GETIMPORT                        R11 K25 [CFrame.new]
       88 GETTABLEKS                       R13 R1 K28 ["draggedPoint"]
       90 MINUS                            R12 R13
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R14 R1 K20 ["tiltRotate"]
       94 MUL                              R13 R7 R14
       95 GETIMPORT                        R15 K25 [CFrame.new]
       97 GETTABLEKS                       R16 R1 K29 ["selectionBoundsOffset"]
       99 CALL                             R15 1 1
      100 MUL                              R14 R11 R15
      101 MUL                              R12 R13 R14
      102 GETTABLEKS                       R12 R12 K30 ["Position"]
      104 GETUPVAL                         R13 3
      105 MOVE                             R14 R4
      106 MOVE                             R15 R8
      107 MOVE                             R16 R6
      108 MOVE                             R17 R3
      109 MOVE                             R18 R9
      110 MOVE                             R19 R12
      111 GETTABLEKS                       R20 R1 K4 ["gridSnap"]
      113 GETTABLEKS                       R21 R1 K31 ["partSnap"]
      115 GETTABLEKS                       R22 R1 K32 ["softSnapMarginFactor"]
      117 CALL                             R13 9 2
      118 MUL                              R15 R10 R13
      119 GETTABLEKS                       R17 R1 K10 ["draggingByPivot"]
      121 NOT                              R16 R17
      122 LOADNIL                          R17
      123 JUMPIFNOT                        R16 ; [+28]
      124 GETTABLEKS                       R19 R1 K29 ["selectionBoundsOffset"]
      126 GETTABLEKS                       R20 R1 K28 ["draggedPoint"]
      128 SUB                              R18 R19 R20
      129 GETTABLEKS                       R20 R1 K20 ["tiltRotate"]
      131 MUL                              R19 R7 R20
      132 MOVE                             R21 R18
      133 NAMECALL                         R19 R19 K33 ["VectorToWorldSpace"]
      135 CALL                             R19 2 1
      136 LOADK                            R22 K34 [0.5]
      137 GETTABLEKS                       R23 R8 K35 ["Y"]
      139 MUL                              R21 R22 R23
      140 GETTABLEKS                       R22 R19 K35 ["Y"]
      142 SUB                              R20 R21 R22
      143 GETIMPORT                        R21 K25 [CFrame.new]
      145 LOADN                            R22 0
      146 MOVE                             R23 R20
      147 LOADN                            R24 0
      148 CALL                             R21 3 1
      149 MUL                              R22 R15 R21
      150 MUL                              R17 R22 R7
      151 JUMP                             ; [+1]
      152 MUL                              R17 R15 R7
      153 GETIMPORT                        R18 K38 [table.freeze]
      155 DUPTABLE                         R19 K49 [{"baseCFrame", "offsetCFrame", "mainCFrame", "targetMatrix", "targetPart", "targetSize", "targetColor", "dragTargetType", "mouseWorld", "softSnaps"}]
      156 SETTABLEKS                       R17 R19 K39 ["baseCFrame"]
      158 SETTABLEKS                       R11 R19 K40 ["offsetCFrame"]
      160 GETTABLEKS                       R22 R1 K20 ["tiltRotate"]
      162 MUL                              R21 R17 R22
      163 MUL                              R20 R21 R11
      164 SETTABLEKS                       R20 R19 K41 ["mainCFrame"]
      166 SETTABLEKS                       R4 R19 K42 ["targetMatrix"]
      168 JUMPIFNOT                        R2 ; [+3]
      169 GETTABLEKS                       R20 R2 K50 ["Instance"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R20
      173 SETTABLEKS                       R20 R19 K43 ["targetPart"]
      175 GETTABLEKS                       R20 R3 K51 ["size"]
      177 SETTABLEKS                       R20 R19 K44 ["targetSize"]
      179 GETTABLEKS                       R20 R3 K52 ["color"]
      181 SETTABLEKS                       R20 R19 K45 ["targetColor"]
      183 SETTABLEKS                       R6 R19 K46 ["dragTargetType"]
      185 GETTABLEKS                       R20 R3 K21 ["hit"]
      187 SETTABLEKS                       R20 R19 K47 ["mouseWorld"]
      189 SETTABLEKS                       R14 R19 K48 ["softSnaps"]
      191 CALL                             R18 1 -1
      192 RETURN                           R18 -1

PROTO_30:
        0 JUMPIF                           R2 ; [+2]
        1 LOADNIL                          R3
        2 RETURN                           R3 1
        3 GETTABLEKS                       R3 R0 K0 ["Unit"]
        5 LOADN                            R5 -1
        6 GETTABLEKS                       R6 R1 K0 ["Unit"]
        8 MUL                              R4 R5 R6
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K1 ["intersectRayPlane"]
       12 GETTABLEKS                       R6 R3 K2 ["Origin"]
       14 GETTABLEKS                       R7 R3 K3 ["Direction"]
       16 MOVE                             R8 R2
       17 MOVE                             R9 R4
       18 CALL                             R5 4 1
       19 LOADN                            R6 0
       20 JUMPIFNOTLE                      R6 R5 ; [+21]
       22 GETTABLEKS                       R7 R3 K2 ["Origin"]
       24 GETTABLEKS                       R9 R3 K3 ["Direction"]
       26 MUL                              R8 R5 R9
       27 ADD                              R6 R7 R8
       28 SUB                              R7 R6 R2
       29 DUPTABLE                         R8 K9 [{["mainCFrame"], ["snapPoint"] = , ["targetMatrix"] = , ["dragTargetType"]}]
       30 GETIMPORT                        R9 K12 [CFrame.new]
       32 MOVE                             R10 R7
       33 CALL                             R9 1 1
       34 SETTABLEKS                       R9 R8 K4 ["mainCFrame"]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K13 ["Nothing"]
       39 SETTABLEKS                       R9 R8 K8 ["dragTargetType"]
       41 RETURN                           R8 1
       42 LOADNIL                          R6
       43 RETURN                           R6 1

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
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Utility"]
       23 GETTABLEKS                       R4 R4 K11 ["Math"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R5 R2 K10 ["Utility"]
       30 GETTABLEKS                       R5 R5 K12 ["isGoodRaycastResult"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R6 R2 K10 ["Utility"]
       37 GETTABLEKS                       R6 R6 K13 ["getGeometry"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R7 R2 K10 ["Utility"]
       44 GETTABLEKS                       R7 R7 K14 ["roundRotation"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R8 R2 K10 ["Utility"]
       51 GETTABLEKS                       R8 R8 K15 ["snapRotationToPrimaryDirection"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R9 R2 K10 ["Utility"]
       58 GETTABLEKS                       R9 R9 K16 ["blackboxFindClosestMeshEdge"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K9 [require]
       63 GETTABLEKS                       R10 R2 K17 ["Flags"]
       65 GETTABLEKS                       R10 R10 K18 ["getFFlagSBT4371DraggingOverEmptySpace"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K9 [require]
       70 GETTABLEKS                       R11 R2 K17 ["Flags"]
       72 GETTABLEKS                       R11 R11 K19 ["getEngineFeatureDraggerServiceUseBoundingBoxes"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K9 [require]
       77 GETTABLEKS                       R12 R2 K10 ["Utility"]
       79 GETTABLEKS                       R12 R12 K20 ["CursorGroupName"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K23 [table.freeze]
       84 NEWTABLE                         R13 0 6
       86 LOADK                            R14 K24 [{1, 0, 0}]
       87 LOADK                            R15 K25 [{-1, 0, 0}]
       88 LOADK                            R16 K26 [{0, 1, 0}]
       89 LOADK                            R17 K27 [{0, -1, 0}]
       90 LOADK                            R18 K28 [{0, 0, 1}]
       91 LOADK                            R19 K29 [{0, 0, -1}]
       92 SETLIST                          R13 R14 6 [1]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K23 [table.freeze]
       97 DUPTABLE                         R14 K35 [{["Terrain"] = "Terrain", ["Polygon"] = "Polygon", ["Sphere"] = "Sphere", ["Cylinder"] = "Cylinder", ["Nothing"] = "Nothing"}]
       98 CALL                             R13 1 1
       99 NEWTABLE                         R14 16 0
      101 DUPCLOSURE                       R15 K36 [PROTO_0]
      102 CAPTURE                          VAL R12
      103 DUPCLOSURE                       R16 K37 [PROTO_1]
      104 SETTABLEKS                       R16 R14 K38 ["getSizeInSpace"]
      106 DUPCLOSURE                       R16 K39 [PROTO_2]
      107 CAPTURE                          VAL R5
      108 SETTABLEKS                       R16 R14 K40 ["getClosestFace"]
      110 DUPCLOSURE                       R16 K41 [PROTO_3]
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R14
      114 SETTABLEKS                       R16 R14 K42 ["getPartAndSurface"]
      116 DUPCLOSURE                       R16 K43 [PROTO_4]
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R16 R14 K44 ["raycast"]
      121 DUPCLOSURE                       R16 K45 [PROTO_5]
      122 SETTABLEKS                       R16 R14 K46 ["getSizeInSurface"]
      124 DUPCLOSURE                       R16 K47 [PROTO_6]
      125 GETIMPORT                        R17 K50 [Color3.new]
      127 LOADK                            R18 K51 [0.329411]
      128 LOADK                            R19 K52 [0.662745]
      129 LOADN                            R20 1
      130 CALL                             R17 3 1
      131 DUPCLOSURE                       R18 K53 [PROTO_7]
      132 DUPCLOSURE                       R19 K54 [PROTO_9]
      133 CAPTURE                          VAL R18
      134 DUPCLOSURE                       R20 K55 [PROTO_10]
      135 CAPTURE                          VAL R14
      136 DUPCLOSURE                       R21 K56 [PROTO_11]
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R13
      140 DUPCLOSURE                       R22 K57 [PROTO_12]
      141 CAPTURE                          VAL R20
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R18
      144 DUPCLOSURE                       R23 K58 [PROTO_13]
      145 CAPTURE                          VAL R3
      146 DUPCLOSURE                       R24 K59 [PROTO_14]
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R13
      149 DUPCLOSURE                       R25 K60 [PROTO_15]
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R24
      154 DUPCLOSURE                       R26 K61 [PROTO_16]
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R17
      159 DUPCLOSURE                       R27 K62 [PROTO_17]
      160 CAPTURE                          VAL R1
      161 DUPCLOSURE                       R28 K63 [PROTO_18]
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R24
      167 DUPCLOSURE                       R29 K64 [PROTO_19]
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R13
      170 DUPCLOSURE                       R30 K65 [PROTO_20]
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R13
      173 DUPCLOSURE                       R31 K66 [PROTO_21]
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R29
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R26
      179 CAPTURE                          VAL R30
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R28
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R24
      186 SETTABLEKS                       R31 R14 K67 ["getSurfaceMatrix"]
      188 DUPCLOSURE                       R31 K68 [PROTO_22]
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R6
      193 SETTABLEKS                       R31 R14 K69 ["DEPRECATED_updateTiltRotate"]
      195 DUPCLOSURE                       R31 K70 [PROTO_23]
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R6
      201 SETTABLEKS                       R31 R14 K71 ["updateTiltRotateNew"]
      203 DUPCLOSURE                       R31 K72 [PROTO_24]
      204 DUPCLOSURE                       R32 K73 [PROTO_25]
      205 DUPCLOSURE                       R33 K74 [PROTO_26]
      206 DUPCLOSURE                       R34 K75 [PROTO_27]
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R31
      209 DUPCLOSURE                       R35 K76 [PROTO_28]
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R34
      214 SETTABLEKS                       R35 R14 K77 ["DEPRECATED_getDragTarget"]
      216 DUPCLOSURE                       R35 K78 [PROTO_29]
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R34
      221 SETTABLEKS                       R35 R14 K79 ["getDragTargetNew"]
      223 DUPCLOSURE                       R35 K80 [PROTO_30]
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R13
      226 SETTABLEKS                       R35 R14 K81 ["getCameraPlaneDragTarget"]
      228 RETURN                           R14 1
