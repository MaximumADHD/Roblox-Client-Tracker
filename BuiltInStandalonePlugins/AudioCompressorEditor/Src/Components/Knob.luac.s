PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 LOADK                            R2 K3 [0.5]
        3 LOADK                            R3 K3 [0.5]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R3 R0 K4 ["Y"]
        7 MULK                             R2 R3 K3 [0.5]
        8 GETIMPORT                        R3 K2 [Vector2.new]
       10 GETTABLEKS                       R7 R0 K7 ["X"]
       12 MULK                             R6 R7 K6 [3.14159265358979]
       13 DIVK                             R5 R6 K5 [180]
       14 FASTCALL1                        MATH_SIN R5 ; [+2]
       15 GETIMPORT                        R4 K10 [math.sin]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R9 R0 K7 ["X"]
       20 MULK                             R8 R9 K6 [3.14159265358979]
       21 DIVK                             R7 R8 K5 [180]
       22 FASTCALL1                        MATH_COS R7 ; [+2]
       23 GETIMPORT                        R6 K12 [math.cos]
       25 CALL                             R6 1 1
       26 MINUS                            R5 R6
       27 CALL                             R3 2 1
       28 MUL                              R5 R3 R2
       29 ADD                              R4 R1 R5
       30 RETURN                           R4 1

PROTO_1:
        0 JUMPIF                           R0 ; [+4]
        1 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        3 CALL                             R3 0 -1
        4 RETURN                           R3 -1
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+11]
        7 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        9 GETIMPORT                        R4 K5 [UDim2.fromScale]
       11 GETTABLEKS                       R5 R0 K6 ["X"]
       13 GETTABLEKS                       R6 R0 K7 ["Y"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 -1
       17 RETURN                           R3 -1
       18 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
       20 GETIMPORT                        R4 K5 [UDim2.fromScale]
       22 GETTABLEKS                       R5 R0 K6 ["X"]
       24 GETTABLEKS                       R6 R0 K7 ["Y"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K5 [UDim2.fromScale]
       29 GETTABLEKS                       R6 R1 K6 ["X"]
       31 GETTABLEKS                       R7 R1 K7 ["Y"]
       33 CALL                             R5 2 1
       34 GETIMPORT                        R6 K5 [UDim2.fromScale]
       36 GETTABLEKS                       R7 R2 K6 ["X"]
       38 GETTABLEKS                       R8 R2 K7 ["Y"]
       40 CALL                             R6 2 -1
       41 CALL                             R3 -1 -1
       42 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 LENGTH                           R3 R0
        4 LOADN                            R4 1
        5 GETTABLEN                        R5 R0 1
        6 JUMPIFNOTLE                      R4 R3 ; [+297]
        8 GETTABLE                         R6 R0 R4
        9 MOVE                             R8 R6
       10 GETIMPORT                        R9 K2 [Vector2.new]
       12 LOADK                            R10 K3 [0.5]
       13 LOADK                            R11 K3 [0.5]
       14 CALL                             R9 2 1
       15 GETTABLEKS                       R11 R8 K4 ["Y"]
       17 MULK                             R10 R11 K3 [0.5]
       18 GETIMPORT                        R11 K2 [Vector2.new]
       20 GETTABLEKS                       R15 R8 K7 ["X"]
       22 MULK                             R14 R15 K6 [3.14159265358979]
       23 DIVK                             R13 R14 K5 [180]
       24 FASTCALL1                        MATH_SIN R13 ; [+2]
       25 GETIMPORT                        R12 K10 [math.sin]
       27 CALL                             R12 1 1
       28 GETTABLEKS                       R17 R8 K7 ["X"]
       30 MULK                             R16 R17 K6 [3.14159265358979]
       31 DIVK                             R15 R16 K5 [180]
       32 FASTCALL1                        MATH_COS R15 ; [+2]
       33 GETIMPORT                        R14 K12 [math.cos]
       35 CALL                             R14 1 1
       36 MINUS                            R13 R14
       37 CALL                             R11 2 1
       38 MUL                              R12 R11 R10
       39 ADD                              R7 R9 R12
       40 JUMPIFNOTEQKN                    R4 K13 [1] ; [+13]
       42 MOVE                             R9 R1
       43 GETUPVAL                         R10 0
       44 MOVE                             R11 R7
       45 CALL                             R10 1 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R8 K16 [table.insert]
       49 CALL                             R8 -1 0
       50 ADDK                             R2 R2 K13 [1]
       51 ADDK                             R4 R4 K13 [1]
       52 MOVE                             R5 R6
       53 JUMP                             ; [+249]
       54 MOVE                             R8 R5
       55 GETTABLEKS                       R9 R8 K7 ["X"]
       57 GETTABLEKS                       R10 R6 K7 ["X"]
       59 JUMPIFNOTEQ                      R9 R10 ; [+13]
       61 MOVE                             R10 R1
       62 GETUPVAL                         R11 0
       63 MOVE                             R12 R7
       64 CALL                             R11 1 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R9 K16 [table.insert]
       68 CALL                             R9 -1 0
       69 ADDK                             R2 R2 K13 [1]
       70 ADDK                             R4 R4 K13 [1]
       71 MOVE                             R5 R6
       72 JUMP                             ; [+230]
       73 LOADB                            R9 0
       74 GETTABLEKS                       R10 R6 K7 ["X"]
       76 GETTABLEKS                       R12 R8 K7 ["X"]
       78 ADDK                             R11 R12 K17 [90]
       79 JUMPIFNOTLT                      R11 R10 ; [+36]
       81 LOADB                            R9 1
       82 ADD                              R10 R8 R6
       83 DIVK                             R6 R10 K18 [2]
       84 MOVE                             R10 R6
       85 GETIMPORT                        R11 K2 [Vector2.new]
       87 LOADK                            R12 K3 [0.5]
       88 LOADK                            R13 K3 [0.5]
       89 CALL                             R11 2 1
       90 GETTABLEKS                       R13 R10 K4 ["Y"]
       92 MULK                             R12 R13 K3 [0.5]
       93 GETIMPORT                        R13 K2 [Vector2.new]
       95 GETTABLEKS                       R17 R10 K7 ["X"]
       97 MULK                             R16 R17 K6 [3.14159265358979]
       98 DIVK                             R15 R16 K5 [180]
       99 FASTCALL1                        MATH_SIN R15 ; [+2]
      100 GETIMPORT                        R14 K10 [math.sin]
      102 CALL                             R14 1 1
      103 GETTABLEKS                       R19 R10 K7 ["X"]
      105 MULK                             R18 R19 K6 [3.14159265358979]
      106 DIVK                             R17 R18 K5 [180]
      107 FASTCALL1                        MATH_COS R17 ; [+2]
      108 GETIMPORT                        R16 K12 [math.cos]
      110 CALL                             R16 1 1
      111 MINUS                            R15 R16
      112 CALL                             R13 2 1
      113 MUL                              R14 R13 R12
      114 ADD                              R7 R11 R14
      115 JUMPBACK                         ; [-42]
      116 GETIMPORT                        R11 K2 [Vector2.new]
      118 LOADK                            R12 K3 [0.5]
      119 LOADK                            R13 K3 [0.5]
      120 CALL                             R11 2 1
      121 GETTABLEKS                       R13 R8 K4 ["Y"]
      123 MULK                             R12 R13 K3 [0.5]
      124 GETIMPORT                        R13 K2 [Vector2.new]
      126 GETTABLEKS                       R17 R8 K7 ["X"]
      128 MULK                             R16 R17 K6 [3.14159265358979]
      129 DIVK                             R15 R16 K5 [180]
      130 FASTCALL1                        MATH_SIN R15 ; [+2]
      131 GETIMPORT                        R14 K10 [math.sin]
      133 CALL                             R14 1 1
      134 GETTABLEKS                       R19 R8 K7 ["X"]
      136 MULK                             R18 R19 K6 [3.14159265358979]
      137 DIVK                             R17 R18 K5 [180]
      138 FASTCALL1                        MATH_COS R17 ; [+2]
      139 GETIMPORT                        R16 K12 [math.cos]
      141 CALL                             R16 1 1
      142 MINUS                            R15 R16
      143 CALL                             R13 2 1
      144 MUL                              R14 R13 R12
      145 ADD                              R10 R11 R14
      146 GETIMPORT                        R11 K2 [Vector2.new]
      148 LOADK                            R12 K3 [0.5]
      149 LOADK                            R13 K3 [0.5]
      150 CALL                             R11 2 1
      151 SUB                              R12 R10 R11
      152 SUB                              R13 R7 R11
      153 SUB                              R18 R6 R8
      154 MULK                             R17 R18 K19 [0.001]
      155 ADD                              R16 R8 R17
      156 GETIMPORT                        R17 K2 [Vector2.new]
      158 LOADK                            R18 K3 [0.5]
      159 LOADK                            R19 K3 [0.5]
      160 CALL                             R17 2 1
      161 GETTABLEKS                       R19 R16 K4 ["Y"]
      163 MULK                             R18 R19 K3 [0.5]
      164 GETIMPORT                        R19 K2 [Vector2.new]
      166 GETTABLEKS                       R23 R16 K7 ["X"]
      168 MULK                             R22 R23 K6 [3.14159265358979]
      169 DIVK                             R21 R22 K5 [180]
      170 FASTCALL1                        MATH_SIN R21 ; [+2]
      171 GETIMPORT                        R20 K10 [math.sin]
      173 CALL                             R20 1 1
      174 GETTABLEKS                       R25 R16 K7 ["X"]
      176 MULK                             R24 R25 K6 [3.14159265358979]
      177 DIVK                             R23 R24 K5 [180]
      178 FASTCALL1                        MATH_COS R23 ; [+2]
      179 GETIMPORT                        R22 K12 [math.cos]
      181 CALL                             R22 1 1
      182 MINUS                            R21 R22
      183 CALL                             R19 2 1
      184 MUL                              R20 R19 R18
      185 ADD                              R15 R17 R20
      186 SUB                              R14 R15 R10
      187 GETTABLEKS                       R14 R14 K20 ["Unit"]
      189 SUB                              R19 R6 R8
      190 MULK                             R18 R19 K19 [0.001]
      191 ADD                              R17 R6 R18
      192 GETIMPORT                        R18 K2 [Vector2.new]
      194 LOADK                            R19 K3 [0.5]
      195 LOADK                            R20 K3 [0.5]
      196 CALL                             R18 2 1
      197 GETTABLEKS                       R20 R17 K4 ["Y"]
      199 MULK                             R19 R20 K3 [0.5]
      200 GETIMPORT                        R20 K2 [Vector2.new]
      202 GETTABLEKS                       R24 R17 K7 ["X"]
      204 MULK                             R23 R24 K6 [3.14159265358979]
      205 DIVK                             R22 R23 K5 [180]
      206 FASTCALL1                        MATH_SIN R22 ; [+2]
      207 GETIMPORT                        R21 K10 [math.sin]
      209 CALL                             R21 1 1
      210 GETTABLEKS                       R26 R17 K7 ["X"]
      212 MULK                             R25 R26 K6 [3.14159265358979]
      213 DIVK                             R24 R25 K5 [180]
      214 FASTCALL1                        MATH_COS R24 ; [+2]
      215 GETIMPORT                        R23 K12 [math.cos]
      217 CALL                             R23 1 1
      218 MINUS                            R22 R23
      219 CALL                             R20 2 1
      220 MUL                              R21 R20 R19
      221 ADD                              R16 R18 R21
      222 SUB                              R15 R16 R7
      223 GETTABLEKS                       R15 R15 K20 ["Unit"]
      225 GETTABLEKS                       R19 R12 K22 ["Magnitude"]
      227 MUL                              R18 R14 R19
      228 MULK                             R17 R18 K21 [1.33333333333333]
      229 GETTABLEKS                       R24 R8 K7 ["X"]
      231 GETTABLEKS                       R25 R6 K7 ["X"]
      233 SUB                              R23 R24 R25
      234 FASTCALL1                        MATH_ABS R23 ; [+2]
      235 GETIMPORT                        R22 K25 [math.abs]
      237 CALL                             R22 1 1
      238 DIVRK                            R21 R23 K22 ["Magnitude"]
      239 MULK                             R20 R21 K18 [2]
      240 DIVRK                            R19 R6 K20 ["Unit"]
      241 FASTCALL1                        MATH_TAN R19 ; [+2]
      242 GETIMPORT                        R18 K27 [math.tan]
      244 CALL                             R18 1 1
      245 MUL                              R16 R17 R18
      246 GETTABLEKS                       R20 R13 K22 ["Magnitude"]
      248 MUL                              R19 R15 R20
      249 MULK                             R18 R19 K21 [1.33333333333333]
      250 GETTABLEKS                       R25 R8 K7 ["X"]
      252 GETTABLEKS                       R26 R6 K7 ["X"]
      254 SUB                              R24 R25 R26
      255 FASTCALL1                        MATH_ABS R24 ; [+2]
      256 GETIMPORT                        R23 K25 [math.abs]
      258 CALL                             R23 1 1
      259 DIVRK                            R22 R23 K23 [360]
      260 MULK                             R21 R22 K18 [2]
      261 DIVRK                            R20 R6 K21 [1.33333333333333]
      262 FASTCALL1                        MATH_TAN R20 ; [+2]
      263 GETIMPORT                        R19 K27 [math.tan]
      265 CALL                             R19 1 1
      266 MUL                              R17 R18 R19
      267 GETUPVAL                         R18 0
      268 MOVE                             R19 R10
      269 GETIMPORT                        R20 K2 [Vector2.new]
      271 GETTABLE                         R21 R1 R2
      272 GETTABLEKS                       R21 R21 K28 ["LeftTangent"]
      274 GETTABLEKS                       R21 R21 K7 ["X"]
      276 GETTABLEKS                       R21 R21 K29 ["Scale"]
      278 GETTABLE                         R22 R1 R2
      279 GETTABLEKS                       R22 R22 K28 ["LeftTangent"]
      281 GETTABLEKS                       R22 R22 K4 ["Y"]
      283 GETTABLEKS                       R22 R22 K29 ["Scale"]
      285 CALL                             R20 2 1
      286 MOVE                             R21 R16
      287 CALL                             R18 3 1
      288 SETTABLE                         R18 R1 R2
      289 MOVE                             R19 R1
      290 GETUPVAL                         R20 0
      291 MOVE                             R21 R7
      292 MINUS                            R22 R17
      293 MOVE                             R23 R17
      294 CALL                             R20 3 -1
      295 FASTCALL                         TABLE_INSERT ; [+2]
      296 GETIMPORT                        R18 K16 [table.insert]
      298 CALL                             R18 -1 0
      299 ADDK                             R2 R2 K13 [1]
      300 JUMPIF                           R9 ; [+1]
      301 ADDK                             R4 R4 K13 [1]
      302 MOVE                             R5 R6
      303 JUMPBACK                         ; [-298]
      304 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 2
        3 GETIMPORT                        R2 K2 [Vector2.new]
        5 LOADN                            R3 121
        6 LOADK                            R4 K3 [1.2]
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K2 [Vector2.new]
       10 LOADN                            R4 135
       11 LOADK                            R5 K3 [1.2]
       12 CALL                             R3 2 -1
       13 SETLIST                          R1 R2 -1 [1]
       15 CALL                             R0 1 1
       16 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 2
        3 GETIMPORT                        R2 K2 [Vector2.new]
        5 LOADN                            R3 121
        6 LOADK                            R4 K3 [1.2]
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K2 [Vector2.new]
       10 GETUPVAL                         R4 1
       11 LOADK                            R5 K3 [1.2]
       12 CALL                             R3 2 -1
       13 SETLIST                          R1 R2 -1 [1]
       15 CALL                             R0 1 1
       16 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 2
        3 GETIMPORT                        R2 K2 [Vector2.new]
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K3 [0.2]
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K2 [Vector2.new]
       10 GETUPVAL                         R4 1
       11 LOADN                            R5 1
       12 CALL                             R3 2 -1
       13 SETLIST                          R1 R2 -1 [1]
       15 CALL                             R0 1 1
       16 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+23]
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R1 K0 ["Position"]
       10 GETTABLEKS                       R3 R3 K1 ["X"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 3
       14 GETUPVAL                         R3 4
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 5
       17 LOADK                            R3 K1 ["X"]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 6
       20 GETTABLEKS                       R2 R2 K2 ["OnInputBegan"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R2 6
       24 GETTABLEKS                       R2 R2 K2 ["OnInputBegan"]
       26 CALL                             R2 0 0
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+23]
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R1 K0 ["Position"]
       10 GETTABLEKS                       R3 R3 K1 ["Y"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 3
       14 GETUPVAL                         R3 4
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 5
       17 LOADK                            R3 K1 ["Y"]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 6
       20 GETTABLEKS                       R2 R2 K2 ["OnInputBegan"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R2 6
       24 GETTABLEKS                       R2 R2 K2 ["OnInputBegan"]
       26 CALL                             R2 0 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnInputChanged"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 JUMPIFNOTEQKS                    R2 K1 ["X"] ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["Position"]
       10 GETTABLEKS                       R2 R2 K1 ["X"]
       12 GETUPVAL                         R3 2
       13 SUB                              R1 R2 R3
       14 JUMP                             ; [+7]
       15 GETTABLEKS                       R3 R0 K2 ["Position"]
       17 GETTABLEKS                       R3 R3 K3 ["Y"]
       19 GETUPVAL                         R4 2
       20 SUB                              R2 R3 R4
       21 MINUS                            R1 R2
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K4 ["DragRange"]
       26 DIV                              R4 R1 R5
       27 ADD                              R2 R3 R4
       28 LOADN                            R5 0
       29 LOADN                            R6 1
       30 FASTCALL3                        MATH_CLAMP R2 R5 R6
       32 MOVE                             R4 R2
       33 GETIMPORT                        R3 K7 [math.clamp]
       35 CALL                             R3 3 1
       36 MOVE                             R2 R3
       37 GETUPVAL                         R4 4
       38 GETUPVAL                         R7 5
       39 GETUPVAL                         R8 4
       40 SUB                              R6 R7 R8
       41 MUL                              R5 R2 R6
       42 ADD                              R3 R4 R5
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K8 ["InverseCurveFunction"]
       46 JUMPIFNOT                        R4 ; [+6]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K8 ["InverseCurveFunction"]
       50 MOVE                             R5 R3
       51 CALL                             R4 1 1
       52 MOVE                             R3 R4
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K9 ["Precision"]
       56 JUMPIFNOT                        R5 ; [+11]
       57 LOADN                            R5 10
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K9 ["Precision"]
       61 MINUS                            R6 R7
       62 FASTCALL2                        MATH_POW R5 R6 ; [+3]
       64 GETIMPORT                        R4 K11 [math.pow]
       66 CALL                             R4 2 1
       67 JUMP                             ; [+1]
       68 LOADK                            R4 K12 [0.01]
       69 DIV                              R6 R3 R4
       70 FASTCALL1                        MATH_ROUND R6 ; [+2]
       71 GETIMPORT                        R5 K14 [math.round]
       73 CALL                             R5 1 1
       74 MUL                              R3 R5 R4
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K0 ["OnInputChanged"]
       78 MOVE                             R6 R3
       79 CALL                             R5 1 0
       80 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["OnInputEnded"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["OnInputEnded"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnInputChanged"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 JUMPIFNOT                        R0 ; [+12]
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K2 [type]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+6]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["OnInputChanged"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 0
        4 LOADB                            R4 0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R5 0
        7 LOADB                            R6 0
        8 CALL                             R5 1 2
        9 GETUPVAL                         R7 0
       10 LOADN                            R8 0
       11 CALL                             R7 1 2
       12 GETUPVAL                         R9 0
       13 LOADN                            R10 0
       14 CALL                             R9 1 2
       15 GETUPVAL                         R11 0
       16 LOADK                            R12 K0 [""]
       17 CALL                             R11 1 2
       18 GETTABLEKS                       R13 R0 K1 ["Min"]
       20 GETTABLEKS                       R14 R0 K2 ["Max"]
       22 GETTABLEKS                       R15 R0 K3 ["Value"]
       24 GETTABLEKS                       R16 R0 K4 ["CurveFunction"]
       26 JUMPIFNOT                        R16 ; [+15]
       27 GETTABLEKS                       R16 R0 K4 ["CurveFunction"]
       29 MOVE                             R17 R13
       30 CALL                             R16 1 1
       31 MOVE                             R13 R16
       32 GETTABLEKS                       R16 R0 K4 ["CurveFunction"]
       34 MOVE                             R17 R14
       35 CALL                             R16 1 1
       36 MOVE                             R14 R16
       37 GETTABLEKS                       R16 R0 K4 ["CurveFunction"]
       39 MOVE                             R17 R15
       40 CALL                             R16 1 1
       41 MOVE                             R15 R16
       42 GETTABLEKS                       R18 R0 K3 ["Value"]
       44 GETTABLEKS                       R19 R0 K1 ["Min"]
       46 SUB                              R17 R18 R19
       47 GETTABLEKS                       R19 R0 K2 ["Max"]
       49 GETTABLEKS                       R20 R0 K1 ["Min"]
       51 SUB                              R18 R19 R20
       52 DIV                              R16 R17 R18
       53 SUB                              R18 R15 R13
       54 SUB                              R19 R14 R13
       55 DIV                              R17 R18 R19
       56 MULK                             R19 R17 K6 [270]
       57 ADDK                             R18 R19 K5 [-135]
       58 GETUPVAL                         R19 1
       59 DUPCLOSURE                       R20 K7 [PROTO_3]
       60 CAPTURE                          UPVAL U2
       61 NEWTABLE                         R21 0 0
       63 CALL                             R19 2 1
       64 GETUPVAL                         R20 1
       65 NEWCLOSURE                       R21 P1
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R18
       68 NEWTABLE                         R22 0 3
       70 GETTABLEKS                       R23 R0 K3 ["Value"]
       72 GETTABLEKS                       R24 R0 K1 ["Min"]
       74 GETTABLEKS                       R25 R0 K2 ["Max"]
       76 SETLIST                          R22 R23 3 [1]
       78 CALL                             R20 2 1
       79 GETUPVAL                         R21 1
       80 NEWCLOSURE                       R22 P2
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          VAL R18
       83 NEWTABLE                         R23 0 3
       85 GETTABLEKS                       R24 R0 K3 ["Value"]
       87 GETTABLEKS                       R25 R0 K1 ["Min"]
       89 GETTABLEKS                       R26 R0 K2 ["Max"]
       91 SETLIST                          R23 R24 3 [1]
       93 CALL                             R21 2 1
       94 GETUPVAL                         R22 3
       95 NEWCLOSURE                       R23 P3
       96 CAPTURE                          VAL R2
       97 NEWTABLE                         R24 0 1
       99 MOVE                             R25 R2
      100 SETLIST                          R24 R25 1 [1]
      102 CALL                             R22 2 1
      103 GETUPVAL                         R23 3
      104 NEWCLOSURE                       R24 P4
      105 CAPTURE                          VAL R2
      106 NEWTABLE                         R25 0 1
      108 MOVE                             R26 R2
      109 SETLIST                          R25 R26 1 [1]
      111 CALL                             R23 2 1
      112 GETUPVAL                         R24 3
      113 NEWCLOSURE                       R25 P5
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R0
      121 NEWTABLE                         R26 0 6
      123 MOVE                             R27 R4
      124 MOVE                             R28 R8
      125 MOVE                             R29 R10
      126 MOVE                             R30 R12
      127 GETTABLEKS                       R31 R0 K3 ["Value"]
      129 GETTABLEKS                       R32 R0 K8 ["OnInputBegan"]
      131 SETLIST                          R26 R27 6 [1]
      133 CALL                             R24 2 1
      134 GETUPVAL                         R25 3
      135 NEWCLOSURE                       R26 P6
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R0
      143 NEWTABLE                         R27 0 6
      145 MOVE                             R28 R6
      146 MOVE                             R29 R8
      147 MOVE                             R30 R10
      148 MOVE                             R31 R12
      149 GETTABLEKS                       R32 R0 K3 ["Value"]
      151 GETTABLEKS                       R33 R0 K8 ["OnInputBegan"]
      153 SETLIST                          R27 R28 6 [1]
      155 CALL                             R25 2 1
      156 GETUPVAL                         R26 3
      157 NEWCLOSURE                       R27 P7
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R9
      162 CAPTURE                          REF R13
      163 CAPTURE                          REF R14
      164 NEWTABLE                         R28 0 9
      166 GETTABLEKS                       R29 R0 K9 ["OnInputChanged"]
      168 GETTABLEKS                       R30 R0 K1 ["Min"]
      170 GETTABLEKS                       R31 R0 K2 ["Max"]
      172 GETTABLEKS                       R32 R0 K4 ["CurveFunction"]
      174 GETTABLEKS                       R33 R0 K10 ["InverseCurveFunction"]
      176 GETTABLEKS                       R34 R0 K11 ["DragRange"]
      178 MOVE                             R35 R7
      179 MOVE                             R36 R9
      180 MOVE                             R37 R11
      181 SETLIST                          R28 R29 9 [1]
      183 CALL                             R26 2 1
      184 GETUPVAL                         R27 3
      185 NEWCLOSURE                       R28 P8
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R0
      189 NEWTABLE                         R29 0 3
      191 MOVE                             R30 R4
      192 MOVE                             R31 R6
      193 GETTABLEKS                       R32 R0 K12 ["OnInputEnded"]
      195 SETLIST                          R29 R30 3 [1]
      197 CALL                             R27 2 1
      198 GETUPVAL                         R28 5
      199 GETTABLEKS                       R28 R28 K13 ["createElement"]
      201 GETUPVAL                         R29 6
      202 DUPTABLE                         R30 K17 [{"Position", "Size", "LayoutOrder"}]
      203 GETTABLEKS                       R31 R0 K14 ["Position"]
      205 SETTABLEKS                       R31 R30 K14 ["Position"]
      207 GETIMPORT                        R31 K20 [UDim2.fromOffset]
      209 GETUPVAL                         R34 7
      210 GETTABLEKS                       R34 R34 K22 ["X"]
      212 GETTABLEKS                       R35 R0 K15 ["Size"]
      214 ADD                              R33 R34 R35
      215 ADDK                             R32 R33 K21 [10]
      216 GETUPVAL                         R35 8
      217 GETTABLEKS                       R35 R35 K23 ["Y"]
      219 GETTABLEKS                       R36 R0 K15 ["Size"]
      221 ADD                              R34 R35 R36
      222 ADDK                             R33 R34 K21 [10]
      223 CALL                             R31 2 1
      224 SETTABLEKS                       R31 R30 K15 ["Size"]
      226 GETTABLEKS                       R31 R0 K16 ["LayoutOrder"]
      228 SETTABLEKS                       R31 R30 K16 ["LayoutOrder"]
      230 DUPTABLE                         R31 K28 [{"Label", "Spinbox", "Draggable", "Knob"}]
      231 GETUPVAL                         R32 5
      232 GETTABLEKS                       R32 R32 K13 ["createElement"]
      234 GETUPVAL                         R33 9
      235 DUPTABLE                         R34 K33 [{"BackgroundTransparency", "Text", "Size", "TextXAlignment", "TextYAlignment"}]
      236 LOADN                            R35 1
      237 SETTABLEKS                       R35 R34 K29 ["BackgroundTransparency"]
      239 GETTABLEKS                       R35 R0 K24 ["Label"]
      241 SETTABLEKS                       R35 R34 K30 ["Text"]
      243 GETIMPORT                        R35 K20 [UDim2.fromOffset]
      245 GETUPVAL                         R36 8
      246 GETTABLEKS                       R36 R36 K22 ["X"]
      248 GETUPVAL                         R37 8
      249 GETTABLEKS                       R37 R37 K23 ["Y"]
      251 CALL                             R35 2 1
      252 SETTABLEKS                       R35 R34 K15 ["Size"]
      254 GETIMPORT                        R35 K36 [Enum.TextXAlignment.Left]
      256 SETTABLEKS                       R35 R34 K31 ["TextXAlignment"]
      258 GETIMPORT                        R35 K38 [Enum.TextYAlignment.Bottom]
      260 SETTABLEKS                       R35 R34 K32 ["TextYAlignment"]
      262 CALL                             R32 2 1
      263 SETTABLEKS                       R32 R31 K24 ["Label"]
      265 GETUPVAL                         R32 5
      266 GETTABLEKS                       R32 R32 K13 ["createElement"]
      268 GETUPVAL                         R33 10
      269 DUPTABLE                         R34 K42 [{"Schema", "Value", "OnChanged", "Position", "Size", "Tooltip"}]
      270 DUPTABLE                         R35 K45 [{"Type", "Min", "Max", "Precision"}]
      271 LOADK                            R36 K46 ["Number"]
      272 SETTABLEKS                       R36 R35 K43 ["Type"]
      274 GETTABLEKS                       R36 R0 K1 ["Min"]
      276 SETTABLEKS                       R36 R35 K1 ["Min"]
      278 GETTABLEKS                       R36 R0 K2 ["Max"]
      280 SETTABLEKS                       R36 R35 K2 ["Max"]
      282 GETTABLEKS                       R36 R0 K44 ["Precision"]
      284 SETTABLEKS                       R36 R35 K44 ["Precision"]
      286 SETTABLEKS                       R35 R34 K39 ["Schema"]
      288 GETTABLEKS                       R35 R0 K3 ["Value"]
      290 SETTABLEKS                       R35 R34 K3 ["Value"]
      292 NEWCLOSURE                       R35 P9
      293 CAPTURE                          VAL R0
      294 SETTABLEKS                       R35 R34 K40 ["OnChanged"]
      296 GETIMPORT                        R35 K20 [UDim2.fromOffset]
      298 LOADN                            R36 0
      299 GETUPVAL                         R38 8
      300 GETTABLEKS                       R38 R38 K23 ["Y"]
      302 ADDK                             R37 R38 K21 [10]
      303 CALL                             R35 2 1
      304 SETTABLEKS                       R35 R34 K14 ["Position"]
      306 GETIMPORT                        R35 K20 [UDim2.fromOffset]
      308 GETUPVAL                         R36 7
      309 GETTABLEKS                       R36 R36 K22 ["X"]
      311 GETUPVAL                         R37 7
      312 GETTABLEKS                       R37 R37 K23 ["Y"]
      314 CALL                             R35 2 1
      315 SETTABLEKS                       R35 R34 K15 ["Size"]
      317 GETTABLEKS                       R35 R0 K24 ["Label"]
      319 SETTABLEKS                       R35 R34 K41 ["Tooltip"]
      321 CALL                             R32 2 1
      322 SETTABLEKS                       R32 R31 K25 ["Spinbox"]
      324 GETUPVAL                         R32 5
      325 GETTABLEKS                       R32 R32 K13 ["createElement"]
      327 LOADK                            R33 K47 ["ImageButton"]
      328 NEWTABLE                         R34 8 0
      330 GETIMPORT                        R35 K20 [UDim2.fromOffset]
      332 GETUPVAL                         R37 7
      333 GETTABLEKS                       R37 R37 K22 ["X"]
      335 GETUPVAL                         R38 7
      336 GETTABLEKS                       R38 R38 K23 ["Y"]
      338 SUB                              R36 R37 R38
      339 GETUPVAL                         R38 8
      340 GETTABLEKS                       R38 R38 K23 ["Y"]
      342 ADDK                             R37 R38 K21 [10]
      343 CALL                             R35 2 1
      344 SETTABLEKS                       R35 R34 K14 ["Position"]
      346 GETIMPORT                        R35 K20 [UDim2.fromOffset]
      348 GETUPVAL                         R36 7
      349 GETTABLEKS                       R36 R36 K23 ["Y"]
      351 GETUPVAL                         R37 7
      352 GETTABLEKS                       R37 R37 K23 ["Y"]
      354 CALL                             R35 2 1
      355 SETTABLEKS                       R35 R34 K15 ["Size"]
      357 LOADN                            R35 10
      358 SETTABLEKS                       R35 R34 K48 ["ZIndex"]
      360 LOADN                            R35 1
      361 SETTABLEKS                       R35 R34 K29 ["BackgroundTransparency"]
      363 GETUPVAL                         R35 5
      364 GETTABLEKS                       R35 R35 K49 ["Tag"]
      366 LOADK                            R36 K50 ["DoubleArrowButton"]
      367 SETTABLE                         R36 R34 R35
      368 GETUPVAL                         R35 5
      369 GETTABLEKS                       R35 R35 K51 ["Event"]
      371 GETTABLEKS                       R35 R35 K52 ["InputBegan"]
      373 SETTABLE                         R24 R34 R35
      374 DUPTABLE                         R35 K55 [{"HoverArea", "DragListener"}]
      375 GETUPVAL                         R36 5
      376 GETTABLEKS                       R36 R36 K13 ["createElement"]
      378 GETUPVAL                         R37 11
      379 DUPTABLE                         R38 K59 [{"Cursor", "MouseEnter", "MouseLeave"}]
      380 GETUPVAL                         R39 12
      381 SETTABLEKS                       R39 R38 K56 ["Cursor"]
      383 SETTABLEKS                       R22 R38 K57 ["MouseEnter"]
      385 SETTABLEKS                       R23 R38 K58 ["MouseLeave"]
      387 CALL                             R36 2 1
      388 SETTABLEKS                       R36 R35 K53 ["HoverArea"]
      390 MOVE                             R36 R3
      391 JUMPIFNOT                        R36 ; [+10]
      392 GETUPVAL                         R36 5
      393 GETTABLEKS                       R36 R36 K13 ["createElement"]
      395 GETUPVAL                         R37 13
      396 DUPTABLE                         R38 K62 [{"OnDragMoved", "OnDragEnded"}]
      397 SETTABLEKS                       R26 R38 K60 ["OnDragMoved"]
      399 SETTABLEKS                       R27 R38 K61 ["OnDragEnded"]
      401 CALL                             R36 2 1
      402 SETTABLEKS                       R36 R35 K54 ["DragListener"]
      404 CALL                             R32 3 1
      405 SETTABLEKS                       R32 R31 K26 ["Draggable"]
      407 GETUPVAL                         R32 5
      408 GETTABLEKS                       R32 R32 K13 ["createElement"]
      410 LOADK                            R33 K47 ["ImageButton"]
      411 NEWTABLE                         R34 4 0
      413 GETIMPORT                        R35 K20 [UDim2.fromOffset]
      415 GETUPVAL                         R37 7
      416 GETTABLEKS                       R37 R37 K22 ["X"]
      418 ADDK                             R36 R37 K21 [10]
      419 GETUPVAL                         R38 8
      420 GETTABLEKS                       R38 R38 K23 ["Y"]
      422 ADDK                             R37 R38 K21 [10]
      423 CALL                             R35 2 1
      424 SETTABLEKS                       R35 R34 K14 ["Position"]
      426 GETIMPORT                        R35 K20 [UDim2.fromOffset]
      428 GETTABLEKS                       R36 R0 K15 ["Size"]
      430 GETTABLEKS                       R37 R0 K15 ["Size"]
      432 CALL                             R35 2 1
      433 SETTABLEKS                       R35 R34 K15 ["Size"]
      435 GETUPVAL                         R35 5
      436 GETTABLEKS                       R35 R35 K49 ["Tag"]
      438 LOADK                            R36 K27 ["Knob"]
      439 SETTABLE                         R36 R34 R35
      440 GETUPVAL                         R35 5
      441 GETTABLEKS                       R35 R35 K51 ["Event"]
      443 GETTABLEKS                       R35 R35 K52 ["InputBegan"]
      445 SETTABLE                         R25 R34 R35
      446 DUPTABLE                         R35 K66 [{"BackArc", "Arc", "Tick", "HoverArea", "DragListener"}]
      447 GETUPVAL                         R36 5
      448 GETTABLEKS                       R36 R36 K13 ["createElement"]
      450 GETUPVAL                         R37 14
      451 DUPTABLE                         R38 K68 [{"ControlPoints", "Tag", "ZIndex"}]
      452 SETTABLEKS                       R19 R38 K67 ["ControlPoints"]
      454 LOADK                            R39 K69 ["KnobBackArc"]
      455 SETTABLEKS                       R39 R38 K49 ["Tag"]
      457 LOADN                            R39 1
      458 SETTABLEKS                       R39 R38 K48 ["ZIndex"]
      460 CALL                             R36 2 1
      461 SETTABLEKS                       R36 R35 K63 ["BackArc"]
      463 GETUPVAL                         R36 5
      464 GETTABLEKS                       R36 R36 K13 ["createElement"]
      466 GETUPVAL                         R37 14
      467 DUPTABLE                         R38 K68 [{"ControlPoints", "Tag", "ZIndex"}]
      468 SETTABLEKS                       R20 R38 K67 ["ControlPoints"]
      470 LOADK                            R39 K70 ["KnobArc"]
      471 SETTABLEKS                       R39 R38 K49 ["Tag"]
      473 LOADN                            R39 2
      474 SETTABLEKS                       R39 R38 K48 ["ZIndex"]
      476 CALL                             R36 2 1
      477 SETTABLEKS                       R36 R35 K64 ["Arc"]
      479 GETUPVAL                         R36 5
      480 GETTABLEKS                       R36 R36 K13 ["createElement"]
      482 GETUPVAL                         R37 14
      483 DUPTABLE                         R38 K71 [{"ControlPoints", "Tag"}]
      484 SETTABLEKS                       R21 R38 K67 ["ControlPoints"]
      486 LOADK                            R39 K72 ["KnobTick"]
      487 SETTABLEKS                       R39 R38 K49 ["Tag"]
      489 CALL                             R36 2 1
      490 SETTABLEKS                       R36 R35 K65 ["Tick"]
      492 GETUPVAL                         R36 5
      493 GETTABLEKS                       R36 R36 K13 ["createElement"]
      495 GETUPVAL                         R37 11
      496 DUPTABLE                         R38 K59 [{"Cursor", "MouseEnter", "MouseLeave"}]
      497 GETUPVAL                         R39 15
      498 SETTABLEKS                       R39 R38 K56 ["Cursor"]
      500 SETTABLEKS                       R22 R38 K57 ["MouseEnter"]
      502 SETTABLEKS                       R23 R38 K58 ["MouseLeave"]
      504 CALL                             R36 2 1
      505 SETTABLEKS                       R36 R35 K53 ["HoverArea"]
      507 MOVE                             R36 R5
      508 JUMPIFNOT                        R36 ; [+10]
      509 GETUPVAL                         R36 5
      510 GETTABLEKS                       R36 R36 K13 ["createElement"]
      512 GETUPVAL                         R37 13
      513 DUPTABLE                         R38 K62 [{"OnDragMoved", "OnDragEnded"}]
      514 SETTABLEKS                       R26 R38 K60 ["OnDragMoved"]
      516 SETTABLEKS                       R27 R38 K61 ["OnDragEnded"]
      518 CALL                             R36 2 1
      519 SETTABLEKS                       R36 R35 K54 ["DragListener"]
      521 CALL                             R32 3 1
      522 SETTABLEKS                       R32 R31 K27 ["Knob"]
      524 CALL                             R28 3 -1
      525 CLOSEUPVALS                      R13
      526 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioCompressorEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["Framework"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["UI"]
       20 GETTABLEKS                       R3 R3 K10 ["DragListener"]
       22 GETTABLEKS                       R4 R2 K9 ["UI"]
       24 GETTABLEKS                       R4 R4 K11 ["HoverArea"]
       26 GETTABLEKS                       R5 R2 K9 ["UI"]
       28 GETTABLEKS                       R5 R5 K12 ["Pane"]
       30 GETTABLEKS                       R6 R2 K9 ["UI"]
       32 GETTABLEKS                       R6 R6 K13 ["PropertyCell"]
       34 GETTABLEKS                       R7 R2 K9 ["UI"]
       36 GETTABLEKS                       R7 R7 K14 ["TextLabel"]
       38 GETTABLEKS                       R8 R2 K15 ["Util"]
       40 GETTABLEKS                       R8 R8 K16 ["isInputMainPress"]
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R1 K7 ["Packages"]
       46 GETTABLEKS                       R10 R10 K17 ["React"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R9 K18 ["useCallback"]
       51 GETTABLEKS                       R11 R9 K19 ["useMemo"]
       53 GETTABLEKS                       R12 R9 K20 ["useState"]
       55 GETIMPORT                        R13 K6 [require]
       57 GETTABLEKS                       R14 R1 K21 ["Src"]
       59 GETTABLEKS                       R14 R14 K22 ["Resources"]
       61 GETTABLEKS                       R14 R14 K23 ["PluginStyles"]
       63 CALL                             R13 1 1
       64 LOADK                            R16 K24 ["CursorHorizontal"]
       65 NAMECALL                         R14 R13 K25 ["GetAttribute"]
       67 CALL                             R14 2 1
       68 LOADK                            R17 K26 ["CursorVertical"]
       69 NAMECALL                         R15 R13 K25 ["GetAttribute"]
       71 CALL                             R15 2 1
       72 GETIMPORT                        R16 K6 [require]
       74 GETTABLEKS                       R17 R0 K27 ["Path2DWrapper"]
       76 CALL                             R16 1 1
       77 GETIMPORT                        R17 K30 [Vector2.new]
       79 LOADN                            R18 60
       80 LOADN                            R19 25
       81 CALL                             R17 2 1
       82 GETIMPORT                        R18 K30 [Vector2.new]
       84 LOADN                            R19 60
       85 LOADN                            R20 25
       86 CALL                             R18 2 1
       87 DUPCLOSURE                       R19 K31 [PROTO_0]
       88 DUPCLOSURE                       R20 K32 [PROTO_1]
       89 DUPCLOSURE                       R21 K33 [PROTO_2]
       90 CAPTURE                          VAL R20
       91 DUPCLOSURE                       R22 K34 [PROTO_13]
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R21
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R18
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R15
      108 RETURN                           R22 1
