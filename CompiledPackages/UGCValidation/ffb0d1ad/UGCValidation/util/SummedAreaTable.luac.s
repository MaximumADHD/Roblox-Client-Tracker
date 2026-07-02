PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R3 R3 K1 ["X"]
        4 JUMPIFLE                         R3 R1 ; [+13]
        6 GETTABLEKS                       R3 R0 K0 ["size"]
        8 GETTABLEKS                       R3 R3 K2 ["Y"]
       10 JUMPIFLE                         R3 R2 ; [+7]
       12 LOADN                            R3 0
       13 JUMPIFLT                         R1 R3 ; [+4]
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R2 R3 ; [+8]
       18 GETIMPORT                        R3 K5 [Color3.fromRGB]
       20 LOADN                            R4 0
       21 LOADN                            R5 0
       22 LOADN                            R6 0
       23 CALL                             R3 3 -1
       24 RETURN                           R3 -1
       25 GETTABLEKS                       R5 R0 K0 ["size"]
       27 GETTABLEKS                       R5 R5 K1 ["X"]
       29 MUL                              R4 R2 R5
       30 ADD                              R3 R1 R4
       31 MULK                             R4 R3 K6 [4]
       32 GETIMPORT                        R5 K5 [Color3.fromRGB]
       34 GETTABLEKS                       R7 R0 K7 ["buffer"]
       36 FASTCALL2                        BUFFER_READU8 R7 R4 ; [+4]
       38 MOVE                             R8 R4
       39 GETIMPORT                        R6 K9 [buffer.readu8]
       41 CALL                             R6 2 1
       42 GETTABLEKS                       R8 R0 K7 ["buffer"]
       44 ADDK                             R9 R4 K10 [1]
       45 FASTCALL2                        BUFFER_READU8 R8 R9 ; [+3]
       47 GETIMPORT                        R7 K9 [buffer.readu8]
       49 CALL                             R7 2 1
       50 GETTABLEKS                       R9 R0 K7 ["buffer"]
       52 ADDK                             R10 R4 K11 [2]
       53 FASTCALL2                        BUFFER_READU8 R9 R10 ; [+3]
       55 GETIMPORT                        R8 K9 [buffer.readu8]
       57 CALL                             R8 2 1
       58 CALL                             R5 3 -1
       59 RETURN                           R5 -1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R4 K4 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R5 R0 K5 ["Size"]
       15 NAMECALL                         R2 R0 K6 ["ReadPixelsBuffer"]
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R1 K7 ["buffer"]
       20 GETTABLEKS                       R2 R0 K5 ["Size"]
       22 SETTABLEKS                       R2 R1 K8 ["size"]
       24 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["size"]
       10 SETTABLEKS                       R1 R2 K3 ["calculateWeightFromColor3"]
       12 GETIMPORT                        R3 K6 [buffer.create]
       14 GETTABLEKS                       R6 R0 K8 ["X"]
       16 GETTABLEKS                       R7 R0 K9 ["Y"]
       18 MUL                              R5 R6 R7
       19 MULK                             R4 R5 K7 [4]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K4 ["buffer"]
       23 RETURN                           R2 1

PROTO_3:
        0 LOADN                            R3 0
        1 JUMPIFLT                         R1 R3 ; [+4]
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R2 R3 ; [+3]
        6 LOADN                            R3 0
        7 RETURN                           R3 1
        8 GETTABLEKS                       R6 R0 K1 ["size"]
       10 GETTABLEKS                       R6 R6 K2 ["X"]
       12 SUBK                             R5 R6 K0 [1]
       13 FASTCALL2                        MATH_MIN R1 R5 ; [+4]
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K5 [math.min]
       18 CALL                             R3 2 1
       19 MOVE                             R1 R3
       20 GETTABLEKS                       R6 R0 K1 ["size"]
       22 GETTABLEKS                       R6 R6 K6 ["Y"]
       24 SUBK                             R5 R6 K0 [1]
       25 FASTCALL2                        MATH_MIN R2 R5 ; [+4]
       27 MOVE                             R4 R2
       28 GETIMPORT                        R3 K5 [math.min]
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 GETTABLEKS                       R5 R0 K1 ["size"]
       34 GETTABLEKS                       R5 R5 K2 ["X"]
       36 MUL                              R4 R2 R5
       37 ADD                              R3 R1 R4
       38 GETTABLEKS                       R5 R0 K7 ["buffer"]
       40 MULK                             R6 R3 K8 [4]
       41 FASTCALL2                        BUFFER_READU32 R5 R6 ; [+3]
       43 GETIMPORT                        R4 K10 [buffer.readu32]
       45 CALL                             R4 2 1
       46 RETURN                           R4 1

PROTO_4:
        0 LOADB                            R5 0
        1 GETTABLEKS                       R6 R0 K0 ["size"]
        3 GETTABLEKS                       R6 R6 K1 ["X"]
        5 JUMPIFNOTLT                      R1 R6 ; [+17]
        7 LOADB                            R5 0
        8 GETTABLEKS                       R6 R0 K0 ["size"]
       10 GETTABLEKS                       R6 R6 K2 ["Y"]
       12 JUMPIFNOTLT                      R2 R6 ; [+10]
       14 LOADB                            R5 0
       15 LOADN                            R6 0
       16 JUMPIFNOTLE                      R6 R1 ; [+6]
       18 LOADN                            R6 0
       19 JUMPIFLE                         R6 R2 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 FASTCALL1                        ASSERT R5 ; [+2]
       24 GETIMPORT                        R4 K4 [assert]
       26 CALL                             R4 1 0
       27 GETTABLEKS                       R6 R0 K0 ["size"]
       29 GETTABLEKS                       R6 R6 K1 ["X"]
       31 MUL                              R5 R2 R6
       32 ADD                              R4 R1 R5
       33 GETTABLEKS                       R6 R0 K5 ["buffer"]
       35 MULK                             R7 R4 K6 [4]
       36 FASTCALL3                        BUFFER_WRITEU32 R6 R7 R3
       38 MOVE                             R8 R3
       39 GETIMPORT                        R5 K8 [buffer.writeu32]
       41 CALL                             R5 3 0
       42 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R5 R2 K1 ["size"]
        7 GETTABLEKS                       R6 R0 K1 ["size"]
        9 JUMPIFEQ                         R5 R6 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 FASTCALL1                        ASSERT R4 ; [+2]
       14 GETIMPORT                        R3 K3 [assert]
       16 CALL                             R3 1 0
       17 LOADN                            R5 0
       18 GETTABLEKS                       R6 R0 K1 ["size"]
       20 GETTABLEKS                       R6 R6 K5 ["Y"]
       22 SUBK                             R3 R6 K4 [1]
       23 LOADN                            R4 1
       24 FORNPREP                         R3
       25 LOADN                            R8 0
       26 GETTABLEKS                       R9 R0 K1 ["size"]
       28 GETTABLEKS                       R9 R9 K6 ["X"]
       30 SUBK                             R6 R9 K4 [1]
       31 LOADN                            R7 1
       32 FORNPREP                         R6
       33 GETTABLEKS                       R9 R0 K7 ["calculateWeightFromColor3"]
       35 MOVE                             R12 R8
       36 MOVE                             R13 R5
       37 NAMECALL                         R10 R2 K8 ["ReadPixel"]
       39 CALL                             R10 3 -1
       40 CALL                             R9 -1 1
       41 SUBK                             R12 R8 K4 [1]
       42 MOVE                             R13 R5
       43 NAMECALL                         R10 R0 K9 ["ReadValue"]
       45 CALL                             R10 3 1
       46 MOVE                             R13 R8
       47 SUBK                             R14 R5 K4 [1]
       48 NAMECALL                         R11 R0 K9 ["ReadValue"]
       50 CALL                             R11 3 1
       51 SUBK                             R14 R8 K4 [1]
       52 SUBK                             R15 R5 K4 [1]
       53 NAMECALL                         R12 R0 K9 ["ReadValue"]
       55 CALL                             R12 3 1
       56 ADD                              R15 R9 R10
       57 ADD                              R14 R15 R11
       58 SUB                              R13 R14 R12
       59 MOVE                             R16 R8
       60 MOVE                             R17 R5
       61 MOVE                             R18 R13
       62 NAMECALL                         R14 R0 K10 ["WriteValue"]
       64 CALL                             R14 4 0
       65 FORNLOOP                         R6
       66 FORNLOOP                         R3
       67 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R4 K2 [Vector2.one]
        2 SUB                              R3 R1 R4
        3 ADD                              R5 R1 R2
        4 GETIMPORT                        R6 K2 [Vector2.one]
        6 SUB                              R4 R5 R6
        7 GETIMPORT                        R5 K4 [Vector2.new]
        9 GETTABLEKS                       R6 R4 K5 ["X"]
       11 GETTABLEKS                       R7 R3 K6 ["Y"]
       13 CALL                             R5 2 1
       14 GETIMPORT                        R6 K4 [Vector2.new]
       16 GETTABLEKS                       R7 R3 K5 ["X"]
       18 GETTABLEKS                       R8 R4 K6 ["Y"]
       20 CALL                             R6 2 1
       21 GETTABLEKS                       R12 R4 K5 ["X"]
       23 GETTABLEKS                       R13 R4 K6 ["Y"]
       25 NAMECALL                         R10 R0 K7 ["ReadValue"]
       27 CALL                             R10 3 1
       28 GETTABLEKS                       R13 R5 K5 ["X"]
       30 GETTABLEKS                       R14 R5 K6 ["Y"]
       32 NAMECALL                         R11 R0 K7 ["ReadValue"]
       34 CALL                             R11 3 1
       35 SUB                              R9 R10 R11
       36 GETTABLEKS                       R12 R6 K5 ["X"]
       38 GETTABLEKS                       R13 R6 K6 ["Y"]
       40 NAMECALL                         R10 R0 K7 ["ReadValue"]
       42 CALL                             R10 3 1
       43 SUB                              R8 R9 R10
       44 GETTABLEKS                       R11 R3 K5 ["X"]
       46 GETTABLEKS                       R12 R3 K6 ["Y"]
       48 NAMECALL                         R9 R0 K7 ["ReadValue"]
       50 CALL                             R9 3 1
       51 ADD                              R7 R8 R9
       52 RETURN                           R7 1

PROTO_7:
        0 LOADN                            R3 0
        1 ADD                              R4 R1 R2
        2 NAMECALL                         R5 R1 K0 ["Ceil"]
        4 CALL                             R5 1 1
        5 NAMECALL                         R6 R4 K1 ["Floor"]
        7 CALL                             R6 1 1
        8 SUB                              R7 R6 R5
        9 GETTABLEKS                       R8 R7 K2 ["X"]
       11 LOADN                            R9 0
       12 JUMPIFNOTLT                      R9 R8 ; [+12]
       14 GETTABLEKS                       R8 R7 K3 ["Y"]
       16 LOADN                            R9 0
       17 JUMPIFNOTLT                      R9 R8 ; [+7]
       19 MOVE                             R10 R5
       20 MOVE                             R11 R7
       21 NAMECALL                         R8 R0 K4 ["GetAreaDensity"]
       23 CALL                             R8 3 1
       24 ADD                              R3 R3 R8
       25 SUB                              R8 R5 R1
       26 SUB                              R9 R4 R6
       27 GETTABLEKS                       R10 R7 K3 ["Y"]
       29 LOADN                            R11 0
       30 JUMPIFNOTLT                      R11 R10 ; [+71]
       32 GETIMPORT                        R10 K7 [Vector2.new]
       34 LOADN                            R11 1
       35 GETTABLEKS                       R12 R7 K3 ["Y"]
       37 CALL                             R10 2 1
       38 GETTABLEKS                       R12 R1 K2 ["X"]
       40 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       41 GETIMPORT                        R11 K10 [math.floor]
       43 CALL                             R11 1 1
       44 GETTABLEKS                       R13 R4 K2 ["X"]
       46 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       47 GETIMPORT                        R12 K10 [math.floor]
       49 CALL                             R12 1 1
       50 JUMPIFNOTLT                      R11 R12 ; [+33]
       52 GETIMPORT                        R12 K7 [Vector2.new]
       54 LOADN                            R13 -1
       55 LOADN                            R14 0
       56 CALL                             R12 2 1
       57 ADD                              R11 R5 R12
       58 GETTABLEKS                       R12 R8 K2 ["X"]
       60 MOVE                             R16 R11
       61 MOVE                             R17 R10
       62 NAMECALL                         R14 R0 K4 ["GetAreaDensity"]
       64 CALL                             R14 3 1
       65 MUL                              R13 R14 R12
       66 ADD                              R3 R3 R13
       67 GETIMPORT                        R13 K7 [Vector2.new]
       69 GETTABLEKS                       R14 R7 K2 ["X"]
       71 LOADN                            R15 0
       72 CALL                             R13 2 1
       73 ADD                              R11 R5 R13
       74 GETTABLEKS                       R12 R9 K2 ["X"]
       76 MOVE                             R16 R11
       77 MOVE                             R17 R10
       78 NAMECALL                         R14 R0 K4 ["GetAreaDensity"]
       80 CALL                             R14 3 1
       81 MUL                              R13 R14 R12
       82 ADD                              R3 R3 R13
       83 JUMP                             ; [+18]
       84 GETTABLEKS                       R12 R4 K2 ["X"]
       86 GETTABLEKS                       R13 R1 K2 ["X"]
       88 SUB                              R11 R12 R13
       89 GETIMPORT                        R13 K7 [Vector2.new]
       91 LOADN                            R14 -1
       92 LOADN                            R15 0
       93 CALL                             R13 2 1
       94 ADD                              R12 R5 R13
       95 MOVE                             R16 R12
       96 MOVE                             R17 R10
       97 NAMECALL                         R14 R0 K4 ["GetAreaDensity"]
       99 CALL                             R14 3 1
      100 MUL                              R13 R14 R11
      101 ADD                              R3 R3 R13
      102 GETTABLEKS                       R10 R7 K2 ["X"]
      104 LOADN                            R11 0
      105 JUMPIFNOTLT                      R11 R10 ; [+71]
      107 GETIMPORT                        R10 K7 [Vector2.new]
      109 GETTABLEKS                       R11 R7 K2 ["X"]
      111 LOADN                            R12 1
      112 CALL                             R10 2 1
      113 GETTABLEKS                       R12 R1 K3 ["Y"]
      115 FASTCALL1                        MATH_FLOOR R12 ; [+2]
      116 GETIMPORT                        R11 K10 [math.floor]
      118 CALL                             R11 1 1
      119 GETTABLEKS                       R13 R4 K3 ["Y"]
      121 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      122 GETIMPORT                        R12 K10 [math.floor]
      124 CALL                             R12 1 1
      125 JUMPIFNOTLT                      R11 R12 ; [+33]
      127 GETIMPORT                        R12 K7 [Vector2.new]
      129 LOADN                            R13 0
      130 LOADN                            R14 -1
      131 CALL                             R12 2 1
      132 ADD                              R11 R5 R12
      133 GETTABLEKS                       R12 R8 K3 ["Y"]
      135 MOVE                             R16 R11
      136 MOVE                             R17 R10
      137 NAMECALL                         R14 R0 K4 ["GetAreaDensity"]
      139 CALL                             R14 3 1
      140 MUL                              R13 R14 R12
      141 ADD                              R3 R3 R13
      142 GETIMPORT                        R13 K7 [Vector2.new]
      144 LOADN                            R14 0
      145 GETTABLEKS                       R15 R7 K3 ["Y"]
      147 CALL                             R13 2 1
      148 ADD                              R11 R5 R13
      149 GETTABLEKS                       R12 R9 K3 ["Y"]
      151 MOVE                             R16 R11
      152 MOVE                             R17 R10
      153 NAMECALL                         R14 R0 K4 ["GetAreaDensity"]
      155 CALL                             R14 3 1
      156 MUL                              R13 R14 R12
      157 ADD                              R3 R3 R13
      158 JUMP                             ; [+18]
      159 GETTABLEKS                       R12 R4 K3 ["Y"]
      161 GETTABLEKS                       R13 R1 K3 ["Y"]
      163 SUB                              R11 R12 R13
      164 GETIMPORT                        R13 K7 [Vector2.new]
      166 LOADN                            R14 0
      167 LOADN                            R15 -1
      168 CALL                             R13 2 1
      169 ADD                              R12 R5 R13
      170 MOVE                             R16 R12
      171 MOVE                             R17 R10
      172 NAMECALL                         R14 R0 K4 ["GetAreaDensity"]
      174 CALL                             R14 3 1
      175 MUL                              R13 R14 R11
      176 ADD                              R3 R3 R13
      177 GETTABLEKS                       R12 R5 K2 ["X"]
      179 GETTABLEKS                       R13 R4 K2 ["X"]
      181 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      183 GETIMPORT                        R11 K12 [math.min]
      185 CALL                             R11 2 1
      186 GETTABLEKS                       R12 R1 K2 ["X"]
      188 SUB                              R10 R11 R12
      189 GETTABLEKS                       R13 R5 K3 ["Y"]
      191 GETTABLEKS                       R14 R4 K3 ["Y"]
      193 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      195 GETIMPORT                        R12 K12 [math.min]
      197 CALL                             R12 2 1
      198 GETTABLEKS                       R13 R1 K3 ["Y"]
      200 SUB                              R11 R12 R13
      201 NAMECALL                         R16 R1 K1 ["Floor"]
      203 CALL                             R16 1 1
      204 GETIMPORT                        R17 K7 [Vector2.new]
      206 LOADN                            R18 1
      207 LOADN                            R19 1
      208 CALL                             R17 2 -1
      209 NAMECALL                         R14 R0 K4 ["GetAreaDensity"]
      211 CALL                             R14 -1 1
      212 MUL                              R13 R14 R10
      213 MUL                              R12 R13 R11
      214 ADD                              R3 R3 R12
      215 GETTABLEKS                       R13 R1 K2 ["X"]
      217 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      218 GETIMPORT                        R12 K10 [math.floor]
      220 CALL                             R12 1 1
      221 GETTABLEKS                       R14 R4 K2 ["X"]
      223 FASTCALL1                        MATH_FLOOR R14 ; [+2]
      224 GETIMPORT                        R13 K10 [math.floor]
      226 CALL                             R13 1 1
      227 JUMPIFNOTLT                      R12 R13 ; [+57]
      229 GETTABLEKS                       R12 R9 K2 ["X"]
      231 GETIMPORT                        R13 K7 [Vector2.new]
      233 GETTABLEKS                       R14 R4 K2 ["X"]
      235 GETTABLEKS                       R15 R1 K3 ["Y"]
      237 CALL                             R13 2 1
      238 NAMECALL                         R13 R13 K1 ["Floor"]
      240 CALL                             R13 1 1
      241 MOVE                             R18 R13
      242 GETIMPORT                        R19 K7 [Vector2.new]
      244 LOADN                            R20 1
      245 LOADN                            R21 1
      246 CALL                             R19 2 -1
      247 NAMECALL                         R16 R0 K4 ["GetAreaDensity"]
      249 CALL                             R16 -1 1
      250 MUL                              R15 R16 R12
      251 MUL                              R14 R15 R11
      252 ADD                              R3 R3 R14
      253 GETTABLEKS                       R15 R1 K3 ["Y"]
      255 FASTCALL1                        MATH_FLOOR R15 ; [+2]
      256 GETIMPORT                        R14 K10 [math.floor]
      258 CALL                             R14 1 1
      259 GETTABLEKS                       R16 R4 K3 ["Y"]
      261 FASTCALL1                        MATH_FLOOR R16 ; [+2]
      262 GETIMPORT                        R15 K10 [math.floor]
      264 CALL                             R15 1 1
      265 JUMPIFNOTLT                      R14 R15 ; [+19]
      267 NAMECALL                         R18 R4 K1 ["Floor"]
      269 CALL                             R18 1 1
      270 GETIMPORT                        R19 K7 [Vector2.new]
      272 LOADN                            R20 1
      273 LOADN                            R21 1
      274 CALL                             R19 2 -1
      275 NAMECALL                         R16 R0 K4 ["GetAreaDensity"]
      277 CALL                             R16 -1 1
      278 GETTABLEKS                       R17 R9 K2 ["X"]
      280 MUL                              R15 R16 R17
      281 GETTABLEKS                       R16 R9 K3 ["Y"]
      283 MUL                              R14 R15 R16
      284 ADD                              R3 R3 R14
      285 GETTABLEKS                       R13 R1 K3 ["Y"]
      287 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      288 GETIMPORT                        R12 K10 [math.floor]
      290 CALL                             R12 1 1
      291 GETTABLEKS                       R14 R4 K3 ["Y"]
      293 FASTCALL1                        MATH_FLOOR R14 ; [+2]
      294 GETIMPORT                        R13 K10 [math.floor]
      296 CALL                             R13 1 1
      297 JUMPIFNOTLT                      R12 R13 ; [+25]
      299 GETTABLEKS                       R12 R9 K3 ["Y"]
      301 GETIMPORT                        R13 K7 [Vector2.new]
      303 GETTABLEKS                       R14 R1 K2 ["X"]
      305 GETTABLEKS                       R15 R4 K3 ["Y"]
      307 CALL                             R13 2 1
      308 NAMECALL                         R13 R13 K1 ["Floor"]
      310 CALL                             R13 1 1
      311 MOVE                             R18 R13
      312 GETIMPORT                        R19 K7 [Vector2.new]
      314 LOADN                            R20 1
      315 LOADN                            R21 1
      316 CALL                             R19 2 -1
      317 NAMECALL                         R16 R0 K4 ["GetAreaDensity"]
      319 CALL                             R16 -1 1
      320 MUL                              R15 R16 R10
      321 MUL                              R14 R15 R12
      322 ADD                              R3 R3 R14
      323 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 SETTABLEKS                       R1 R0 K2 ["ReadPixel"]
        8 DUPCLOSURE                       R1 K3 [PROTO_1]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K4 ["new"]
       12 NEWTABLE                         R1 8 0
       14 SETTABLEKS                       R1 R1 K0 ["__index"]
       16 DUPCLOSURE                       R2 K5 [PROTO_2]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R2 R1 K4 ["new"]
       20 DUPCLOSURE                       R2 K6 [PROTO_3]
       21 SETTABLEKS                       R2 R1 K7 ["ReadValue"]
       23 DUPCLOSURE                       R2 K8 [PROTO_4]
       24 SETTABLEKS                       R2 R1 K9 ["WriteValue"]
       26 DUPCLOSURE                       R2 K10 [PROTO_5]
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R1 K11 ["BuildSummedAreaTable"]
       30 DUPCLOSURE                       R2 K12 [PROTO_6]
       31 SETTABLEKS                       R2 R1 K13 ["GetAreaDensity"]
       33 DUPCLOSURE                       R2 K14 [PROTO_7]
       34 SETTABLEKS                       R2 R1 K15 ["GetAreaDensityContinuous"]
       36 RETURN                           R1 1
