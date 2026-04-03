PROTO_0:
        0 JUMPIFNOT                        R2 ; [+2]
        1 MUL                              R3 R2 R0
        2 JUMPIF                           R3 ; [+1]
        3 MOVE                             R3 R0
        4 GETTABLEKS                       R4 R1 K0 ["X"]
        6 GETTABLEKS                       R5 R1 K1 ["Y"]
        8 GETTABLEKS                       R6 R1 K2 ["Z"]
       10 NAMECALL                         R7 R3 K3 ["GetComponents"]
       12 CALL                             R7 1 12
       13 MUL                              R23 R4 R10
       14 FASTCALL1                        MATH_ABS R23 ; [+2]
       15 GETIMPORT                        R22 K7 [math.abs]
       17 CALL                             R22 1 1
       18 MUL                              R24 R5 R11
       19 FASTCALL1                        MATH_ABS R24 ; [+2]
       20 GETIMPORT                        R23 K7 [math.abs]
       22 CALL                             R23 1 1
       23 ADD                              R21 R22 R23
       24 MUL                              R23 R6 R12
       25 FASTCALL1                        MATH_ABS R23 ; [+2]
       26 GETIMPORT                        R22 K7 [math.abs]
       28 CALL                             R22 1 1
       29 ADD                              R20 R21 R22
       30 MULK                             R19 R20 K4 [0.5]
       31 MUL                              R24 R4 R13
       32 FASTCALL1                        MATH_ABS R24 ; [+2]
       33 GETIMPORT                        R23 K7 [math.abs]
       35 CALL                             R23 1 1
       36 MUL                              R25 R5 R14
       37 FASTCALL1                        MATH_ABS R25 ; [+2]
       38 GETIMPORT                        R24 K7 [math.abs]
       40 CALL                             R24 1 1
       41 ADD                              R22 R23 R24
       42 MUL                              R24 R6 R15
       43 FASTCALL1                        MATH_ABS R24 ; [+2]
       44 GETIMPORT                        R23 K7 [math.abs]
       46 CALL                             R23 1 1
       47 ADD                              R21 R22 R23
       48 MULK                             R20 R21 K4 [0.5]
       49 MUL                              R25 R4 R16
       50 FASTCALL1                        MATH_ABS R25 ; [+2]
       51 GETIMPORT                        R24 K7 [math.abs]
       53 CALL                             R24 1 1
       54 MUL                              R26 R5 R17
       55 FASTCALL1                        MATH_ABS R26 ; [+2]
       56 GETIMPORT                        R25 K7 [math.abs]
       58 CALL                             R25 1 1
       59 ADD                              R23 R24 R25
       60 MUL                              R25 R6 R18
       61 FASTCALL1                        MATH_ABS R25 ; [+2]
       62 GETIMPORT                        R24 K7 [math.abs]
       64 CALL                             R24 1 1
       65 ADD                              R22 R23 R24
       66 MULK                             R21 R22 K4 [0.5]
       67 GETTABLEKS                       R22 R3 K0 ["X"]
       69 GETTABLEKS                       R23 R3 K1 ["Y"]
       71 GETTABLEKS                       R24 R3 K2 ["Z"]
       73 SUB                              R25 R22 R19
       74 ADD                              R26 R22 R19
       75 SUB                              R27 R23 R20
       76 ADD                              R28 R23 R20
       77 SUB                              R29 R24 R21
       78 ADD                              R30 R24 R21
       79 RETURN                           R25 6

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+4]
        1 NAMECALL                         R2 R1 K0 ["Inverse"]
        3 CALL                             R2 1 1
        4 JUMPIF                           R2 ; [+1]
        5 LOADNIL                          R2
        6 LOADK                            R3 K1 [∞]
        7 LOADK                            R4 K2 [-∞]
        8 LOADK                            R5 K1 [∞]
        9 LOADK                            R6 K2 [-∞]
       10 LOADK                            R7 K1 [∞]
       11 LOADK                            R8 K2 [-∞]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R9 R10 K3 ["Terrain"]
       15 GETIMPORT                        R10 K5 [ipairs]
       17 MOVE                             R11 R0
       18 CALL                             R10 1 3
       19 FORGPREP_INEXT                   R10
       20 LOADK                            R17 K6 ["Model"]
       21 NAMECALL                         R15 R14 K7 ["IsA"]
       23 CALL                             R15 2 1
       24 JUMPIF                           R15 ; [+7]
       25 LOADK                            R18 K8 ["BasePart"]
       26 NAMECALL                         R16 R14 K7 ["IsA"]
       28 CALL                             R16 2 1
       29 JUMPIFNOT                        R16 ; [+69]
       30 JUMPIFEQ                         R14 R9 ; [+68]
       32 LOADNIL                          R16
       33 LOADNIL                          R17
       34 JUMPIFNOT                        R15 ; [+6]
       35 NAMECALL                         R18 R14 K9 ["GetBoundingBox"]
       37 CALL                             R18 1 2
       38 MOVE                             R16 R18
       39 MOVE                             R17 R19
       40 JUMP                             ; [+4]
       41 GETTABLEKS                       R16 R14 K10 ["CFrame"]
       43 GETTABLEKS                       R17 R14 K11 ["Size"]
       45 GETUPVAL                         R18 1
       46 MOVE                             R19 R16
       47 MOVE                             R20 R17
       48 MOVE                             R21 R2
       49 CALL                             R18 3 6
       50 FASTCALL2                        MATH_MIN R3 R18 ; [+5]
       52 MOVE                             R25 R3
       53 MOVE                             R26 R18
       54 GETIMPORT                        R24 K14 [math.min]
       56 CALL                             R24 2 1
       57 MOVE                             R3 R24
       58 FASTCALL2                        MATH_MAX R4 R19 ; [+5]
       60 MOVE                             R25 R4
       61 MOVE                             R26 R19
       62 GETIMPORT                        R24 K16 [math.max]
       64 CALL                             R24 2 1
       65 MOVE                             R4 R24
       66 FASTCALL2                        MATH_MIN R5 R20 ; [+5]
       68 MOVE                             R25 R5
       69 MOVE                             R26 R20
       70 GETIMPORT                        R24 K14 [math.min]
       72 CALL                             R24 2 1
       73 MOVE                             R5 R24
       74 FASTCALL2                        MATH_MAX R6 R21 ; [+5]
       76 MOVE                             R25 R6
       77 MOVE                             R26 R21
       78 GETIMPORT                        R24 K16 [math.max]
       80 CALL                             R24 2 1
       81 MOVE                             R6 R24
       82 FASTCALL2                        MATH_MIN R7 R22 ; [+5]
       84 MOVE                             R25 R7
       85 MOVE                             R26 R22
       86 GETIMPORT                        R24 K14 [math.min]
       88 CALL                             R24 2 1
       89 MOVE                             R7 R24
       90 FASTCALL2                        MATH_MAX R8 R23 ; [+5]
       92 MOVE                             R25 R8
       93 MOVE                             R26 R23
       94 GETIMPORT                        R24 K16 [math.max]
       96 CALL                             R24 2 1
       97 MOVE                             R8 R24
       98 JUMP                             ; [+64]
       99 LOADK                            R18 K17 ["Attachment"]
      100 NAMECALL                         R16 R14 K7 ["IsA"]
      102 CALL                             R16 2 1
      103 JUMPIFNOT                        R16 ; [+59]
      104 GETTABLEKS                       R18 R14 K18 ["WorldPosition"]
      106 NAMECALL                         R16 R1 K19 ["PointToObjectSpace"]
      108 CALL                             R16 2 1
      109 GETTABLEKS                       R17 R16 K20 ["X"]
      111 GETTABLEKS                       R18 R16 K21 ["Y"]
      113 GETTABLEKS                       R19 R16 K22 ["Z"]
      115 FASTCALL2                        MATH_MIN R3 R17 ; [+5]
      117 MOVE                             R21 R3
      118 MOVE                             R22 R17
      119 GETIMPORT                        R20 K14 [math.min]
      121 CALL                             R20 2 1
      122 MOVE                             R3 R20
      123 FASTCALL2                        MATH_MAX R4 R17 ; [+5]
      125 MOVE                             R21 R4
      126 MOVE                             R22 R17
      127 GETIMPORT                        R20 K16 [math.max]
      129 CALL                             R20 2 1
      130 MOVE                             R4 R20
      131 FASTCALL2                        MATH_MIN R5 R18 ; [+5]
      133 MOVE                             R21 R5
      134 MOVE                             R22 R18
      135 GETIMPORT                        R20 K14 [math.min]
      137 CALL                             R20 2 1
      138 MOVE                             R5 R20
      139 FASTCALL2                        MATH_MAX R6 R18 ; [+5]
      141 MOVE                             R21 R6
      142 MOVE                             R22 R18
      143 GETIMPORT                        R20 K16 [math.max]
      145 CALL                             R20 2 1
      146 MOVE                             R6 R20
      147 FASTCALL2                        MATH_MIN R7 R19 ; [+5]
      149 MOVE                             R21 R7
      150 MOVE                             R22 R19
      151 GETIMPORT                        R20 K14 [math.min]
      153 CALL                             R20 2 1
      154 MOVE                             R7 R20
      155 FASTCALL2                        MATH_MAX R8 R19 ; [+5]
      157 MOVE                             R21 R8
      158 MOVE                             R22 R19
      159 GETIMPORT                        R20 K16 [math.max]
      161 CALL                             R20 2 1
      162 MOVE                             R8 R20
      163 FORGLOOP                         R10 2 [inext] ; [-144]
      165 LOADK                            R12 K23 [0.5]
      166 ADD                              R13 R3 R4
      167 MUL                              R11 R12 R13
      168 LOADK                            R13 K23 [0.5]
      169 ADD                              R14 R5 R6
      170 MUL                              R12 R13 R14
      171 LOADK                            R14 K23 [0.5]
      172 ADD                              R15 R7 R8
      173 MUL                              R13 R14 R15
      174 FASTCALL                         VECTOR ; [+2]
      175 GETIMPORT                        R10 K26 [Vector3.new]
      177 CALL                             R10 3 1
      178 SUB                              R12 R4 R3
      179 SUB                              R13 R6 R5
      180 SUB                              R14 R8 R7
      181 FASTCALL                         VECTOR ; [+2]
      182 GETIMPORT                        R11 K26 [Vector3.new]
      184 CALL                             R11 3 1
      185 RETURN                           R10 2

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+4]
        1 NAMECALL                         R2 R1 K0 ["Inverse"]
        3 CALL                             R2 1 1
        4 JUMPIF                           R2 ; [+1]
        5 LOADNIL                          R2
        6 LOADK                            R3 K1 [∞]
        7 LOADK                            R4 K2 [-∞]
        8 LOADK                            R5 K1 [∞]
        9 LOADK                            R6 K2 [-∞]
       10 LOADK                            R7 K1 [∞]
       11 LOADK                            R8 K2 [-∞]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R9 R10 K3 ["Terrain"]
       15 NEWTABLE                         R10 0 0
       17 GETIMPORT                        R11 K5 [ipairs]
       19 MOVE                             R12 R0
       20 CALL                             R11 1 3
       21 FORGPREP_INEXT                   R11
       22 LOADK                            R18 K6 ["Model"]
       23 NAMECALL                         R16 R15 K7 ["IsA"]
       25 CALL                             R16 2 1
       26 JUMPIF                           R16 ; [+7]
       27 LOADK                            R19 K8 ["BasePart"]
       28 NAMECALL                         R17 R15 K7 ["IsA"]
       30 CALL                             R17 2 1
       31 JUMPIFNOT                        R17 ; [+95]
       32 JUMPIFEQ                         R15 R9 ; [+94]
       34 LOADNIL                          R17
       35 LOADNIL                          R18
       36 JUMPIFNOT                        R16 ; [+6]
       37 NAMECALL                         R19 R15 K9 ["GetBoundingBox"]
       39 CALL                             R19 1 2
       40 MOVE                             R17 R19
       41 MOVE                             R18 R20
       42 JUMP                             ; [+4]
       43 GETTABLEKS                       R17 R15 K10 ["CFrame"]
       45 GETTABLEKS                       R18 R15 K11 ["Size"]
       47 GETUPVAL                         R19 1
       48 MOVE                             R20 R17
       49 MOVE                             R21 R18
       50 MOVE                             R22 R2
       51 CALL                             R19 3 6
       52 FASTCALL2                        MATH_MIN R3 R19 ; [+5]
       54 MOVE                             R26 R3
       55 MOVE                             R27 R19
       56 GETIMPORT                        R25 K14 [math.min]
       58 CALL                             R25 2 1
       59 MOVE                             R3 R25
       60 FASTCALL2                        MATH_MAX R4 R20 ; [+5]
       62 MOVE                             R26 R4
       63 MOVE                             R27 R20
       64 GETIMPORT                        R25 K16 [math.max]
       66 CALL                             R25 2 1
       67 MOVE                             R4 R25
       68 FASTCALL2                        MATH_MIN R5 R21 ; [+5]
       70 MOVE                             R26 R5
       71 MOVE                             R27 R21
       72 GETIMPORT                        R25 K14 [math.min]
       74 CALL                             R25 2 1
       75 MOVE                             R5 R25
       76 FASTCALL2                        MATH_MAX R6 R22 ; [+5]
       78 MOVE                             R26 R6
       79 MOVE                             R27 R22
       80 GETIMPORT                        R25 K16 [math.max]
       82 CALL                             R25 2 1
       83 MOVE                             R6 R25
       84 FASTCALL2                        MATH_MIN R7 R23 ; [+5]
       86 MOVE                             R26 R7
       87 MOVE                             R27 R23
       88 GETIMPORT                        R25 K14 [math.min]
       90 CALL                             R25 2 1
       91 MOVE                             R7 R25
       92 FASTCALL2                        MATH_MAX R8 R24 ; [+5]
       94 MOVE                             R26 R8
       95 MOVE                             R27 R24
       96 GETIMPORT                        R25 K16 [math.max]
       98 CALL                             R25 2 1
       99 MOVE                             R8 R25
      100 DUPTABLE                         R25 K19 [{"offset", "size"}]
      101 LOADK                            R28 K20 [0.5]
      102 ADD                              R29 R19 R20
      103 MUL                              R27 R28 R29
      104 LOADK                            R29 K20 [0.5]
      105 ADD                              R30 R21 R22
      106 MUL                              R28 R29 R30
      107 LOADK                            R30 K20 [0.5]
      108 ADD                              R31 R23 R24
      109 MUL                              R29 R30 R31
      110 FASTCALL                         VECTOR ; [+2]
      111 GETIMPORT                        R26 K23 [Vector3.new]
      113 CALL                             R26 3 1
      114 SETTABLEKS                       R26 R25 K17 ["offset"]
      116 SUB                              R27 R20 R19
      117 SUB                              R28 R22 R21
      118 SUB                              R29 R24 R23
      119 FASTCALL                         VECTOR ; [+2]
      120 GETIMPORT                        R26 K23 [Vector3.new]
      122 CALL                             R26 3 1
      123 SETTABLEKS                       R26 R25 K18 ["size"]
      125 SETTABLE                         R25 R10 R15
      126 JUMP                             ; [+64]
      127 LOADK                            R19 K24 ["Attachment"]
      128 NAMECALL                         R17 R15 K7 ["IsA"]
      130 CALL                             R17 2 1
      131 JUMPIFNOT                        R17 ; [+59]
      132 GETTABLEKS                       R19 R15 K25 ["WorldPosition"]
      134 NAMECALL                         R17 R1 K26 ["PointToObjectSpace"]
      136 CALL                             R17 2 1
      137 GETTABLEKS                       R18 R17 K27 ["X"]
      139 GETTABLEKS                       R19 R17 K28 ["Y"]
      141 GETTABLEKS                       R20 R17 K29 ["Z"]
      143 FASTCALL2                        MATH_MIN R3 R18 ; [+5]
      145 MOVE                             R22 R3
      146 MOVE                             R23 R18
      147 GETIMPORT                        R21 K14 [math.min]
      149 CALL                             R21 2 1
      150 MOVE                             R3 R21
      151 FASTCALL2                        MATH_MAX R4 R18 ; [+5]
      153 MOVE                             R22 R4
      154 MOVE                             R23 R18
      155 GETIMPORT                        R21 K16 [math.max]
      157 CALL                             R21 2 1
      158 MOVE                             R4 R21
      159 FASTCALL2                        MATH_MIN R5 R19 ; [+5]
      161 MOVE                             R22 R5
      162 MOVE                             R23 R19
      163 GETIMPORT                        R21 K14 [math.min]
      165 CALL                             R21 2 1
      166 MOVE                             R5 R21
      167 FASTCALL2                        MATH_MAX R6 R19 ; [+5]
      169 MOVE                             R22 R6
      170 MOVE                             R23 R19
      171 GETIMPORT                        R21 K16 [math.max]
      173 CALL                             R21 2 1
      174 MOVE                             R6 R21
      175 FASTCALL2                        MATH_MIN R7 R20 ; [+5]
      177 MOVE                             R22 R7
      178 MOVE                             R23 R20
      179 GETIMPORT                        R21 K14 [math.min]
      181 CALL                             R21 2 1
      182 MOVE                             R7 R21
      183 FASTCALL2                        MATH_MAX R8 R20 ; [+5]
      185 MOVE                             R22 R8
      186 MOVE                             R23 R20
      187 GETIMPORT                        R21 K16 [math.max]
      189 CALL                             R21 2 1
      190 MOVE                             R8 R21
      191 FORGLOOP                         R11 2 [inext] ; [-170]
      193 LOADK                            R13 K20 [0.5]
      194 ADD                              R14 R3 R4
      195 MUL                              R12 R13 R14
      196 LOADK                            R14 K20 [0.5]
      197 ADD                              R15 R5 R6
      198 MUL                              R13 R14 R15
      199 LOADK                            R15 K20 [0.5]
      200 ADD                              R16 R7 R8
      201 MUL                              R14 R15 R16
      202 FASTCALL                         VECTOR ; [+2]
      203 GETIMPORT                        R11 K23 [Vector3.new]
      205 CALL                             R11 3 1
      206 SUB                              R13 R4 R3
      207 SUB                              R14 R6 R5
      208 SUB                              R15 R8 R7
      209 FASTCALL                         VECTOR ; [+2]
      210 GETIMPORT                        R12 K23 [Vector3.new]
      212 CALL                             R12 3 1
      213 MOVE                             R13 R11
      214 MOVE                             R14 R12
      215 MOVE                             R15 R10
      216 RETURN                           R13 3

PROTO_3:
        0 JUMPIFNOT                        R2 ; [+4]
        1 NAMECALL                         R3 R2 K0 ["Inverse"]
        3 CALL                             R3 1 1
        4 JUMPIF                           R3 ; [+1]
        5 LOADNIL                          R3
        6 LOADK                            R4 K1 [∞]
        7 LOADK                            R5 K2 [-∞]
        8 LOADK                            R6 K1 [∞]
        9 LOADK                            R7 K2 [-∞]
       10 LOADK                            R8 K1 [∞]
       11 LOADK                            R9 K2 [-∞]
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R10 R11 K3 ["Terrain"]
       15 GETIMPORT                        R11 K5 [ipairs]
       17 MOVE                             R12 R0
       18 CALL                             R11 1 3
       19 FORGPREP_INEXT                   R11
       20 JUMPIFEQ                         R15 R10 ; [+56]
       22 GETUPVAL                         R16 1
       23 GETTABLEKS                       R17 R15 K6 ["CFrame"]
       25 GETTABLEKS                       R18 R15 K7 ["Size"]
       27 MOVE                             R19 R3
       28 CALL                             R16 3 6
       29 FASTCALL2                        MATH_MIN R4 R16 ; [+5]
       31 MOVE                             R23 R4
       32 MOVE                             R24 R16
       33 GETIMPORT                        R22 K10 [math.min]
       35 CALL                             R22 2 1
       36 MOVE                             R4 R22
       37 FASTCALL2                        MATH_MAX R5 R17 ; [+5]
       39 MOVE                             R23 R5
       40 MOVE                             R24 R17
       41 GETIMPORT                        R22 K12 [math.max]
       43 CALL                             R22 2 1
       44 MOVE                             R5 R22
       45 FASTCALL2                        MATH_MIN R6 R18 ; [+5]
       47 MOVE                             R23 R6
       48 MOVE                             R24 R18
       49 GETIMPORT                        R22 K10 [math.min]
       51 CALL                             R22 2 1
       52 MOVE                             R6 R22
       53 FASTCALL2                        MATH_MAX R7 R19 ; [+5]
       55 MOVE                             R23 R7
       56 MOVE                             R24 R19
       57 GETIMPORT                        R22 K12 [math.max]
       59 CALL                             R22 2 1
       60 MOVE                             R7 R22
       61 FASTCALL2                        MATH_MIN R8 R20 ; [+5]
       63 MOVE                             R23 R8
       64 MOVE                             R24 R20
       65 GETIMPORT                        R22 K10 [math.min]
       67 CALL                             R22 2 1
       68 MOVE                             R8 R22
       69 FASTCALL2                        MATH_MAX R9 R21 ; [+5]
       71 MOVE                             R23 R9
       72 MOVE                             R24 R21
       73 GETIMPORT                        R22 K12 [math.max]
       75 CALL                             R22 2 1
       76 MOVE                             R9 R22
       77 FORGLOOP                         R11 2 [inext] ; [-58]
       79 GETIMPORT                        R11 K5 [ipairs]
       81 MOVE                             R12 R1
       82 CALL                             R11 1 3
       83 FORGPREP_INEXT                   R11
       84 GETTABLEKS                       R18 R15 K13 ["WorldPosition"]
       86 NAMECALL                         R16 R2 K14 ["PointToObjectSpace"]
       88 CALL                             R16 2 1
       89 GETTABLEKS                       R17 R16 K15 ["X"]
       91 GETTABLEKS                       R18 R16 K16 ["Y"]
       93 GETTABLEKS                       R19 R16 K17 ["Z"]
       95 FASTCALL2                        MATH_MIN R4 R17 ; [+5]
       97 MOVE                             R21 R4
       98 MOVE                             R22 R17
       99 GETIMPORT                        R20 K10 [math.min]
      101 CALL                             R20 2 1
      102 MOVE                             R4 R20
      103 FASTCALL2                        MATH_MAX R5 R17 ; [+5]
      105 MOVE                             R21 R5
      106 MOVE                             R22 R17
      107 GETIMPORT                        R20 K12 [math.max]
      109 CALL                             R20 2 1
      110 MOVE                             R5 R20
      111 FASTCALL2                        MATH_MIN R6 R18 ; [+5]
      113 MOVE                             R21 R6
      114 MOVE                             R22 R18
      115 GETIMPORT                        R20 K10 [math.min]
      117 CALL                             R20 2 1
      118 MOVE                             R6 R20
      119 FASTCALL2                        MATH_MAX R7 R18 ; [+5]
      121 MOVE                             R21 R7
      122 MOVE                             R22 R18
      123 GETIMPORT                        R20 K12 [math.max]
      125 CALL                             R20 2 1
      126 MOVE                             R7 R20
      127 FASTCALL2                        MATH_MIN R8 R19 ; [+5]
      129 MOVE                             R21 R8
      130 MOVE                             R22 R19
      131 GETIMPORT                        R20 K10 [math.min]
      133 CALL                             R20 2 1
      134 MOVE                             R8 R20
      135 FASTCALL2                        MATH_MAX R9 R19 ; [+5]
      137 MOVE                             R21 R9
      138 MOVE                             R22 R19
      139 GETIMPORT                        R20 K12 [math.max]
      141 CALL                             R20 2 1
      142 MOVE                             R9 R20
      143 FORGLOOP                         R11 2 [inext] ; [-60]
      145 LOADK                            R13 K18 [0.5]
      146 ADD                              R14 R4 R5
      147 MUL                              R12 R13 R14
      148 LOADK                            R14 K18 [0.5]
      149 ADD                              R15 R6 R7
      150 MUL                              R13 R14 R15
      151 LOADK                            R15 K18 [0.5]
      152 ADD                              R16 R8 R9
      153 MUL                              R14 R15 R16
      154 FASTCALL                         VECTOR ; [+2]
      155 GETIMPORT                        R11 K21 [Vector3.new]
      157 CALL                             R11 3 1
      158 SUB                              R13 R5 R4
      159 SUB                              R14 R7 R6
      160 SUB                              R15 R9 R8
      161 FASTCALL                         VECTOR ; [+2]
      162 GETIMPORT                        R12 K21 [Vector3.new]
      164 CALL                             R12 3 1
      165 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 NEWTABLE                         R2 4 0
       10 DUPCLOSURE                       R3 K5 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R3 R2 K6 ["fromObjects"]
       15 DUPCLOSURE                       R3 K7 [PROTO_2]
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K8 ["fromObjectsComputeAll"]
       20 DUPCLOSURE                       R3 K9 [PROTO_3]
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K10 ["fromPartsAndAttachments"]
       25 RETURN                           R2 1
