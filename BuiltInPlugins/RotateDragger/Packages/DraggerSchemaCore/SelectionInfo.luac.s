PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Terrain"]
        3 MOVE                             R4 R1
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 JUMPIFEQ                         R8 R3 ; [+19]
        9 LOADK                            R11 K1 ["FormFactorPart"]
       10 NAMECALL                         R9 R8 K2 ["IsA"]
       12 CALL                             R9 2 1
       13 JUMPIFNOT                        R9 ; [+7]
       14 MOVE                             R9 R0
       15 GETTABLEKS                       R10 R8 K3 ["CFrame"]
       17 GETTABLEKS                       R11 R8 K4 ["Size"]
       19 CALL                             R9 2 0
       20 JUMP                             ; [+6]
       21 MOVE                             R9 R0
       22 GETTABLEKS                       R10 R8 K5 ["ExtentsCFrame"]
       24 GETTABLEKS                       R11 R8 K6 ["ExtentsSize"]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R4 2 ; [-21]
       29 MOVE                             R4 R2
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 MOVE                             R9 R0
       34 NAMECALL                         R10 R8 K7 ["GetPivot"]
       36 CALL                             R10 1 1
       37 GETTABLEKS                       R11 R8 K4 ["Size"]
       39 CALL                             R9 2 0
       40 FORGLOOP                         R4 2 ; [-8]
       42 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["X"]
        2 GETTABLEKS                       R3 R1 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K2 ["Z"]
        6 GETUPVAL                         R6 0
        7 MUL                              R5 R6 R0
        8 NAMECALL                         R6 R5 K3 ["GetComponents"]
       10 CALL                             R6 1 12
       11 MUL                              R22 R2 R9
       12 FASTCALL1                        MATH_ABS R22 ; [+2]
       13 GETIMPORT                        R21 K7 [math.abs]
       15 CALL                             R21 1 1
       16 MUL                              R23 R3 R10
       17 FASTCALL1                        MATH_ABS R23 ; [+2]
       18 GETIMPORT                        R22 K7 [math.abs]
       20 CALL                             R22 1 1
       21 ADD                              R20 R21 R22
       22 MUL                              R22 R4 R11
       23 FASTCALL1                        MATH_ABS R22 ; [+2]
       24 GETIMPORT                        R21 K7 [math.abs]
       26 CALL                             R21 1 1
       27 ADD                              R19 R20 R21
       28 MULK                             R18 R19 K4 [0.5]
       29 MUL                              R23 R2 R12
       30 FASTCALL1                        MATH_ABS R23 ; [+2]
       31 GETIMPORT                        R22 K7 [math.abs]
       33 CALL                             R22 1 1
       34 MUL                              R24 R3 R13
       35 FASTCALL1                        MATH_ABS R24 ; [+2]
       36 GETIMPORT                        R23 K7 [math.abs]
       38 CALL                             R23 1 1
       39 ADD                              R21 R22 R23
       40 MUL                              R23 R4 R14
       41 FASTCALL1                        MATH_ABS R23 ; [+2]
       42 GETIMPORT                        R22 K7 [math.abs]
       44 CALL                             R22 1 1
       45 ADD                              R20 R21 R22
       46 MULK                             R19 R20 K4 [0.5]
       47 MUL                              R24 R2 R15
       48 FASTCALL1                        MATH_ABS R24 ; [+2]
       49 GETIMPORT                        R23 K7 [math.abs]
       51 CALL                             R23 1 1
       52 MUL                              R25 R3 R16
       53 FASTCALL1                        MATH_ABS R25 ; [+2]
       54 GETIMPORT                        R24 K7 [math.abs]
       56 CALL                             R24 1 1
       57 ADD                              R22 R23 R24
       58 MUL                              R24 R4 R17
       59 FASTCALL1                        MATH_ABS R24 ; [+2]
       60 GETIMPORT                        R23 K7 [math.abs]
       62 CALL                             R23 1 1
       63 ADD                              R21 R22 R23
       64 MULK                             R20 R21 K4 [0.5]
       65 GETTABLEKS                       R21 R5 K0 ["X"]
       67 GETTABLEKS                       R22 R5 K1 ["Y"]
       69 GETTABLEKS                       R23 R5 K2 ["Z"]
       71 GETUPVAL                         R25 1
       72 SUB                              R26 R21 R18
       73 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
       75 GETIMPORT                        R24 K9 [math.min]
       77 CALL                             R24 2 1
       78 SETUPVAL                         R24 1
       79 GETUPVAL                         R25 2
       80 ADD                              R26 R21 R18
       81 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
       83 GETIMPORT                        R24 K11 [math.max]
       85 CALL                             R24 2 1
       86 SETUPVAL                         R24 2
       87 GETUPVAL                         R25 3
       88 SUB                              R26 R22 R19
       89 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
       91 GETIMPORT                        R24 K9 [math.min]
       93 CALL                             R24 2 1
       94 SETUPVAL                         R24 3
       95 GETUPVAL                         R25 4
       96 ADD                              R26 R22 R19
       97 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
       99 GETIMPORT                        R24 K11 [math.max]
      101 CALL                             R24 2 1
      102 SETUPVAL                         R24 4
      103 GETUPVAL                         R25 5
      104 SUB                              R26 R23 R20
      105 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
      107 GETIMPORT                        R24 K9 [math.min]
      109 CALL                             R24 2 1
      110 SETUPVAL                         R24 5
      111 GETUPVAL                         R25 6
      112 ADD                              R26 R23 R20
      113 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      115 GETIMPORT                        R24 K11 [math.max]
      117 CALL                             R24 2 1
      118 SETUPVAL                         R24 6
      119 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["ProcModel flag was not on"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 NAMECALL                         R4 R0 K3 ["Inverse"]
        9 CALL                             R4 1 1
       10 LOADK                            R5 K4 [∞]
       11 LOADK                            R6 K5 [-∞]
       12 LOADK                            R7 K4 [∞]
       13 LOADK                            R8 K5 [-∞]
       14 LOADK                            R9 K4 [∞]
       15 LOADK                            R10 K5 [-∞]
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R4
       18 CAPTURE                          REF R5
       19 CAPTURE                          REF R6
       20 CAPTURE                          REF R7
       21 CAPTURE                          REF R8
       22 CAPTURE                          REF R9
       23 CAPTURE                          REF R10
       24 GETUPVAL                         R12 1
       25 MOVE                             R13 R11
       26 MOVE                             R14 R1
       27 MOVE                             R15 R2
       28 CALL                             R12 3 0
       29 MOVE                             R12 R3
       30 LOADNIL                          R13
       31 LOADNIL                          R14
       32 FORGPREP                         R12
       33 GETTABLEKS                       R19 R16 K6 ["WorldPosition"]
       35 NAMECALL                         R17 R0 K7 ["PointToObjectSpace"]
       37 CALL                             R17 2 1
       38 GETTABLEKS                       R18 R17 K8 ["X"]
       40 GETTABLEKS                       R19 R17 K9 ["Y"]
       42 GETTABLEKS                       R20 R17 K10 ["Z"]
       44 FASTCALL2                        MATH_MIN R5 R18 ; [+5]
       46 MOVE                             R22 R5
       47 MOVE                             R23 R18
       48 GETIMPORT                        R21 K13 [math.min]
       50 CALL                             R21 2 1
       51 MOVE                             R5 R21
       52 FASTCALL2                        MATH_MAX R6 R18 ; [+5]
       54 MOVE                             R22 R6
       55 MOVE                             R23 R18
       56 GETIMPORT                        R21 K15 [math.max]
       58 CALL                             R21 2 1
       59 MOVE                             R6 R21
       60 FASTCALL2                        MATH_MIN R7 R19 ; [+5]
       62 MOVE                             R22 R7
       63 MOVE                             R23 R19
       64 GETIMPORT                        R21 K13 [math.min]
       66 CALL                             R21 2 1
       67 MOVE                             R7 R21
       68 FASTCALL2                        MATH_MAX R8 R19 ; [+5]
       70 MOVE                             R22 R8
       71 MOVE                             R23 R19
       72 GETIMPORT                        R21 K15 [math.max]
       74 CALL                             R21 2 1
       75 MOVE                             R8 R21
       76 FASTCALL2                        MATH_MIN R9 R20 ; [+5]
       78 MOVE                             R22 R9
       79 MOVE                             R23 R20
       80 GETIMPORT                        R21 K13 [math.min]
       82 CALL                             R21 2 1
       83 MOVE                             R9 R21
       84 FASTCALL2                        MATH_MAX R10 R20 ; [+5]
       86 MOVE                             R22 R10
       87 MOVE                             R23 R20
       88 GETIMPORT                        R21 K15 [math.max]
       90 CALL                             R21 2 1
       91 MOVE                             R10 R21
       92 FORGLOOP                         R12 2 ; [-60]
       94 LOADK                            R14 K16 [0.5]
       95 ADD                              R15 R5 R6
       96 MUL                              R13 R14 R15
       97 LOADK                            R15 K16 [0.5]
       98 ADD                              R16 R7 R8
       99 MUL                              R14 R15 R16
      100 LOADK                            R16 K16 [0.5]
      101 ADD                              R17 R9 R10
      102 MUL                              R15 R16 R17
      103 FASTCALL                         VECTOR ; [+2]
      104 GETIMPORT                        R12 K19 [Vector3.new]
      106 CALL                             R12 3 1
      107 SUB                              R14 R6 R5
      108 SUB                              R15 R8 R7
      109 SUB                              R16 R10 R9
      110 FASTCALL                         VECTOR ; [+2]
      111 GETIMPORT                        R13 K19 [Vector3.new]
      113 CALL                             R13 3 1
      114 CLOSEUPVALS                      R5
      115 RETURN                           R12 2

PROTO_4:
        0 GETUPVAL                         R5 0
        1 NOT                              R4 R5
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["ProcModel flag was on"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 NAMECALL                         R3 R0 K3 ["Inverse"]
       10 CALL                             R3 1 1
       11 LOADK                            R4 K4 [∞]
       12 LOADK                            R5 K5 [-∞]
       13 LOADK                            R6 K4 [∞]
       14 LOADK                            R7 K5 [-∞]
       15 LOADK                            R8 K4 [∞]
       16 LOADK                            R9 K5 [-∞]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K6 ["Terrain"]
       20 GETIMPORT                        R11 K8 [ipairs]
       22 MOVE                             R12 R1
       23 CALL                             R11 1 3
       24 FORGPREP_INEXT                   R11
       25 JUMPIFEQ                         R15 R10 ; [+135]
       27 LOADNIL                          R16
       28 LOADNIL                          R17
       29 LOADK                            R20 K9 ["FormFactorPart"]
       30 NAMECALL                         R18 R15 K10 ["IsA"]
       32 CALL                             R18 2 1
       33 JUMPIFNOT                        R18 ; [+5]
       34 GETTABLEKS                       R16 R15 K11 ["CFrame"]
       36 GETTABLEKS                       R17 R15 K12 ["Size"]
       38 JUMP                             ; [+4]
       39 GETTABLEKS                       R16 R15 K13 ["ExtentsCFrame"]
       41 GETTABLEKS                       R17 R15 K14 ["ExtentsSize"]
       43 GETTABLEKS                       R18 R17 K15 ["X"]
       45 GETTABLEKS                       R19 R17 K16 ["Y"]
       47 GETTABLEKS                       R20 R17 K17 ["Z"]
       49 MUL                              R21 R3 R16
       50 NAMECALL                         R22 R21 K18 ["GetComponents"]
       52 CALL                             R22 1 12
       53 MUL                              R38 R18 R25
       54 FASTCALL1                        MATH_ABS R38 ; [+2]
       55 GETIMPORT                        R37 K22 [math.abs]
       57 CALL                             R37 1 1
       58 MUL                              R39 R19 R26
       59 FASTCALL1                        MATH_ABS R39 ; [+2]
       60 GETIMPORT                        R38 K22 [math.abs]
       62 CALL                             R38 1 1
       63 ADD                              R36 R37 R38
       64 MUL                              R38 R20 R27
       65 FASTCALL1                        MATH_ABS R38 ; [+2]
       66 GETIMPORT                        R37 K22 [math.abs]
       68 CALL                             R37 1 1
       69 ADD                              R35 R36 R37
       70 MULK                             R34 R35 K19 [0.5]
       71 MUL                              R39 R18 R28
       72 FASTCALL1                        MATH_ABS R39 ; [+2]
       73 GETIMPORT                        R38 K22 [math.abs]
       75 CALL                             R38 1 1
       76 MUL                              R40 R19 R29
       77 FASTCALL1                        MATH_ABS R40 ; [+2]
       78 GETIMPORT                        R39 K22 [math.abs]
       80 CALL                             R39 1 1
       81 ADD                              R37 R38 R39
       82 MUL                              R39 R20 R30
       83 FASTCALL1                        MATH_ABS R39 ; [+2]
       84 GETIMPORT                        R38 K22 [math.abs]
       86 CALL                             R38 1 1
       87 ADD                              R36 R37 R38
       88 MULK                             R35 R36 K19 [0.5]
       89 MUL                              R40 R18 R31
       90 FASTCALL1                        MATH_ABS R40 ; [+2]
       91 GETIMPORT                        R39 K22 [math.abs]
       93 CALL                             R39 1 1
       94 MUL                              R41 R19 R32
       95 FASTCALL1                        MATH_ABS R41 ; [+2]
       96 GETIMPORT                        R40 K22 [math.abs]
       98 CALL                             R40 1 1
       99 ADD                              R38 R39 R40
      100 MUL                              R40 R20 R33
      101 FASTCALL1                        MATH_ABS R40 ; [+2]
      102 GETIMPORT                        R39 K22 [math.abs]
      104 CALL                             R39 1 1
      105 ADD                              R37 R38 R39
      106 MULK                             R36 R37 K19 [0.5]
      107 GETTABLEKS                       R37 R21 K15 ["X"]
      109 GETTABLEKS                       R38 R21 K16 ["Y"]
      111 GETTABLEKS                       R39 R21 K17 ["Z"]
      113 SUB                              R42 R37 R34
      114 FASTCALL2                        MATH_MIN R4 R42 ; [+4]
      116 MOVE                             R41 R4
      117 GETIMPORT                        R40 K24 [math.min]
      119 CALL                             R40 2 1
      120 MOVE                             R4 R40
      121 ADD                              R42 R37 R34
      122 FASTCALL2                        MATH_MAX R5 R42 ; [+4]
      124 MOVE                             R41 R5
      125 GETIMPORT                        R40 K26 [math.max]
      127 CALL                             R40 2 1
      128 MOVE                             R5 R40
      129 SUB                              R42 R38 R35
      130 FASTCALL2                        MATH_MIN R6 R42 ; [+4]
      132 MOVE                             R41 R6
      133 GETIMPORT                        R40 K24 [math.min]
      135 CALL                             R40 2 1
      136 MOVE                             R6 R40
      137 ADD                              R42 R38 R35
      138 FASTCALL2                        MATH_MAX R7 R42 ; [+4]
      140 MOVE                             R41 R7
      141 GETIMPORT                        R40 K26 [math.max]
      143 CALL                             R40 2 1
      144 MOVE                             R7 R40
      145 SUB                              R42 R39 R36
      146 FASTCALL2                        MATH_MIN R8 R42 ; [+4]
      148 MOVE                             R41 R8
      149 GETIMPORT                        R40 K24 [math.min]
      151 CALL                             R40 2 1
      152 MOVE                             R8 R40
      153 ADD                              R42 R39 R36
      154 FASTCALL2                        MATH_MAX R9 R42 ; [+4]
      156 MOVE                             R41 R9
      157 GETIMPORT                        R40 K26 [math.max]
      159 CALL                             R40 2 1
      160 MOVE                             R9 R40
      161 FORGLOOP                         R11 2 [inext] ; [-137]
      163 GETIMPORT                        R11 K8 [ipairs]
      165 MOVE                             R12 R2
      166 CALL                             R11 1 3
      167 FORGPREP_INEXT                   R11
      168 GETTABLEKS                       R18 R15 K27 ["WorldPosition"]
      170 NAMECALL                         R16 R0 K28 ["PointToObjectSpace"]
      172 CALL                             R16 2 1
      173 GETTABLEKS                       R17 R16 K15 ["X"]
      175 GETTABLEKS                       R18 R16 K16 ["Y"]
      177 GETTABLEKS                       R19 R16 K17 ["Z"]
      179 FASTCALL2                        MATH_MIN R4 R17 ; [+5]
      181 MOVE                             R21 R4
      182 MOVE                             R22 R17
      183 GETIMPORT                        R20 K24 [math.min]
      185 CALL                             R20 2 1
      186 MOVE                             R4 R20
      187 FASTCALL2                        MATH_MAX R5 R17 ; [+5]
      189 MOVE                             R21 R5
      190 MOVE                             R22 R17
      191 GETIMPORT                        R20 K26 [math.max]
      193 CALL                             R20 2 1
      194 MOVE                             R5 R20
      195 FASTCALL2                        MATH_MIN R6 R18 ; [+5]
      197 MOVE                             R21 R6
      198 MOVE                             R22 R18
      199 GETIMPORT                        R20 K24 [math.min]
      201 CALL                             R20 2 1
      202 MOVE                             R6 R20
      203 FASTCALL2                        MATH_MAX R7 R18 ; [+5]
      205 MOVE                             R21 R7
      206 MOVE                             R22 R18
      207 GETIMPORT                        R20 K26 [math.max]
      209 CALL                             R20 2 1
      210 MOVE                             R7 R20
      211 FASTCALL2                        MATH_MIN R8 R19 ; [+5]
      213 MOVE                             R21 R8
      214 MOVE                             R22 R19
      215 GETIMPORT                        R20 K24 [math.min]
      217 CALL                             R20 2 1
      218 MOVE                             R8 R20
      219 FASTCALL2                        MATH_MAX R9 R19 ; [+5]
      221 MOVE                             R21 R9
      222 MOVE                             R22 R19
      223 GETIMPORT                        R20 K26 [math.max]
      225 CALL                             R20 2 1
      226 MOVE                             R9 R20
      227 FORGLOOP                         R11 2 [inext] ; [-60]
      229 LOADK                            R13 K19 [0.5]
      230 ADD                              R14 R4 R5
      231 MUL                              R12 R13 R14
      232 LOADK                            R14 K19 [0.5]
      233 ADD                              R15 R6 R7
      234 MUL                              R13 R14 R15
      235 LOADK                            R15 K19 [0.5]
      236 ADD                              R16 R8 R9
      237 MUL                              R14 R15 R16
      238 FASTCALL                         VECTOR ; [+2]
      239 GETIMPORT                        R11 K31 [Vector3.new]
      241 CALL                             R11 3 1
      242 SUB                              R13 R5 R4
      243 SUB                              R14 R7 R6
      244 SUB                              R15 R9 R8
      245 FASTCALL                         VECTOR ; [+2]
      246 GETIMPORT                        R12 K31 [Vector3.new]
      248 CALL                             R12 3 1
      249 RETURN                           R11 2

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["X"]
        2 GETTABLEKS                       R3 R1 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K2 ["Z"]
        6 GETUPVAL                         R6 0
        7 MUL                              R5 R6 R0
        8 NAMECALL                         R6 R5 K3 ["GetComponents"]
       10 CALL                             R6 1 12
       11 MUL                              R22 R2 R9
       12 FASTCALL1                        MATH_ABS R22 ; [+2]
       13 GETIMPORT                        R21 K7 [math.abs]
       15 CALL                             R21 1 1
       16 MUL                              R23 R3 R10
       17 FASTCALL1                        MATH_ABS R23 ; [+2]
       18 GETIMPORT                        R22 K7 [math.abs]
       20 CALL                             R22 1 1
       21 ADD                              R20 R21 R22
       22 MUL                              R22 R4 R11
       23 FASTCALL1                        MATH_ABS R22 ; [+2]
       24 GETIMPORT                        R21 K7 [math.abs]
       26 CALL                             R21 1 1
       27 ADD                              R19 R20 R21
       28 MULK                             R18 R19 K4 [0.5]
       29 MUL                              R23 R2 R12
       30 FASTCALL1                        MATH_ABS R23 ; [+2]
       31 GETIMPORT                        R22 K7 [math.abs]
       33 CALL                             R22 1 1
       34 MUL                              R24 R3 R13
       35 FASTCALL1                        MATH_ABS R24 ; [+2]
       36 GETIMPORT                        R23 K7 [math.abs]
       38 CALL                             R23 1 1
       39 ADD                              R21 R22 R23
       40 MUL                              R23 R4 R14
       41 FASTCALL1                        MATH_ABS R23 ; [+2]
       42 GETIMPORT                        R22 K7 [math.abs]
       44 CALL                             R22 1 1
       45 ADD                              R20 R21 R22
       46 MULK                             R19 R20 K4 [0.5]
       47 MUL                              R24 R2 R15
       48 FASTCALL1                        MATH_ABS R24 ; [+2]
       49 GETIMPORT                        R23 K7 [math.abs]
       51 CALL                             R23 1 1
       52 MUL                              R25 R3 R16
       53 FASTCALL1                        MATH_ABS R25 ; [+2]
       54 GETIMPORT                        R24 K7 [math.abs]
       56 CALL                             R24 1 1
       57 ADD                              R22 R23 R24
       58 MUL                              R24 R4 R17
       59 FASTCALL1                        MATH_ABS R24 ; [+2]
       60 GETIMPORT                        R23 K7 [math.abs]
       62 CALL                             R23 1 1
       63 ADD                              R21 R22 R23
       64 MULK                             R20 R21 K4 [0.5]
       65 GETTABLEKS                       R21 R5 K0 ["X"]
       67 GETTABLEKS                       R22 R5 K1 ["Y"]
       69 GETTABLEKS                       R23 R5 K2 ["Z"]
       71 GETUPVAL                         R25 1
       72 SUB                              R26 R21 R18
       73 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
       75 GETIMPORT                        R24 K9 [math.min]
       77 CALL                             R24 2 1
       78 SETUPVAL                         R24 1
       79 GETUPVAL                         R25 2
       80 ADD                              R26 R21 R18
       81 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
       83 GETIMPORT                        R24 K11 [math.max]
       85 CALL                             R24 2 1
       86 SETUPVAL                         R24 2
       87 GETUPVAL                         R25 3
       88 SUB                              R26 R22 R19
       89 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
       91 GETIMPORT                        R24 K9 [math.min]
       93 CALL                             R24 2 1
       94 SETUPVAL                         R24 3
       95 GETUPVAL                         R25 4
       96 ADD                              R26 R22 R19
       97 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
       99 GETIMPORT                        R24 K11 [math.max]
      101 CALL                             R24 2 1
      102 SETUPVAL                         R24 4
      103 GETUPVAL                         R25 5
      104 SUB                              R26 R23 R20
      105 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
      107 GETIMPORT                        R24 K9 [math.min]
      109 CALL                             R24 2 1
      110 SETUPVAL                         R24 5
      111 GETUPVAL                         R25 6
      112 ADD                              R26 R23 R20
      113 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      115 GETIMPORT                        R24 K11 [math.max]
      117 CALL                             R24 2 1
      118 SETUPVAL                         R24 6
      119 NAMECALL                         R24 R0 K3 ["GetComponents"]
      121 CALL                             R24 1 12
      122 MOVE                             R8 R24
      123 MOVE                             R8 R25
      124 MOVE                             R8 R26
      125 MOVE                             R9 R27
      126 MOVE                             R10 R28
      127 MOVE                             R11 R29
      128 MOVE                             R12 R30
      129 MOVE                             R13 R31
      130 MOVE                             R14 R32
      131 MOVE                             R15 R33
      132 MOVE                             R16 R34
      133 MOVE                             R17 R35
      134 MUL                              R28 R2 R9
      135 FASTCALL1                        MATH_ABS R28 ; [+2]
      136 GETIMPORT                        R27 K7 [math.abs]
      138 CALL                             R27 1 1
      139 MUL                              R29 R3 R10
      140 FASTCALL1                        MATH_ABS R29 ; [+2]
      141 GETIMPORT                        R28 K7 [math.abs]
      143 CALL                             R28 1 1
      144 ADD                              R26 R27 R28
      145 MUL                              R28 R4 R11
      146 FASTCALL1                        MATH_ABS R28 ; [+2]
      147 GETIMPORT                        R27 K7 [math.abs]
      149 CALL                             R27 1 1
      150 ADD                              R25 R26 R27
      151 MULK                             R24 R25 K4 [0.5]
      152 MUL                              R29 R2 R12
      153 FASTCALL1                        MATH_ABS R29 ; [+2]
      154 GETIMPORT                        R28 K7 [math.abs]
      156 CALL                             R28 1 1
      157 MUL                              R30 R3 R13
      158 FASTCALL1                        MATH_ABS R30 ; [+2]
      159 GETIMPORT                        R29 K7 [math.abs]
      161 CALL                             R29 1 1
      162 ADD                              R27 R28 R29
      163 MUL                              R29 R4 R14
      164 FASTCALL1                        MATH_ABS R29 ; [+2]
      165 GETIMPORT                        R28 K7 [math.abs]
      167 CALL                             R28 1 1
      168 ADD                              R26 R27 R28
      169 MULK                             R25 R26 K4 [0.5]
      170 MUL                              R30 R2 R15
      171 FASTCALL1                        MATH_ABS R30 ; [+2]
      172 GETIMPORT                        R29 K7 [math.abs]
      174 CALL                             R29 1 1
      175 MUL                              R31 R3 R16
      176 FASTCALL1                        MATH_ABS R31 ; [+2]
      177 GETIMPORT                        R30 K7 [math.abs]
      179 CALL                             R30 1 1
      180 ADD                              R28 R29 R30
      181 MUL                              R30 R4 R17
      182 FASTCALL1                        MATH_ABS R30 ; [+2]
      183 GETIMPORT                        R29 K7 [math.abs]
      185 CALL                             R29 1 1
      186 ADD                              R27 R28 R29
      187 MULK                             R26 R27 K4 [0.5]
      188 GETTABLEKS                       R27 R0 K0 ["X"]
      190 GETTABLEKS                       R28 R0 K1 ["Y"]
      192 GETTABLEKS                       R29 R0 K2 ["Z"]
      194 GETUPVAL                         R31 7
      195 SUB                              R32 R27 R24
      196 FASTCALL2                        MATH_MIN R31 R32 ; [+3]
      198 GETIMPORT                        R30 K9 [math.min]
      200 CALL                             R30 2 1
      201 SETUPVAL                         R30 7
      202 GETUPVAL                         R31 8
      203 ADD                              R32 R27 R24
      204 FASTCALL2                        MATH_MAX R31 R32 ; [+3]
      206 GETIMPORT                        R30 K11 [math.max]
      208 CALL                             R30 2 1
      209 SETUPVAL                         R30 8
      210 GETUPVAL                         R31 9
      211 SUB                              R32 R28 R25
      212 FASTCALL2                        MATH_MIN R31 R32 ; [+3]
      214 GETIMPORT                        R30 K9 [math.min]
      216 CALL                             R30 2 1
      217 SETUPVAL                         R30 9
      218 GETUPVAL                         R31 10
      219 ADD                              R32 R28 R25
      220 FASTCALL2                        MATH_MAX R31 R32 ; [+3]
      222 GETIMPORT                        R30 K11 [math.max]
      224 CALL                             R30 2 1
      225 SETUPVAL                         R30 10
      226 GETUPVAL                         R31 11
      227 SUB                              R32 R29 R26
      228 FASTCALL2                        MATH_MIN R31 R32 ; [+3]
      230 GETIMPORT                        R30 K9 [math.min]
      232 CALL                             R30 2 1
      233 SETUPVAL                         R30 11
      234 GETUPVAL                         R31 12
      235 ADD                              R32 R29 R26
      236 FASTCALL2                        MATH_MAX R31 R32 ; [+3]
      238 GETIMPORT                        R30 K11 [math.max]
      240 CALL                             R30 2 1
      241 SETUPVAL                         R30 12
      242 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["ProcModel flag was not on"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETTABLEKS                       R4 R0 K3 ["X"]
        9 GETTABLEKS                       R5 R0 K4 ["Y"]
       11 GETTABLEKS                       R6 R0 K5 ["Z"]
       13 NAMECALL                         R7 R0 K6 ["Inverse"]
       15 CALL                             R7 1 1
       16 LOADK                            R8 K7 [∞]
       17 LOADK                            R9 K8 [-∞]
       18 LOADK                            R10 K7 [∞]
       19 LOADK                            R11 K8 [-∞]
       20 LOADK                            R12 K7 [∞]
       21 LOADK                            R13 K8 [-∞]
       22 LOADK                            R14 K7 [∞]
       23 LOADK                            R15 K8 [-∞]
       24 LOADK                            R16 K7 [∞]
       25 LOADK                            R17 K8 [-∞]
       26 LOADK                            R18 K7 [∞]
       27 LOADK                            R19 K8 [-∞]
       28 NEWCLOSURE                       R20 P0
       29 CAPTURE                          VAL R7
       30 CAPTURE                          REF R8
       31 CAPTURE                          REF R9
       32 CAPTURE                          REF R10
       33 CAPTURE                          REF R11
       34 CAPTURE                          REF R12
       35 CAPTURE                          REF R13
       36 CAPTURE                          REF R14
       37 CAPTURE                          REF R15
       38 CAPTURE                          REF R16
       39 CAPTURE                          REF R17
       40 CAPTURE                          REF R18
       41 CAPTURE                          REF R19
       42 GETUPVAL                         R21 1
       43 MOVE                             R22 R20
       44 MOVE                             R23 R1
       45 MOVE                             R24 R2
       46 CALL                             R21 3 0
       47 MOVE                             R21 R3
       48 LOADNIL                          R22
       49 LOADNIL                          R23
       50 FORGPREP                         R21
       51 GETTABLEKS                       R26 R25 K9 ["WorldPosition"]
       53 MUL                              R27 R7 R26
       54 GETTABLEKS                       R28 R27 K3 ["X"]
       56 GETTABLEKS                       R29 R27 K4 ["Y"]
       58 GETTABLEKS                       R30 R27 K5 ["Z"]
       60 FASTCALL2                        MATH_MIN R8 R28 ; [+5]
       62 MOVE                             R32 R8
       63 MOVE                             R33 R28
       64 GETIMPORT                        R31 K12 [math.min]
       66 CALL                             R31 2 1
       67 MOVE                             R8 R31
       68 FASTCALL2                        MATH_MAX R9 R28 ; [+5]
       70 MOVE                             R32 R9
       71 MOVE                             R33 R28
       72 GETIMPORT                        R31 K14 [math.max]
       74 CALL                             R31 2 1
       75 MOVE                             R9 R31
       76 FASTCALL2                        MATH_MIN R10 R29 ; [+5]
       78 MOVE                             R32 R10
       79 MOVE                             R33 R29
       80 GETIMPORT                        R31 K12 [math.min]
       82 CALL                             R31 2 1
       83 MOVE                             R10 R31
       84 FASTCALL2                        MATH_MAX R11 R29 ; [+5]
       86 MOVE                             R32 R11
       87 MOVE                             R33 R29
       88 GETIMPORT                        R31 K14 [math.max]
       90 CALL                             R31 2 1
       91 MOVE                             R11 R31
       92 FASTCALL2                        MATH_MIN R12 R30 ; [+5]
       94 MOVE                             R32 R12
       95 MOVE                             R33 R30
       96 GETIMPORT                        R31 K12 [math.min]
       98 CALL                             R31 2 1
       99 MOVE                             R12 R31
      100 FASTCALL2                        MATH_MAX R13 R30 ; [+5]
      102 MOVE                             R32 R13
      103 MOVE                             R33 R30
      104 GETIMPORT                        R31 K14 [math.max]
      106 CALL                             R31 2 1
      107 MOVE                             R13 R31
      108 GETTABLEKS                       R31 R26 K3 ["X"]
      110 GETTABLEKS                       R32 R26 K4 ["Y"]
      112 GETTABLEKS                       R33 R26 K5 ["Z"]
      114 FASTCALL2                        MATH_MIN R14 R31 ; [+5]
      116 MOVE                             R35 R14
      117 MOVE                             R36 R31
      118 GETIMPORT                        R34 K12 [math.min]
      120 CALL                             R34 2 1
      121 MOVE                             R14 R34
      122 FASTCALL2                        MATH_MAX R15 R31 ; [+5]
      124 MOVE                             R35 R15
      125 MOVE                             R36 R31
      126 GETIMPORT                        R34 K14 [math.max]
      128 CALL                             R34 2 1
      129 MOVE                             R15 R34
      130 FASTCALL2                        MATH_MIN R16 R32 ; [+5]
      132 MOVE                             R35 R16
      133 MOVE                             R36 R32
      134 GETIMPORT                        R34 K12 [math.min]
      136 CALL                             R34 2 1
      137 MOVE                             R16 R34
      138 FASTCALL2                        MATH_MAX R17 R32 ; [+5]
      140 MOVE                             R35 R17
      141 MOVE                             R36 R32
      142 GETIMPORT                        R34 K14 [math.max]
      144 CALL                             R34 2 1
      145 MOVE                             R17 R34
      146 FASTCALL2                        MATH_MIN R18 R33 ; [+5]
      148 MOVE                             R35 R18
      149 MOVE                             R36 R33
      150 GETIMPORT                        R34 K12 [math.min]
      152 CALL                             R34 2 1
      153 MOVE                             R18 R34
      154 FASTCALL2                        MATH_MAX R19 R33 ; [+5]
      156 MOVE                             R35 R19
      157 MOVE                             R36 R33
      158 GETIMPORT                        R34 K14 [math.max]
      160 CALL                             R34 2 1
      161 MOVE                             R19 R34
      162 FORGLOOP                         R21 2 ; [-112]
      164 LOADK                            R23 K15 [0.5]
      165 ADD                              R24 R8 R9
      166 MUL                              R22 R23 R24
      167 LOADK                            R24 K15 [0.5]
      168 ADD                              R25 R10 R11
      169 MUL                              R23 R24 R25
      170 LOADK                            R25 K15 [0.5]
      171 ADD                              R26 R12 R13
      172 MUL                              R24 R25 R26
      173 FASTCALL                         VECTOR ; [+2]
      174 GETIMPORT                        R21 K18 [Vector3.new]
      176 CALL                             R21 3 1
      177 SUB                              R23 R9 R8
      178 SUB                              R24 R11 R10
      179 SUB                              R25 R13 R12
      180 FASTCALL                         VECTOR ; [+2]
      181 GETIMPORT                        R22 K18 [Vector3.new]
      183 CALL                             R22 3 1
      184 LOADK                            R26 K15 [0.5]
      185 ADD                              R27 R14 R15
      186 MUL                              R25 R26 R27
      187 SUB                              R24 R25 R4
      188 LOADK                            R27 K15 [0.5]
      189 ADD                              R28 R16 R17
      190 MUL                              R26 R27 R28
      191 SUB                              R25 R26 R5
      192 LOADK                            R28 K15 [0.5]
      193 ADD                              R29 R18 R19
      194 MUL                              R27 R28 R29
      195 SUB                              R26 R27 R6
      196 FASTCALL                         VECTOR ; [+2]
      197 GETIMPORT                        R23 K18 [Vector3.new]
      199 CALL                             R23 3 1
      200 SUB                              R25 R15 R14
      201 SUB                              R26 R17 R16
      202 SUB                              R27 R19 R18
      203 FASTCALL                         VECTOR ; [+2]
      204 GETIMPORT                        R24 K18 [Vector3.new]
      206 CALL                             R24 3 1
      207 CLOSEUPVALS                      R8
      208 RETURN                           R21 4

PROTO_7:
        0 GETUPVAL                         R5 0
        1 NOT                              R4 R5
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["ProcModel flag was on"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R3 R0 K3 ["X"]
       10 GETTABLEKS                       R4 R0 K4 ["Y"]
       12 GETTABLEKS                       R5 R0 K5 ["Z"]
       14 NAMECALL                         R6 R0 K6 ["Inverse"]
       16 CALL                             R6 1 1
       17 LOADK                            R7 K7 [∞]
       18 LOADK                            R8 K8 [-∞]
       19 LOADK                            R9 K7 [∞]
       20 LOADK                            R10 K8 [-∞]
       21 LOADK                            R11 K7 [∞]
       22 LOADK                            R12 K8 [-∞]
       23 LOADK                            R13 K7 [∞]
       24 LOADK                            R14 K8 [-∞]
       25 LOADK                            R15 K7 [∞]
       26 LOADK                            R16 K8 [-∞]
       27 LOADK                            R17 K7 [∞]
       28 LOADK                            R18 K8 [-∞]
       29 GETUPVAL                         R19 1
       30 GETTABLEKS                       R19 R19 K9 ["Terrain"]
       32 GETIMPORT                        R20 K11 [ipairs]
       34 MOVE                             R21 R1
       35 CALL                             R20 1 3
       36 FORGPREP_INEXT                   R20
       37 JUMPIFEQ                         R24 R19 ; [+258]
       39 LOADNIL                          R25
       40 LOADNIL                          R26
       41 LOADK                            R29 K12 ["FormFactorPart"]
       42 NAMECALL                         R27 R24 K13 ["IsA"]
       44 CALL                             R27 2 1
       45 JUMPIFNOT                        R27 ; [+5]
       46 GETTABLEKS                       R25 R24 K14 ["CFrame"]
       48 GETTABLEKS                       R26 R24 K15 ["Size"]
       50 JUMP                             ; [+4]
       51 GETTABLEKS                       R25 R24 K16 ["ExtentsCFrame"]
       53 GETTABLEKS                       R26 R24 K17 ["ExtentsSize"]
       55 GETTABLEKS                       R27 R26 K3 ["X"]
       57 GETTABLEKS                       R28 R26 K4 ["Y"]
       59 GETTABLEKS                       R29 R26 K5 ["Z"]
       61 MUL                              R30 R6 R25
       62 NAMECALL                         R31 R30 K18 ["GetComponents"]
       64 CALL                             R31 1 12
       65 MUL                              R47 R27 R34
       66 FASTCALL1                        MATH_ABS R47 ; [+2]
       67 GETIMPORT                        R46 K22 [math.abs]
       69 CALL                             R46 1 1
       70 MUL                              R48 R28 R35
       71 FASTCALL1                        MATH_ABS R48 ; [+2]
       72 GETIMPORT                        R47 K22 [math.abs]
       74 CALL                             R47 1 1
       75 ADD                              R45 R46 R47
       76 MUL                              R47 R29 R36
       77 FASTCALL1                        MATH_ABS R47 ; [+2]
       78 GETIMPORT                        R46 K22 [math.abs]
       80 CALL                             R46 1 1
       81 ADD                              R44 R45 R46
       82 MULK                             R43 R44 K19 [0.5]
       83 MUL                              R48 R27 R37
       84 FASTCALL1                        MATH_ABS R48 ; [+2]
       85 GETIMPORT                        R47 K22 [math.abs]
       87 CALL                             R47 1 1
       88 MUL                              R49 R28 R38
       89 FASTCALL1                        MATH_ABS R49 ; [+2]
       90 GETIMPORT                        R48 K22 [math.abs]
       92 CALL                             R48 1 1
       93 ADD                              R46 R47 R48
       94 MUL                              R48 R29 R39
       95 FASTCALL1                        MATH_ABS R48 ; [+2]
       96 GETIMPORT                        R47 K22 [math.abs]
       98 CALL                             R47 1 1
       99 ADD                              R45 R46 R47
      100 MULK                             R44 R45 K19 [0.5]
      101 MUL                              R49 R27 R40
      102 FASTCALL1                        MATH_ABS R49 ; [+2]
      103 GETIMPORT                        R48 K22 [math.abs]
      105 CALL                             R48 1 1
      106 MUL                              R50 R28 R41
      107 FASTCALL1                        MATH_ABS R50 ; [+2]
      108 GETIMPORT                        R49 K22 [math.abs]
      110 CALL                             R49 1 1
      111 ADD                              R47 R48 R49
      112 MUL                              R49 R29 R42
      113 FASTCALL1                        MATH_ABS R49 ; [+2]
      114 GETIMPORT                        R48 K22 [math.abs]
      116 CALL                             R48 1 1
      117 ADD                              R46 R47 R48
      118 MULK                             R45 R46 K19 [0.5]
      119 GETTABLEKS                       R46 R30 K3 ["X"]
      121 GETTABLEKS                       R47 R30 K4 ["Y"]
      123 GETTABLEKS                       R48 R30 K5 ["Z"]
      125 SUB                              R51 R46 R43
      126 FASTCALL2                        MATH_MIN R7 R51 ; [+4]
      128 MOVE                             R50 R7
      129 GETIMPORT                        R49 K24 [math.min]
      131 CALL                             R49 2 1
      132 MOVE                             R7 R49
      133 ADD                              R51 R46 R43
      134 FASTCALL2                        MATH_MAX R8 R51 ; [+4]
      136 MOVE                             R50 R8
      137 GETIMPORT                        R49 K26 [math.max]
      139 CALL                             R49 2 1
      140 MOVE                             R8 R49
      141 SUB                              R51 R47 R44
      142 FASTCALL2                        MATH_MIN R9 R51 ; [+4]
      144 MOVE                             R50 R9
      145 GETIMPORT                        R49 K24 [math.min]
      147 CALL                             R49 2 1
      148 MOVE                             R9 R49
      149 ADD                              R51 R47 R44
      150 FASTCALL2                        MATH_MAX R10 R51 ; [+4]
      152 MOVE                             R50 R10
      153 GETIMPORT                        R49 K26 [math.max]
      155 CALL                             R49 2 1
      156 MOVE                             R10 R49
      157 SUB                              R51 R48 R45
      158 FASTCALL2                        MATH_MIN R11 R51 ; [+4]
      160 MOVE                             R50 R11
      161 GETIMPORT                        R49 K24 [math.min]
      163 CALL                             R49 2 1
      164 MOVE                             R11 R49
      165 ADD                              R51 R48 R45
      166 FASTCALL2                        MATH_MAX R12 R51 ; [+4]
      168 MOVE                             R50 R12
      169 GETIMPORT                        R49 K26 [math.max]
      171 CALL                             R49 2 1
      172 MOVE                             R12 R49
      173 NAMECALL                         R49 R25 K18 ["GetComponents"]
      175 CALL                             R49 1 12
      176 MOVE                             R33 R49
      177 MOVE                             R33 R50
      178 MOVE                             R33 R51
      179 MOVE                             R34 R52
      180 MOVE                             R35 R53
      181 MOVE                             R36 R54
      182 MOVE                             R37 R55
      183 MOVE                             R38 R56
      184 MOVE                             R39 R57
      185 MOVE                             R40 R58
      186 MOVE                             R41 R59
      187 MOVE                             R42 R60
      188 MUL                              R53 R27 R34
      189 FASTCALL1                        MATH_ABS R53 ; [+2]
      190 GETIMPORT                        R52 K22 [math.abs]
      192 CALL                             R52 1 1
      193 MUL                              R54 R28 R35
      194 FASTCALL1                        MATH_ABS R54 ; [+2]
      195 GETIMPORT                        R53 K22 [math.abs]
      197 CALL                             R53 1 1
      198 ADD                              R51 R52 R53
      199 MUL                              R53 R29 R36
      200 FASTCALL1                        MATH_ABS R53 ; [+2]
      201 GETIMPORT                        R52 K22 [math.abs]
      203 CALL                             R52 1 1
      204 ADD                              R50 R51 R52
      205 MULK                             R49 R50 K19 [0.5]
      206 MUL                              R54 R27 R37
      207 FASTCALL1                        MATH_ABS R54 ; [+2]
      208 GETIMPORT                        R53 K22 [math.abs]
      210 CALL                             R53 1 1
      211 MUL                              R55 R28 R38
      212 FASTCALL1                        MATH_ABS R55 ; [+2]
      213 GETIMPORT                        R54 K22 [math.abs]
      215 CALL                             R54 1 1
      216 ADD                              R52 R53 R54
      217 MUL                              R54 R29 R39
      218 FASTCALL1                        MATH_ABS R54 ; [+2]
      219 GETIMPORT                        R53 K22 [math.abs]
      221 CALL                             R53 1 1
      222 ADD                              R51 R52 R53
      223 MULK                             R50 R51 K19 [0.5]
      224 MUL                              R55 R27 R40
      225 FASTCALL1                        MATH_ABS R55 ; [+2]
      226 GETIMPORT                        R54 K22 [math.abs]
      228 CALL                             R54 1 1
      229 MUL                              R56 R28 R41
      230 FASTCALL1                        MATH_ABS R56 ; [+2]
      231 GETIMPORT                        R55 K22 [math.abs]
      233 CALL                             R55 1 1
      234 ADD                              R53 R54 R55
      235 MUL                              R55 R29 R42
      236 FASTCALL1                        MATH_ABS R55 ; [+2]
      237 GETIMPORT                        R54 K22 [math.abs]
      239 CALL                             R54 1 1
      240 ADD                              R52 R53 R54
      241 MULK                             R51 R52 K19 [0.5]
      242 GETTABLEKS                       R52 R25 K3 ["X"]
      244 GETTABLEKS                       R53 R25 K4 ["Y"]
      246 GETTABLEKS                       R54 R25 K5 ["Z"]
      248 SUB                              R57 R52 R49
      249 FASTCALL2                        MATH_MIN R13 R57 ; [+4]
      251 MOVE                             R56 R13
      252 GETIMPORT                        R55 K24 [math.min]
      254 CALL                             R55 2 1
      255 MOVE                             R13 R55
      256 ADD                              R57 R52 R49
      257 FASTCALL2                        MATH_MAX R14 R57 ; [+4]
      259 MOVE                             R56 R14
      260 GETIMPORT                        R55 K26 [math.max]
      262 CALL                             R55 2 1
      263 MOVE                             R14 R55
      264 SUB                              R57 R53 R50
      265 FASTCALL2                        MATH_MIN R15 R57 ; [+4]
      267 MOVE                             R56 R15
      268 GETIMPORT                        R55 K24 [math.min]
      270 CALL                             R55 2 1
      271 MOVE                             R15 R55
      272 ADD                              R57 R53 R50
      273 FASTCALL2                        MATH_MAX R16 R57 ; [+4]
      275 MOVE                             R56 R16
      276 GETIMPORT                        R55 K26 [math.max]
      278 CALL                             R55 2 1
      279 MOVE                             R16 R55
      280 SUB                              R57 R54 R51
      281 FASTCALL2                        MATH_MIN R17 R57 ; [+4]
      283 MOVE                             R56 R17
      284 GETIMPORT                        R55 K24 [math.min]
      286 CALL                             R55 2 1
      287 MOVE                             R17 R55
      288 ADD                              R57 R54 R51
      289 FASTCALL2                        MATH_MAX R18 R57 ; [+4]
      291 MOVE                             R56 R18
      292 GETIMPORT                        R55 K26 [math.max]
      294 CALL                             R55 2 1
      295 MOVE                             R18 R55
      296 FORGLOOP                         R20 2 [inext] ; [-260]
      298 GETIMPORT                        R20 K11 [ipairs]
      300 MOVE                             R21 R2
      301 CALL                             R20 1 3
      302 FORGPREP_INEXT                   R20
      303 GETTABLEKS                       R25 R24 K27 ["WorldPosition"]
      305 MUL                              R26 R6 R25
      306 GETTABLEKS                       R27 R26 K3 ["X"]
      308 GETTABLEKS                       R28 R26 K4 ["Y"]
      310 GETTABLEKS                       R29 R26 K5 ["Z"]
      312 FASTCALL2                        MATH_MIN R7 R27 ; [+5]
      314 MOVE                             R31 R7
      315 MOVE                             R32 R27
      316 GETIMPORT                        R30 K24 [math.min]
      318 CALL                             R30 2 1
      319 MOVE                             R7 R30
      320 FASTCALL2                        MATH_MAX R8 R27 ; [+5]
      322 MOVE                             R31 R8
      323 MOVE                             R32 R27
      324 GETIMPORT                        R30 K26 [math.max]
      326 CALL                             R30 2 1
      327 MOVE                             R8 R30
      328 FASTCALL2                        MATH_MIN R9 R28 ; [+5]
      330 MOVE                             R31 R9
      331 MOVE                             R32 R28
      332 GETIMPORT                        R30 K24 [math.min]
      334 CALL                             R30 2 1
      335 MOVE                             R9 R30
      336 FASTCALL2                        MATH_MAX R10 R28 ; [+5]
      338 MOVE                             R31 R10
      339 MOVE                             R32 R28
      340 GETIMPORT                        R30 K26 [math.max]
      342 CALL                             R30 2 1
      343 MOVE                             R10 R30
      344 FASTCALL2                        MATH_MIN R11 R29 ; [+5]
      346 MOVE                             R31 R11
      347 MOVE                             R32 R29
      348 GETIMPORT                        R30 K24 [math.min]
      350 CALL                             R30 2 1
      351 MOVE                             R11 R30
      352 FASTCALL2                        MATH_MAX R12 R29 ; [+5]
      354 MOVE                             R31 R12
      355 MOVE                             R32 R29
      356 GETIMPORT                        R30 K26 [math.max]
      358 CALL                             R30 2 1
      359 MOVE                             R12 R30
      360 GETTABLEKS                       R30 R25 K3 ["X"]
      362 GETTABLEKS                       R31 R25 K4 ["Y"]
      364 GETTABLEKS                       R32 R25 K5 ["Z"]
      366 FASTCALL2                        MATH_MIN R13 R30 ; [+5]
      368 MOVE                             R34 R13
      369 MOVE                             R35 R30
      370 GETIMPORT                        R33 K24 [math.min]
      372 CALL                             R33 2 1
      373 MOVE                             R13 R33
      374 FASTCALL2                        MATH_MAX R14 R30 ; [+5]
      376 MOVE                             R34 R14
      377 MOVE                             R35 R30
      378 GETIMPORT                        R33 K26 [math.max]
      380 CALL                             R33 2 1
      381 MOVE                             R14 R33
      382 FASTCALL2                        MATH_MIN R15 R31 ; [+5]
      384 MOVE                             R34 R15
      385 MOVE                             R35 R31
      386 GETIMPORT                        R33 K24 [math.min]
      388 CALL                             R33 2 1
      389 MOVE                             R15 R33
      390 FASTCALL2                        MATH_MAX R16 R31 ; [+5]
      392 MOVE                             R34 R16
      393 MOVE                             R35 R31
      394 GETIMPORT                        R33 K26 [math.max]
      396 CALL                             R33 2 1
      397 MOVE                             R16 R33
      398 FASTCALL2                        MATH_MIN R17 R32 ; [+5]
      400 MOVE                             R34 R17
      401 MOVE                             R35 R32
      402 GETIMPORT                        R33 K24 [math.min]
      404 CALL                             R33 2 1
      405 MOVE                             R17 R33
      406 FASTCALL2                        MATH_MAX R18 R32 ; [+5]
      408 MOVE                             R34 R18
      409 MOVE                             R35 R32
      410 GETIMPORT                        R33 K26 [math.max]
      412 CALL                             R33 2 1
      413 MOVE                             R18 R33
      414 FORGLOOP                         R20 2 [inext] ; [-112]
      416 LOADK                            R22 K19 [0.5]
      417 ADD                              R23 R7 R8
      418 MUL                              R21 R22 R23
      419 LOADK                            R23 K19 [0.5]
      420 ADD                              R24 R9 R10
      421 MUL                              R22 R23 R24
      422 LOADK                            R24 K19 [0.5]
      423 ADD                              R25 R11 R12
      424 MUL                              R23 R24 R25
      425 FASTCALL                         VECTOR ; [+2]
      426 GETIMPORT                        R20 K30 [Vector3.new]
      428 CALL                             R20 3 1
      429 SUB                              R22 R8 R7
      430 SUB                              R23 R10 R9
      431 SUB                              R24 R12 R11
      432 FASTCALL                         VECTOR ; [+2]
      433 GETIMPORT                        R21 K30 [Vector3.new]
      435 CALL                             R21 3 1
      436 LOADK                            R25 K19 [0.5]
      437 ADD                              R26 R13 R14
      438 MUL                              R24 R25 R26
      439 SUB                              R23 R24 R3
      440 LOADK                            R26 K19 [0.5]
      441 ADD                              R27 R15 R16
      442 MUL                              R25 R26 R27
      443 SUB                              R24 R25 R4
      444 LOADK                            R27 K19 [0.5]
      445 ADD                              R28 R17 R18
      446 MUL                              R26 R27 R28
      447 SUB                              R25 R26 R5
      448 FASTCALL                         VECTOR ; [+2]
      449 GETIMPORT                        R22 K30 [Vector3.new]
      451 CALL                             R22 3 1
      452 SUB                              R24 R14 R13
      453 SUB                              R25 R16 R15
      454 SUB                              R26 R18 R17
      455 FASTCALL                         VECTOR ; [+2]
      456 GETIMPORT                        R23 K30 [Vector3.new]
      458 CALL                             R23 3 1
      459 RETURN                           R20 4

PROTO_8:
        0 GETTABLE                         R3 R1 R0
        1 JUMPIFNOT                        R3 ; [+3]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R0
        4 RETURN                           R0 0
        5 LOADB                            R3 1
        6 SETTABLE                         R3 R1 R0
        7 GETIMPORT                        R3 K1 [ipairs]
        9 NAMECALL                         R4 R0 K2 ["GetChildren"]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 3
       13 FORGPREP_INEXT                   R3
       14 GETUPVAL                         R8 0
       15 MOVE                             R9 R7
       16 MOVE                             R10 R1
       17 MOVE                             R11 R2
       18 CALL                             R8 3 0
       19 FORGLOOP                         R3 2 [inext] ; [-6]
       21 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETTABLE                         R8 R2 R7
       10 JUMPIF                           R8 ; [+18]
       11 GETUPVAL                         R8 0
       12 JUMPIFNOT                        R8 ; [+6]
       13 LOADK                            R10 K2 ["PVInstance"]
       14 NAMECALL                         R8 R7 K3 ["FindFirstAncestorWhichIsA"]
       16 CALL                             R8 2 1
       17 SETTABLE                         R8 R1 R7
       18 JUMP                             ; [+5]
       19 LOADK                            R10 K4 ["BasePart"]
       20 NAMECALL                         R8 R7 K3 ["FindFirstAncestorWhichIsA"]
       22 CALL                             R8 2 1
       23 SETTABLE                         R8 R1 R7
       24 GETUPVAL                         R8 1
       25 MOVE                             R9 R7
       26 MOVE                             R10 R2
       27 MOVE                             R11 R1
       28 CALL                             R8 3 0
       29 FORGLOOP                         R3 2 [inext] ; [-21]
       31 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOT                        R5 ; [+10]
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R0 K0 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R0 K1 ["ClassName"]
       13 SETTABLE                         R5 R6 R7
       14 RETURN                           R5 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R2 R0 K1 ["ClassName"]
       20 LOADB                            R3 0
       21 SETTABLE                         R3 R1 R2
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["ClassName"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+5]
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 MOVE                             R3 R4
       10 LOADNIL                          R4
       11 JUMPIFNOTEQKS                    R3 K1 ["BasePart"] ; [+16]
       13 LOADB                            R4 1
       14 GETTABLEKS                       R5 R1 K2 ["PartSet"]
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETTABLE                         R6 R5 R0
       18 JUMPIFNOT                        R6 ; [+1]
       19 RETURN                           R0 0
       20 LOADB                            R6 1
       21 SETTABLE                         R6 R5 R0
       22 GETTABLEKS                       R6 R1 K3 ["PartToRootMap"]
       24 SETTABLE                         R0 R6 R0
       25 SETTABLEKS                       R0 R1 K4 ["BasisObject"]
       27 JUMP                             ; [+60]
       28 GETUPVAL                         R5 2
       29 JUMPIFNOT                        R5 ; [+24]
       30 JUMPIFNOTEQKS                    R3 K5 ["ProceduralModel"] ; [+23]
       32 LOADB                            R4 1
       33 GETTABLEKS                       R5 R1 K6 ["ProceduralModelSet"]
       35 JUMPIFNOT                        R2 ; [+3]
       36 GETTABLE                         R6 R5 R0
       37 JUMPIFNOT                        R6 ; [+1]
       38 RETURN                           R0 0
       39 LOADB                            R6 1
       40 SETTABLE                         R6 R5 R0
       41 SETTABLEKS                       R0 R1 K4 ["BasisObject"]
       43 GETTABLEKS                       R6 R1 K7 ["ModelSet"]
       45 JUMPIFNOT                        R2 ; [+3]
       46 GETTABLE                         R7 R6 R0
       47 JUMPIFNOT                        R7 ; [+1]
       48 RETURN                           R0 0
       49 LOADB                            R7 1
       50 SETTABLE                         R7 R6 R0
       51 SETTABLEKS                       R0 R1 K4 ["BasisObject"]
       53 JUMP                             ; [+34]
       54 JUMPIFNOTEQKS                    R3 K8 ["Model"] ; [+13]
       56 LOADB                            R4 1
       57 GETTABLEKS                       R5 R1 K7 ["ModelSet"]
       59 JUMPIFNOT                        R2 ; [+3]
       60 GETTABLE                         R6 R5 R0
       61 JUMPIFNOT                        R6 ; [+1]
       62 RETURN                           R0 0
       63 LOADB                            R6 1
       64 SETTABLE                         R6 R5 R0
       65 SETTABLEKS                       R0 R1 K4 ["BasisObject"]
       67 JUMP                             ; [+20]
       68 JUMPIFNOTEQKS                    R3 K9 ["Attachment"] ; [+6]
       70 GETTABLEKS                       R5 R1 K10 ["AttachmentSet"]
       72 LOADB                            R6 1
       73 SETTABLE                         R6 R5 R0
       74 JUMP                             ; [+13]
       75 JUMPIFNOTEQKS                    R3 K11 ["Bone"] ; [+6]
       77 GETTABLEKS                       R5 R1 K12 ["BoneSet"]
       79 LOADB                            R6 1
       80 SETTABLE                         R6 R5 R0
       81 JUMP                             ; [+6]
       82 JUMPIFNOTEQKS                    R3 K13 ["FaceInstance"] ; [+5]
       84 GETTABLEKS                       R5 R1 K14 ["FaceInstanceSet"]
       86 LOADB                            R6 1
       87 SETTABLE                         R6 R5 R0
       88 JUMPIFNOT                        R4 ; [+76]
       89 GETTABLEKS                       R5 R1 K7 ["ModelSet"]
       91 GETTABLEKS                       R6 R1 K2 ["PartSet"]
       93 GETTABLEKS                       R7 R1 K3 ["PartToRootMap"]
       95 LOADN                            R8 0
       96 GETTABLEKS                       R9 R1 K15 ["RootToDescendantCountMap"]
       98 GETUPVAL                         R10 2
       99 JUMPIFNOT                        R10 ; [+8]
      100 LOADK                            R12 K5 ["ProceduralModel"]
      101 NAMECALL                         R10 R0 K16 ["IsA"]
      103 CALL                             R10 2 1
      104 JUMPIFNOT                        R10 ; [+3]
      105 LOADN                            R10 0
      106 SETTABLE                         R10 R9 R0
      107 RETURN                           R0 0
      108 NAMECALL                         R10 R0 K17 ["GetDescendants"]
      110 CALL                             R10 1 3
      111 FORGPREP                         R10
      112 GETUPVAL                         R16 0
      113 GETTABLEKS                       R17 R14 K0 ["ClassName"]
      115 GETTABLE                         R15 R16 R17
      116 JUMPIFNOTEQKNIL                  R15 ; [+5]
      118 GETUPVAL                         R16 1
      119 MOVE                             R17 R14
      120 CALL                             R16 1 1
      121 MOVE                             R15 R16
      122 JUMPIFNOTEQKS                    R15 K1 ["BasePart"] ; [+9]
      124 LOADB                            R16 1
      125 SETTABLE                         R16 R6 R14
      126 ADDK                             R8 R8 K18 [1]
      127 SETTABLE                         R0 R7 R14
      128 JUMPIFNOT                        R2 ; [+32]
      129 LOADNIL                          R16
      130 SETTABLE                         R16 R9 R14
      131 JUMP                             ; [+29]
      132 JUMPIFNOTEQKS                    R15 K8 ["Model"] ; [+8]
      134 LOADB                            R16 1
      135 SETTABLE                         R16 R5 R14
      136 ADDK                             R8 R8 K18 [1]
      137 JUMPIFNOT                        R2 ; [+23]
      138 LOADNIL                          R16
      139 SETTABLE                         R16 R9 R14
      140 JUMP                             ; [+20]
      141 JUMPIFNOTEQKS                    R15 K9 ["Attachment"] ; [+6]
      143 GETTABLEKS                       R16 R1 K10 ["AttachmentSet"]
      145 LOADB                            R17 1
      146 SETTABLE                         R17 R16 R14
      147 JUMP                             ; [+13]
      148 JUMPIFNOTEQKS                    R15 K11 ["Bone"] ; [+6]
      150 GETTABLEKS                       R16 R1 K12 ["BoneSet"]
      152 LOADB                            R17 1
      153 SETTABLE                         R17 R16 R14
      154 JUMP                             ; [+6]
      155 JUMPIFNOTEQKS                    R15 K13 ["FaceInstance"] ; [+5]
      157 GETTABLEKS                       R16 R1 K14 ["FaceInstanceSet"]
      159 LOADB                            R17 1
      160 SETTABLE                         R17 R16 R14
      161 FORGLOOP                         R10 2 ; [-50]
      163 SETTABLE                         R8 R9 R0
      164 RETURN                           R0 0
      165 NAMECALL                         R5 R0 K19 ["GetChildren"]
      167 CALL                             R5 1 3
      168 FORGPREP                         R5
      169 GETUPVAL                         R10 3
      170 MOVE                             R11 R9
      171 MOVE                             R12 R1
      172 MOVE                             R13 R2
      173 CALL                             R10 3 0
      174 FORGLOOP                         R5 2 ; [-6]
      176 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K10 [{[1], ["PartToRootMap"], ["PartSet"], ["ModelSet"], ["ProceduralModelSet"], ["AttachmentSet"], ["BoneSet"], ["FaceInstanceSet"], ["BasisObject"] = }]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["RootToDescendantCountMap"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["PartToRootMap"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["PartSet"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["ModelSet"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["ProceduralModelSet"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K5 ["AttachmentSet"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R1 K6 ["BoneSet"]
       29 NEWTABLE                         R2 0 0
       31 SETTABLEKS                       R2 R1 K7 ["FaceInstanceSet"]
       33 MOVE                             R2 R0
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 JUMPIFNOTEQKN                    R5 K11 [1] ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 GETUPVAL                         R8 0
       42 MOVE                             R9 R6
       43 MOVE                             R10 R1
       44 MOVE                             R11 R7
       45 CALL                             R8 3 0
       46 FORGLOOP                         R2 2 ; [-10]
       48 RETURN                           R1 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 1 ; [-8]
       15 RETURN                           R1 1

PROTO_14:
        0 NAMECALL                         R2 R0 K0 ["isSimulating"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R0 K1 ["shouldUseLocalSpace"]
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K4 [table.create]
        8 LOADN                            R5 64
        9 CALL                             R4 1 1
       10 NEWTABLE                         R5 0 0
       12 NEWTABLE                         R6 0 0
       14 NEWTABLE                         R7 0 0
       16 NEWTABLE                         R8 0 0
       18 NEWTABLE                         R9 0 0
       20 NEWTABLE                         R10 0 0
       22 LOADNIL                          R11
       23 LOADN                            R12 0
       24 LOADNIL                          R13
       25 LOADNIL                          R14
       26 GETUPVAL                         R15 0
       27 MOVE                             R16 R1
       28 CALL                             R15 1 1
       29 GETTABLEKS                       R5 R15 K5 ["PartSet"]
       31 MOVE                             R16 R5
       32 NEWTABLE                         R17 0 0
       34 MOVE                             R18 R16
       35 LOADNIL                          R19
       36 LOADNIL                          R20
       37 FORGPREP                         R18
       38 FASTCALL2                        TABLE_INSERT R17 R21 ; [+5]
       40 MOVE                             R24 R17
       41 MOVE                             R25 R21
       42 GETIMPORT                        R23 K7 [table.insert]
       44 CALL                             R23 2 0
       45 FORGLOOP                         R18 1 ; [-8]
       47 MOVE                             R4 R17
       48 GETTABLEKS                       R16 R15 K8 ["ModelSet"]
       50 NEWTABLE                         R17 0 0
       52 MOVE                             R18 R16
       53 LOADNIL                          R19
       54 LOADNIL                          R20
       55 FORGPREP                         R18
       56 FASTCALL2                        TABLE_INSERT R17 R21 ; [+5]
       58 MOVE                             R24 R17
       59 MOVE                             R25 R21
       60 GETIMPORT                        R23 K7 [table.insert]
       62 CALL                             R23 2 0
       63 FORGLOOP                         R18 1 ; [-8]
       65 MOVE                             R8 R17
       66 GETUPVAL                         R17 1
       67 JUMPIFNOT                        R17 ; [+18]
       68 GETTABLEKS                       R17 R15 K9 ["ProceduralModelSet"]
       70 NEWTABLE                         R18 0 0
       72 MOVE                             R19 R17
       73 LOADNIL                          R20
       74 LOADNIL                          R21
       75 FORGPREP                         R19
       76 FASTCALL2                        TABLE_INSERT R18 R22 ; [+5]
       78 MOVE                             R25 R18
       79 MOVE                             R26 R22
       80 GETIMPORT                        R24 K7 [table.insert]
       82 CALL                             R24 2 0
       83 FORGLOOP                         R19 1 ; [-8]
       85 MOVE                             R9 R18
       86 GETTABLEKS                       R17 R15 K10 ["AttachmentSet"]
       88 NEWTABLE                         R18 0 0
       90 MOVE                             R19 R17
       91 LOADNIL                          R20
       92 LOADNIL                          R21
       93 FORGPREP                         R19
       94 FASTCALL2                        TABLE_INSERT R18 R22 ; [+5]
       96 MOVE                             R25 R18
       97 MOVE                             R26 R22
       98 GETIMPORT                        R24 K7 [table.insert]
      100 CALL                             R24 2 0
      101 FORGLOOP                         R19 1 ; [-8]
      103 MOVE                             R6 R18
      104 GETTABLEKS                       R17 R15 K11 ["BoneSet"]
      106 NEWTABLE                         R18 0 0
      108 MOVE                             R19 R17
      109 LOADNIL                          R20
      110 LOADNIL                          R21
      111 FORGPREP                         R19
      112 FASTCALL2                        TABLE_INSERT R18 R22 ; [+5]
      114 MOVE                             R25 R18
      115 MOVE                             R26 R22
      116 GETIMPORT                        R24 K7 [table.insert]
      118 CALL                             R24 2 0
      119 FORGLOOP                         R19 1 ; [-8]
      121 MOVE                             R7 R18
      122 GETTABLEKS                       R17 R15 K12 ["FaceInstanceSet"]
      124 NEWTABLE                         R18 0 0
      126 MOVE                             R19 R17
      127 LOADNIL                          R20
      128 LOADNIL                          R21
      129 FORGPREP                         R19
      130 FASTCALL2                        TABLE_INSERT R18 R22 ; [+5]
      132 MOVE                             R25 R18
      133 MOVE                             R26 R22
      134 GETIMPORT                        R24 K7 [table.insert]
      136 CALL                             R24 2 0
      137 FORGLOOP                         R19 1 ; [-8]
      139 MOVE                             R10 R18
      140 GETTABLEKS                       R13 R15 K13 ["RootToDescendantCountMap"]
      142 GETTABLEKS                       R14 R15 K14 ["PartToRootMap"]
      144 GETTABLEKS                       R17 R15 K13 ["RootToDescendantCountMap"]
      146 LOADNIL                          R18
      147 LOADNIL                          R19
      148 FORGPREP                         R17
      149 ADDK                             R12 R12 K15 [1]
      150 FORGLOOP                         R17 1 ; [-2]
      152 GETTABLEKS                       R11 R15 K16 ["BasisObject"]
      154 NEWTABLE                         R17 0 0
      156 GETUPVAL                         R18 2
      157 MOVE                             R19 R6
      158 CALL                             R18 1 1
      159 GETUPVAL                         R19 3
      160 JUMPIFNOT                        R19 ; [+18]
      161 MOVE                             R19 R18
      162 LOADNIL                          R20
      163 LOADNIL                          R21
      164 FORGPREP                         R19
      165 GETTABLE                         R24 R5 R23
      166 JUMPIF                           R24 ; [+9]
      167 GETTABLE                         R24 R16 R23
      168 JUMPIF                           R24 ; [+7]
      169 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      171 MOVE                             R25 R17
      172 MOVE                             R26 R22
      173 GETIMPORT                        R24 K7 [table.insert]
      175 CALL                             R24 2 0
      176 FORGLOOP                         R19 2 ; [-12]
      178 JUMP                             ; [+16]
      179 GETIMPORT                        R19 K18 [pairs]
      181 MOVE                             R20 R18
      182 CALL                             R19 1 3
      183 FORGPREP_NEXT                    R19
      184 GETTABLE                         R24 R5 R23
      185 JUMPIF                           R24 ; [+7]
      186 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      188 MOVE                             R25 R17
      189 MOVE                             R26 R22
      190 GETIMPORT                        R24 K7 [table.insert]
      192 CALL                             R24 2 0
      193 FORGLOOP                         R19 2 ; [-10]
      195 GETUPVAL                         R19 2
      196 MOVE                             R20 R7
      197 CALL                             R19 1 1
      198 GETIMPORT                        R20 K18 [pairs]
      200 MOVE                             R21 R19
      201 CALL                             R20 1 3
      202 FORGPREP_NEXT                    R20
      203 GETTABLE                         R25 R5 R24
      204 JUMPIF                           R25 ; [+7]
      205 FASTCALL2                        TABLE_INSERT R17 R23 ; [+5]
      207 MOVE                             R26 R17
      208 MOVE                             R27 R23
      209 GETIMPORT                        R25 K7 [table.insert]
      211 CALL                             R25 2 0
      212 FORGLOOP                         R20 2 ; [-10]
      214 LOADNIL                          R20
      215 LOADNIL                          R21
      216 JUMPIFNOT                        R11 ; [+9]
      217 NAMECALL                         R22 R11 K19 ["GetPivot"]
      219 CALL                             R22 1 1
      220 MOVE                             R21 R22
      221 JUMPIFNOTEQKN                    R12 K15 [1] ; [+2]
      223 LOADB                            R20 0 +1
      224 LOADB                            R20 1
      225 JUMP                             ; [+18]
      226 LENGTH                           R22 R17
      227 LOADN                            R23 0
      228 JUMPIFNOTLT                      R23 R22 ; [+10]
      230 GETTABLEN                        R22 R17 1
      231 GETTABLEKS                       R21 R22 K20 ["WorldCFrame"]
      233 LENGTH                           R22 R17
      234 LOADN                            R23 1
      235 JUMPIFNOTLT                      R23 R22 ; [+8]
      237 LOADB                            R20 1
      238 JUMP                             ; [+5]
      239 GETIMPORT                        R22 K23 [CFrame.new]
      241 CALL                             R22 0 1
      242 MOVE                             R21 R22
      243 LOADB                            R20 0
      244 NEWTABLE                         R22 0 0
      246 GETIMPORT                        R23 K25 [ipairs]
      248 MOVE                             R24 R4
      249 CALL                             R23 1 3
      250 FORGPREP_INEXT                   R23
      251 GETTABLEKS                       R28 R27 K21 ["CFrame"]
      253 SETTABLE                         R28 R22 R27
      254 FORGLOOP                         R23 2 [inext] ; [-4]
      256 LOADB                            R23 0
      257 JUMPIFNOT                        R2 ; [+48]
      258 GETIMPORT                        R24 K25 [ipairs]
      260 MOVE                             R25 R4
      261 CALL                             R24 1 3
      262 FORGPREP_INEXT                   R24
      263 NAMECALL                         R29 R28 K26 ["IsGrounded"]
      265 CALL                             R29 1 1
      266 JUMPIF                           R29 ; [+2]
      267 LOADB                            R23 1
      268 JUMP                             ; [+2]
      269 FORGLOOP                         R24 2 [inext] ; [-7]
      271 JUMPIF                           R23 ; [+34]
      272 GETIMPORT                        R24 K18 [pairs]
      274 MOVE                             R25 R18
      275 CALL                             R24 1 3
      276 FORGPREP_NEXT                    R24
      277 LOADK                            R31 K27 ["BasePart"]
      278 NAMECALL                         R29 R28 K28 ["IsA"]
      280 CALL                             R29 2 1
      281 JUMPIFNOT                        R29 ; [+5]
      282 NAMECALL                         R29 R28 K26 ["IsGrounded"]
      284 CALL                             R29 1 1
      285 JUMPIF                           R29 ; [+1]
      286 LOADB                            R23 1
      287 FORGLOOP                         R24 2 ; [-11]
      289 GETIMPORT                        R24 K18 [pairs]
      291 MOVE                             R25 R19
      292 CALL                             R24 1 3
      293 FORGPREP_NEXT                    R24
      294 LOADK                            R31 K27 ["BasePart"]
      295 NAMECALL                         R29 R28 K28 ["IsA"]
      297 CALL                             R29 2 1
      298 JUMPIFNOT                        R29 ; [+5]
      299 NAMECALL                         R29 R28 K26 ["IsGrounded"]
      301 CALL                             R29 1 1
      302 JUMPIF                           R29 ; [+1]
      303 LOADB                            R23 1
      304 FORGLOOP                         R24 2 ; [-11]
      306 GETIMPORT                        R24 K25 [ipairs]
      308 MOVE                             R25 R7
      309 CALL                             R24 1 3
      310 FORGPREP_INEXT                   R24
      311 FASTCALL2                        TABLE_INSERT R6 R28 ; [+5]
      313 MOVE                             R30 R6
      314 MOVE                             R31 R28
      315 GETIMPORT                        R29 K7 [table.insert]
      317 CALL                             R29 2 0
      318 FORGLOOP                         R24 2 [inext] ; [-8]
      320 MOVE                             R24 R21
      321 LOADNIL                          R25
      322 LOADNIL                          R26
      323 LOADNIL                          R27
      324 LOADNIL                          R28
      325 LOADNIL                          R29
      326 JUMPIFNOT                        R3 ; [+22]
      327 GETUPVAL                         R30 1
      328 JUMPIFNOT                        R30 ; [+9]
      329 GETUPVAL                         R30 4
      330 MOVE                             R31 R24
      331 MOVE                             R32 R4
      332 MOVE                             R33 R9
      333 MOVE                             R34 R6
      334 CALL                             R30 4 2
      335 MOVE                             R25 R30
      336 MOVE                             R26 R31
      337 JUMP                             ; [+7]
      338 GETUPVAL                         R30 5
      339 MOVE                             R31 R24
      340 MOVE                             R32 R4
      341 MOVE                             R33 R6
      342 CALL                             R30 3 2
      343 MOVE                             R25 R30
      344 MOVE                             R26 R31
      345 MOVE                             R27 R24
      346 MOVE                             R28 R25
      347 MOVE                             R29 R26
      348 JUMP                             ; [+28]
      349 GETUPVAL                         R30 1
      350 JUMPIFNOT                        R30 ; [+11]
      351 GETUPVAL                         R30 6
      352 MOVE                             R31 R24
      353 MOVE                             R32 R4
      354 MOVE                             R33 R9
      355 MOVE                             R34 R6
      356 CALL                             R30 4 4
      357 MOVE                             R25 R30
      358 MOVE                             R26 R31
      359 MOVE                             R28 R32
      360 MOVE                             R29 R33
      361 JUMP                             ; [+9]
      362 GETUPVAL                         R30 7
      363 MOVE                             R31 R24
      364 MOVE                             R32 R4
      365 MOVE                             R33 R6
      366 CALL                             R30 3 4
      367 MOVE                             R25 R30
      368 MOVE                             R26 R31
      369 MOVE                             R28 R32
      370 MOVE                             R29 R33
      371 GETIMPORT                        R30 K23 [CFrame.new]
      373 GETTABLEKS                       R31 R21 K29 ["Position"]
      375 CALL                             R30 1 1
      376 MOVE                             R27 R30
      377 JUMPIFNOT                        R20 ; [+20]
      378 GETIMPORT                        R30 K23 [CFrame.new]
      380 MOVE                             R31 R25
      381 CALL                             R30 1 1
      382 MUL                              R24 R24 R30
      383 FASTCALL                         VECTOR ; [+2]
      384 GETIMPORT                        R30 K31 [Vector3.new]
      386 CALL                             R30 0 1
      387 MOVE                             R25 R30
      388 GETIMPORT                        R30 K23 [CFrame.new]
      390 MOVE                             R31 R28
      391 CALL                             R30 1 1
      392 MUL                              R27 R27 R30
      393 FASTCALL                         VECTOR ; [+2]
      394 GETIMPORT                        R30 K31 [Vector3.new]
      396 CALL                             R30 0 1
      397 MOVE                             R28 R30
      398 DUPTABLE                         R30 K50 [{"basisCFrame", "basisObject", "boundingBoxSize", "boundingBoxOffset", "localBasisCFrame", "localBoundingBoxSize", "localBoundingBoxOffset", "rootToDescendantCountMap", "partToRootMap", "parts", "partSet", "attachments", "models", "proceduralModels", "allAttachments", "originalCFrameMap", "hasPhysics", "instancesWithConfigurableFace"}]
      399 SETTABLEKS                       R27 R30 K32 ["basisCFrame"]
      401 SETTABLEKS                       R11 R30 K33 ["basisObject"]
      403 SETTABLEKS                       R29 R30 K34 ["boundingBoxSize"]
      405 SETTABLEKS                       R28 R30 K35 ["boundingBoxOffset"]
      407 SETTABLEKS                       R24 R30 K36 ["localBasisCFrame"]
      409 SETTABLEKS                       R26 R30 K37 ["localBoundingBoxSize"]
      411 SETTABLEKS                       R25 R30 K38 ["localBoundingBoxOffset"]
      413 SETTABLEKS                       R13 R30 K39 ["rootToDescendantCountMap"]
      415 SETTABLEKS                       R14 R30 K40 ["partToRootMap"]
      417 SETTABLEKS                       R4 R30 K41 ["parts"]
      419 SETTABLEKS                       R5 R30 K42 ["partSet"]
      421 SETTABLEKS                       R17 R30 K43 ["attachments"]
      423 SETTABLEKS                       R8 R30 K44 ["models"]
      425 SETTABLEKS                       R9 R30 K45 ["proceduralModels"]
      427 SETTABLEKS                       R6 R30 K46 ["allAttachments"]
      429 SETTABLEKS                       R22 R30 K47 ["originalCFrameMap"]
      431 SETTABLEKS                       R23 R30 K48 ["hasPhysics"]
      433 SETTABLEKS                       R10 R30 K49 ["instancesWithConfigurableFace"]
      435 RETURN                           R30 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        7 GETIMPORT                        R2 K1 [setmetatable]
        9 CALL                             R2 2 1
       10 RETURN                           R2 1

PROTO_16:
        0 NEWTABLE                         R2 4 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 SETTABLE                         R7 R2 R6
        8 FORGLOOP                         R3 2 ; [-2]
       10 GETTABLEKS                       R4 R2 K2 ["basisCFrame"]
       12 MUL                              R3 R1 R4
       13 NAMECALL                         R3 R3 K3 ["Orthonormalize"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K2 ["basisCFrame"]
       18 GETTABLEKS                       R4 R2 K4 ["localBasisCFrame"]
       20 MUL                              R3 R1 R4
       21 NAMECALL                         R3 R3 K3 ["Orthonormalize"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K4 ["localBasisCFrame"]
       26 NEWTABLE                         R3 0 0
       28 GETIMPORT                        R4 K1 [pairs]
       30 GETTABLEKS                       R5 R2 K5 ["originalCFrameMap"]
       32 CALL                             R4 1 3
       33 FORGPREP_NEXT                    R4
       34 MUL                              R9 R1 R8
       35 NAMECALL                         R9 R9 K3 ["Orthonormalize"]
       37 CALL                             R9 1 1
       38 SETTABLE                         R9 R3 R7
       39 FORGLOOP                         R4 2 ; [-6]
       41 SETTABLEKS                       R3 R2 K5 ["originalCFrameMap"]
       43 GETTABLEKS                       R4 R0 K6 ["_rootModelMapping"]
       45 JUMPIFNOT                        R4 ; [+52]
       46 GETIMPORT                        R4 K9 [table.clone]
       48 GETTABLEKS                       R5 R0 K6 ["_rootModelMapping"]
       50 GETTABLEKS                       R5 R5 K10 ["LoosePartMap"]
       52 CALL                             R4 1 1
       53 GETIMPORT                        R5 K9 [table.clone]
       55 GETTABLEKS                       R6 R0 K6 ["_rootModelMapping"]
       57 GETTABLEKS                       R6 R6 K11 ["RootModelMap"]
       59 CALL                             R5 1 1
       60 MOVE                             R6 R4
       61 LOADNIL                          R7
       62 LOADNIL                          R8
       63 FORGPREP                         R6
       64 MUL                              R11 R1 R10
       65 NAMECALL                         R11 R11 K3 ["Orthonormalize"]
       67 CALL                             R11 1 1
       68 SETTABLE                         R11 R4 R9
       69 FORGLOOP                         R6 2 ; [-6]
       71 MOVE                             R6 R5
       72 LOADNIL                          R7
       73 LOADNIL                          R8
       74 FORGPREP                         R6
       75 MUL                              R11 R1 R10
       76 NAMECALL                         R11 R11 K3 ["Orthonormalize"]
       78 CALL                             R11 1 1
       79 SETTABLE                         R11 R5 R9
       80 FORGLOOP                         R6 2 ; [-6]
       82 GETIMPORT                        R6 K13 [table.freeze]
       84 DUPTABLE                         R7 K15 [{"PartToRootMap", "LoosePartMap", "RootModelMap"}]
       85 GETTABLEKS                       R8 R0 K6 ["_rootModelMapping"]
       87 GETTABLEKS                       R8 R8 K14 ["PartToRootMap"]
       89 SETTABLEKS                       R8 R7 K14 ["PartToRootMap"]
       91 SETTABLEKS                       R4 R7 K10 ["LoosePartMap"]
       93 SETTABLEKS                       R5 R7 K11 ["RootModelMap"]
       95 CALL                             R6 1 1
       96 SETTABLEKS                       R6 R2 K6 ["_rootModelMapping"]
       98 GETUPVAL                         R6 0
       99 FASTCALL2                        SETMETATABLE R2 R6 ; [+4]
      101 MOVE                             R5 R2
      102 GETIMPORT                        R4 K17 [setmetatable]
      104 CALL                             R4 2 1
      105 RETURN                           R4 1

PROTO_17:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["parts"]
        3 LENGTH                           R2 R3
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+17]
        6 LOADB                            R1 0
        7 GETTABLEKS                       R3 R0 K2 ["attachments"]
        9 LENGTH                           R2 R3
       10 JUMPIFNOTEQKN                    R2 K1 [0] ; [+11]
       12 GETUPVAL                         R2 0
       13 NOT                              R1 R2
       14 JUMPIF                           R1 ; [+7]
       15 GETTABLEKS                       R3 R0 K3 ["proceduralModels"]
       17 LENGTH                           R2 R3
       18 JUMPIFEQKN                       R2 K1 [0] ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["basisCFrame"]
        2 GETTABLEKS                       R2 R0 K1 ["boundingBoxOffset"]
        4 GETTABLEKS                       R3 R0 K2 ["boundingBoxSize"]
        6 RETURN                           R1 3

PROTO_19:
        0 GETTABLEKS                       R4 R0 K0 ["partSet"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["hasPhysics"]
        2 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["originalCFrameMap"]
        2 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["localBasisCFrame"]
        2 GETTABLEKS                       R2 R0 K1 ["localBoundingBoxOffset"]
        4 GETTABLEKS                       R3 R0 K2 ["localBoundingBoxSize"]
        6 RETURN                           R1 3

PROTO_23:
        0 GETTABLEKS                       R4 R0 K0 ["parts"]
        2 LENGTH                           R3 R4
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+143]
        6 GETTABLEKS                       R4 R0 K0 ["parts"]
        8 GETTABLEN                        R3 R4 1
        9 GETTABLEKS                       R4 R3 K1 ["CFrame"]
       11 GETTABLEKS                       R6 R0 K2 ["originalCFrameMap"]
       13 GETTABLE                         R5 R6 R3
       14 NAMECALL                         R7 R5 K3 ["Inverse"]
       16 CALL                             R7 1 1
       17 MUL                              R6 R4 R7
       18 NAMECALL                         R7 R0 K4 ["getLocalBoundingBox"]
       20 CALL                             R7 1 3
       21 GETTABLEKS                       R10 R9 K5 ["Magnitude"]
       23 GETTABLEKS                       R12 R6 K6 ["Rotation"]
       25 MUL                              R11 R12 R2
       26 MUL                              R13 R6 R7
       27 MUL                              R12 R13 R1
       28 GETTABLEKS                       R12 R12 K7 ["Position"]
       30 LOADK                            R17 K9 [0.5]
       31 MUL                              R16 R17 R10
       32 ADDK                             R15 R16 K8 [1]
       33 MUL                              R14 R15 R11
       34 SUB                              R13 R12 R14
       35 GETIMPORT                        R14 K11 [CFrame.lookAlong]
       37 MOVE                             R15 R13
       38 MOVE                             R16 R11
       39 CALL                             R14 2 1
       40 LOADN                            R18 2
       41 MUL                              R17 R18 R10
       42 ADDK                             R16 R17 K8 [1]
       43 FASTCALL2K                       MATH_MIN R16 K12 ; [+4]
       45 LOADK                            R17 K12 [1023]
       46 GETIMPORT                        R15 K15 [math.min]
       48 CALL                             R15 2 1
       49 GETIMPORT                        R16 K18 [RaycastParams.new]
       51 CALL                             R16 0 1
       52 GETIMPORT                        R17 K22 [Enum.RaycastFilterType.Include]
       54 SETTABLEKS                       R17 R16 K23 ["FilterType"]
       56 GETTABLEKS                       R17 R0 K0 ["parts"]
       58 SETTABLEKS                       R17 R16 K24 ["FilterDescendantsInstances"]
       60 LOADK                            R19 K25 [0.1]
       61 MUL                              R18 R19 R10
       62 FASTCALL2K                       MATH_MIN R18 K26 ; [+4]
       64 LOADK                            R19 K26 [512]
       65 GETIMPORT                        R17 K15 [math.min]
       67 CALL                             R17 2 1
       68 JUMPIFEQ                         R17 R17 ; [+2]
       70 LOADN                            R17 1
       71 GETIMPORT                        R18 K28 [workspace]
       73 MOVE                             R20 R14
       74 LOADN                            R24 0
       75 FASTCALL3                        VECTOR R17 R17 R24
       77 MOVE                             R22 R17
       78 MOVE                             R23 R17
       79 GETIMPORT                        R21 K30 [Vector3.new]
       81 CALL                             R21 3 1
       82 MUL                              R22 R11 R15
       83 MOVE                             R23 R16
       84 NAMECALL                         R18 R18 K31 ["Blockcast"]
       86 CALL                             R18 5 1
       87 JUMPIFNOT                        R18 ; [+58]
       88 NAMECALL                         R20 R6 K3 ["Inverse"]
       90 CALL                             R20 1 1
       91 GETTABLEKS                       R21 R18 K7 ["Position"]
       93 MUL                              R19 R20 R21
       94 GETIMPORT                        R21 K32 [CFrame.new]
       96 MOVE                             R22 R8
       97 CALL                             R21 1 1
       98 MUL                              R20 R7 R21
       99 GETTABLEKS                       R20 R20 K7 ["Position"]
      101 SUB                              R22 R19 R20
      102 MOVE                             R24 R2
      103 NAMECALL                         R22 R22 K33 ["Dot"]
      105 CALL                             R22 2 1
      106 FASTCALL1                        MATH_ABS R22 ; [+2]
      107 GETIMPORT                        R21 K35 [math.abs]
      109 CALL                             R21 1 1
      110 MOVE                             R24 R2
      111 NAMECALL                         R22 R7 K36 ["VectorToObjectSpace"]
      113 CALL                             R22 2 1
      114 GETTABLEKS                       R27 R9 K37 ["X"]
      116 GETTABLEKS                       R28 R22 K37 ["X"]
      118 MUL                              R26 R27 R28
      119 FASTCALL1                        MATH_ABS R26 ; [+2]
      120 GETIMPORT                        R25 K35 [math.abs]
      122 CALL                             R25 1 1
      123 GETTABLEKS                       R28 R9 K38 ["Y"]
      125 GETTABLEKS                       R29 R22 K38 ["Y"]
      127 MUL                              R27 R28 R29
      128 FASTCALL1                        MATH_ABS R27 ; [+2]
      129 GETIMPORT                        R26 K35 [math.abs]
      131 CALL                             R26 1 1
      132 ADD                              R24 R25 R26
      133 GETTABLEKS                       R27 R9 K39 ["Z"]
      135 GETTABLEKS                       R28 R22 K39 ["Z"]
      137 MUL                              R26 R27 R28
      138 FASTCALL1                        MATH_ABS R26 ; [+2]
      139 GETIMPORT                        R25 K35 [math.abs]
      141 CALL                             R25 1 1
      142 ADD                              R23 R24 R25
      143 MULK                             R25 R23 K9 [0.5]
      144 SUB                              R24 R25 R21
      145 RETURN                           R24 1
      146 LOADN                            R19 0
      147 RETURN                           R19 1
      148 GETTABLEKS                       R4 R0 K40 ["attachments"]
      150 LENGTH                           R3 R4
      151 LOADN                            R4 0
      152 JUMPIFNOTLT                      R4 R3 ; [+3]
      154 LOADN                            R3 0
      155 RETURN                           R3 1
      156 LOADN                            R3 0
      157 RETURN                           R3 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["parts"]
        2 GETTABLEKS                       R2 R0 K1 ["attachments"]
        4 GETTABLEKS                       R3 R0 K2 ["models"]
        6 RETURN                           R1 3

PROTO_25:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["ProcModel flag was not on"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["proceduralModels"]
        9 RETURN                           R1 1

PROTO_26:
        0 DUPTABLE                         R1 K2 [{"RootToDescendantCountMap", "PartToRootMap"}]
        1 GETTABLEKS                       R2 R0 K3 ["rootToDescendantCountMap"]
        3 SETTABLEKS                       R2 R1 K0 ["RootToDescendantCountMap"]
        5 GETTABLEKS                       R2 R0 K4 ["partToRootMap"]
        7 SETTABLEKS                       R2 R1 K1 ["PartToRootMap"]
        9 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["basisObject"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["allAttachments"]
        2 RETURN                           R1 1

PROTO_29:
        0 NAMECALL                         R4 R0 K0 ["GetChildren"]
        2 CALL                             R4 1 3
        3 FORGPREP                         R4
        4 LOADK                            R11 K1 ["BasePart"]
        5 NAMECALL                         R9 R8 K2 ["IsA"]
        7 CALL                             R9 2 1
        8 JUMPIFNOT                        R9 ; [+11]
        9 GETTABLEKS                       R9 R8 K3 ["CFrame"]
       11 SETTABLE                         R9 R2 R8
       12 SETTABLE                         R8 R1 R8
       13 GETUPVAL                         R9 0
       14 MOVE                             R10 R8
       15 MOVE                             R11 R1
       16 MOVE                             R12 R2
       17 MOVE                             R13 R3
       18 CALL                             R9 4 0
       19 JUMP                             ; [+28]
       20 LOADK                            R11 K4 ["Model"]
       21 NAMECALL                         R9 R8 K2 ["IsA"]
       23 CALL                             R9 2 1
       24 JUMPIFNOT                        R9 ; [+17]
       25 NAMECALL                         R9 R8 K5 ["GetPivot"]
       27 CALL                             R9 1 1
       28 SETTABLE                         R9 R3 R8
       29 NAMECALL                         R9 R8 K6 ["GetDescendants"]
       31 CALL                             R9 1 3
       32 FORGPREP                         R9
       33 LOADK                            R16 K1 ["BasePart"]
       34 NAMECALL                         R14 R13 K2 ["IsA"]
       36 CALL                             R14 2 1
       37 JUMPIFNOT                        R14 ; [+1]
       38 SETTABLE                         R8 R1 R13
       39 FORGLOOP                         R9 2 ; [-7]
       41 JUMP                             ; [+6]
       42 GETUPVAL                         R9 0
       43 MOVE                             R10 R8
       44 MOVE                             R11 R1
       45 MOVE                             R12 R2
       46 MOVE                             R13 R3
       47 CALL                             R9 4 0
       48 FORGLOOP                         R4 2 ; [-45]
       50 RETURN                           R0 0

PROTO_30:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["PartToRootMap"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R4 R0 K4 ["RootToDescendantCountMap"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 LOADK                            R11 K5 ["BasePart"]
       15 NAMECALL                         R9 R7 K6 ["IsA"]
       17 CALL                             R9 2 1
       18 JUMPIFNOT                        R9 ; [+10]
       19 GETTABLEKS                       R9 R7 K7 ["CFrame"]
       21 SETTABLE                         R9 R3 R7
       22 GETUPVAL                         R9 0
       23 MOVE                             R10 R7
       24 MOVE                             R11 R1
       25 MOVE                             R12 R3
       26 MOVE                             R13 R2
       27 CALL                             R9 4 0
       28 JUMP                             ; [+4]
       29 NAMECALL                         R9 R7 K8 ["GetPivot"]
       31 CALL                             R9 1 1
       32 SETTABLE                         R9 R2 R7
       33 FORGLOOP                         R4 2 ; [-20]
       35 MOVE                             R4 R1
       36 MOVE                             R5 R3
       37 MOVE                             R6 R2
       38 RETURN                           R4 3

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_rootModelMapping"]
        2 JUMPIF                           R1 ; [+17]
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R2 R0 K1 ["getRootMapping"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 GETIMPORT                        R4 K4 [table.freeze]
       10 DUPTABLE                         R5 K8 [{"PartToRootMap", "LoosePartMap", "RootModelMap"}]
       11 SETTABLEKS                       R1 R5 K5 ["PartToRootMap"]
       13 SETTABLEKS                       R2 R5 K6 ["LoosePartMap"]
       15 SETTABLEKS                       R3 R5 K7 ["RootModelMap"]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R0 K0 ["_rootModelMapping"]
       20 GETTABLEKS                       R1 R0 K0 ["_rootModelMapping"]
       22 RETURN                           R1 1

PROTO_32:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 GETTABLEKS                       R3 R0 K0 ["LoosePartMap"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 ADDK                             R1 R1 K1 [1]
        8 FORGLOOP                         R3 1 ; [-2]
       10 GETTABLEKS                       R3 R0 K2 ["RootModelMap"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 ADDK                             R2 R2 K1 [1]
       16 FORGLOOP                         R3 1 ; [-2]
       18 LOADB                            R3 0
       19 JUMPIFNOTEQKN                    R1 K1 [1] ; [+5]
       21 JUMPIFEQKN                       R2 K3 [0] ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 RETURN                           R3 1

PROTO_33:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["ProcModel flag was on"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["_isSinglePart_DEPRECATED"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+31]
       12 NAMECALL                         R2 R0 K4 ["getRootModelMapping"]
       14 CALL                             R2 1 1
       15 LOADN                            R3 0
       16 LOADN                            R4 0
       17 GETTABLEKS                       R5 R2 K5 ["LoosePartMap"]
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 ADDK                             R3 R3 K6 [1]
       23 FORGLOOP                         R5 1 ; [-2]
       25 GETTABLEKS                       R5 R2 K7 ["RootModelMap"]
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 ADDK                             R4 R4 K6 [1]
       31 FORGLOOP                         R5 1 ; [-2]
       33 LOADB                            R1 0
       34 JUMPIFNOTEQKN                    R3 K6 [1] ; [+5]
       36 JUMPIFEQKN                       R4 K8 [0] ; [+2]
       38 LOADB                            R1 0 +1
       39 LOADB                            R1 1
       40 SETTABLEKS                       R1 R0 K3 ["_isSinglePart_DEPRECATED"]
       42 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["ProcModel flag was not on"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["_computedSingleSelectionInterface"]
        9 JUMPIFNOT                        R1 ; [+11]
       10 GETTABLEKS                       R1 R0 K4 ["_cachedSingleSelectionInterface"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETTABLEKS                       R1 R0 K4 ["_cachedSingleSelectionInterface"]
       15 GETTABLEKS                       R1 R1 K5 ["recomputeInitialBounds"]
       17 CALL                             R1 0 0
       18 GETTABLEKS                       R1 R0 K4 ["_cachedSingleSelectionInterface"]
       20 RETURN                           R1 1
       21 NAMECALL                         R1 R0 K6 ["getRootModelMapping"]
       23 CALL                             R1 1 1
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R3 R1 K7 ["LoosePartMap"]
       27 GETTABLEKS                       R4 R1 K8 ["RootModelMap"]
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R0 K4 ["_cachedSingleSelectionInterface"]
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R0 K3 ["_computedSingleSelectionInterface"]
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K7 ["DraggerFramework"]
       15 GETIMPORT                        R2 K9 [require]
       17 GETIMPORT                        R3 K5 [script]
       19 GETTABLEKS                       R3 R3 K6 ["Parent"]
       21 GETTABLEKS                       R3 R3 K10 ["getSingleSelectionInterface"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R1 K11 ["Types"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Flags"]
       33 GETTABLEKS                       R5 R5 K13 ["getFFlagDraggerEditProcModels"]
       35 CALL                             R4 1 1
       36 MOVE                             R5 R4
       37 CALL                             R5 0 1
       38 GETIMPORT                        R6 K1 [game]
       40 LOADK                            R8 K14 ["DetachedAttachments"]
       41 NAMECALL                         R6 R6 K15 ["GetEngineFeature"]
       43 CALL                             R6 2 1
       44 DUPCLOSURE                       R7 K16 [PROTO_0]
       45 CAPTURE                          VAL R6
       46 DUPCLOSURE                       R8 K17 [PROTO_1]
       47 CAPTURE                          VAL R0
       48 DUPCLOSURE                       R9 K18 [PROTO_3]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R8
       51 DUPCLOSURE                       R10 K19 [PROTO_4]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R0
       54 DUPCLOSURE                       R11 K20 [PROTO_6]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R8
       57 DUPCLOSURE                       R12 K21 [PROTO_7]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R0
       60 DUPCLOSURE                       R13 K22 [PROTO_8]
       61 CAPTURE                          VAL R13
       62 DUPCLOSURE                       R14 K23 [PROTO_9]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R13
       65 JUMPIFNOT                        R5 ; [+2]
       66 DUPTABLE                         R15 K32 [{["BasePart"] = "BasePart", ["Model"] = "Model", ["ProceduralModel"] = "ProceduralModel", ["Attachment"] = "Attachment", ["Bone"] = "Bone", ["FaceInstance"] = "FaceInstance", ["SurfaceGui"] = "FaceInstance", ["Terrain"] = "Terrain"}]
       67 JUMP                             ; [+1]
       68 DUPTABLE                         R15 K33 [{["BasePart"] = "BasePart", ["Model"] = "Model", ["Attachment"] = "Attachment", ["Bone"] = "Bone", ["FaceInstance"] = "FaceInstance", ["SurfaceGui"] = "FaceInstance", ["Terrain"] = "Terrain"}]
       69 DUPCLOSURE                       R16 K34 [PROTO_10]
       70 CAPTURE                          VAL R15
       71 DUPCLOSURE                       R17 K35 [PROTO_11]
       72 CAPTURE                          VAL R15
       73 CAPTURE                          VAL R16
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R17
       76 DUPCLOSURE                       R18 K36 [PROTO_12]
       77 CAPTURE                          VAL R17
       78 DUPCLOSURE                       R19 K37 [PROTO_13]
       79 DUPCLOSURE                       R20 K38 [PROTO_14]
       80 CAPTURE                          VAL R18
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R12
       88 NEWTABLE                         R21 32 0
       90 SETTABLEKS                       R21 R21 K39 ["__index"]
       92 DUPCLOSURE                       R22 K40 [PROTO_15]
       93 CAPTURE                          VAL R20
       94 CAPTURE                          VAL R21
       95 SETTABLEKS                       R22 R21 K41 ["new"]
       97 DUPCLOSURE                       R22 K42 [PROTO_16]
       98 CAPTURE                          VAL R21
       99 SETTABLEKS                       R22 R21 K43 ["getTransformedCopy"]
      101 DUPCLOSURE                       R22 K44 [PROTO_17]
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R22 R21 K45 ["isEmpty"]
      105 DUPCLOSURE                       R22 K46 [PROTO_18]
      106 SETTABLEKS                       R22 R21 K47 ["getBoundingBox"]
      108 DUPCLOSURE                       R22 K48 [PROTO_19]
      109 SETTABLEKS                       R22 R21 K49 ["doesContainItem"]
      111 DUPCLOSURE                       R22 K50 [PROTO_20]
      112 SETTABLEKS                       R22 R21 K51 ["isDynamic"]
      114 DUPCLOSURE                       R22 K52 [PROTO_21]
      115 SETTABLEKS                       R22 R21 K53 ["getOriginalCFrameMap"]
      117 DUPCLOSURE                       R22 K54 [PROTO_22]
      118 SETTABLEKS                       R22 R21 K55 ["getLocalBoundingBox"]
      120 DUPCLOSURE                       R22 K56 [PROTO_23]
      121 SETTABLEKS                       R22 R21 K57 ["getBoundingBoxDiscrepancy"]
      123 DUPCLOSURE                       R22 K58 [PROTO_24]
      124 SETTABLEKS                       R22 R21 K59 ["getObjectsToTransform"]
      126 DUPCLOSURE                       R22 K60 [PROTO_25]
      127 CAPTURE                          VAL R5
      128 SETTABLEKS                       R22 R21 K61 ["getProceduralModels"]
      130 DUPCLOSURE                       R22 K62 [PROTO_26]
      131 SETTABLEKS                       R22 R21 K63 ["getRootMapping"]
      133 DUPCLOSURE                       R22 K64 [PROTO_27]
      134 SETTABLEKS                       R22 R21 K65 ["getBasisObject"]
      136 DUPCLOSURE                       R22 K66 [PROTO_28]
      137 SETTABLEKS                       R22 R21 K67 ["getAllAttachments"]
      139 DUPCLOSURE                       R22 K68 [PROTO_29]
      140 CAPTURE                          VAL R22
      141 DUPCLOSURE                       R23 K69 [PROTO_30]
      142 CAPTURE                          VAL R22
      143 DUPCLOSURE                       R24 K70 [PROTO_31]
      144 CAPTURE                          VAL R23
      145 SETTABLEKS                       R24 R21 K71 ["getRootModelMapping"]
      147 DUPCLOSURE                       R24 K72 [PROTO_32]
      148 DUPCLOSURE                       R25 K73 [PROTO_33]
      149 CAPTURE                          VAL R5
      150 SETTABLEKS                       R25 R21 K74 ["isSelectionSinglePart_DEPRECATED"]
      152 DUPCLOSURE                       R25 K75 [PROTO_34]
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R2
      155 SETTABLEKS                       R25 R21 K10 ["getSingleSelectionInterface"]
      157 RETURN                           R21 1
