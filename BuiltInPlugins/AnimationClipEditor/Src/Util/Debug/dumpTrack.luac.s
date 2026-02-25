PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Components"]
        2 JUMPIFNOT                        R3 ; [+22]
        3 GETIMPORT                        R3 K2 [pairs]
        5 GETTABLEKS                       R4 R0 K0 ["Components"]
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 GETUPVAL                         R8 0
       10 MOVE                             R9 R7
       11 JUMPIFEQKS                       R1 K3 [""] ; [+5]
       13 MOVE                             R13 R1
       14 LOADK                            R14 K4 ["."]
       15 CONCAT                           R11 R13 R14
       16 JUMPIF                           R11 ; [+1]
       17 LOADK                            R11 K3 [""]
       18 MOVE                             R12 R6
       19 CONCAT                           R10 R11 R12
       20 MOVE                             R11 R2
       21 CALL                             R8 3 0
       22 FORGLOOP                         R3 2 ; [-14]
       24 RETURN                           R0 0
       25 MOVE                             R3 R2
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 DUPCLOSURE                       R2 K0 [PROTO_0]
        3 CAPTURE                          VAL R2
        4 GETTABLEKS                       R3 R0 K1 ["Components"]
        6 JUMPIFNOT                        R3 ; [+16]
        7 GETIMPORT                        R3 K3 [pairs]
        9 GETTABLEKS                       R4 R0 K1 ["Components"]
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 MOVE                             R8 R2
       14 MOVE                             R9 R7
       15 LOADK                            R11 K4 [""]
       16 MOVE                             R12 R6
       17 CONCAT                           R10 R11 R12
       18 MOVE                             R11 R1
       19 CALL                             R8 3 0
       20 FORGLOOP                         R3 2 ; [-8]
       22 RETURN                           R0 0
       23 MOVE                             R3 R1
       24 MOVE                             R4 R0
       25 LOADK                            R5 K4 [""]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
        2 JUMPIFNOT                        R2 ; [+19]
        3 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        5 LENGTH                           R2 R3
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+14]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R5 R0 K0 ["Keyframes"]
       12 GETTABLEKS                       R7 R0 K0 ["Keyframes"]
       14 LENGTH                           R6 R7
       15 GETTABLE                         R4 R5 R6
       16 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       18 GETIMPORT                        R2 K3 [math.max]
       20 CALL                             R2 2 1
       21 SETUPVAL                         R2 0
       22 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 JUMPIF                           R0 ; [+1]
        4 JUMP                             ; [+25]
        5 DUPCLOSURE                       R3 K0 [PROTO_0]
        6 CAPTURE                          VAL R3
        7 GETTABLEKS                       R4 R0 K1 ["Components"]
        9 JUMPIFNOT                        R4 ; [+16]
       10 GETIMPORT                        R4 K3 [pairs]
       12 GETTABLEKS                       R5 R0 K1 ["Components"]
       14 CALL                             R4 1 3
       15 FORGPREP_NEXT                    R4
       16 MOVE                             R9 R3
       17 MOVE                             R10 R8
       18 LOADK                            R12 K4 [""]
       19 MOVE                             R13 R7
       20 CONCAT                           R11 R12 R13
       21 MOVE                             R12 R2
       22 CALL                             R9 3 0
       23 FORGLOOP                         R4 2 ; [-8]
       25 JUMP                             ; [+4]
       26 MOVE                             R4 R2
       27 MOVE                             R5 R0
       28 LOADK                            R6 K4 [""]
       29 CALL                             R4 2 0
       30 CLOSEUPVALS                      R1
       31 RETURN                           R1 1

PROTO_4:
        0 MULK                             R4 R0 K0 [10000]
        1 FASTCALL1                        MATH_ROUND R4 ; [+2]
        2 GETIMPORT                        R3 K3 [math.round]
        4 CALL                             R3 1 1
        5 DIVK                             R2 R3 K0 [10000]
        6 FASTCALL1                        TOSTRING R2 ; [+2]
        7 GETIMPORT                        R1 K5 [tostring]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["Type"]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K1 ["TRACK_TYPES"]
        7 GETTABLEKS                       R5 R6 K2 ["Facs"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+25]
       11 NEWTABLE                         R4 0 1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K3 ["getValue"]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R1
       18 MOVE                             R9 R2
       19 CALL                             R6 3 1
       20 MULK                             R10 R6 K4 [10000]
       21 FASTCALL1                        MATH_ROUND R10 ; [+2]
       22 GETIMPORT                        R9 K7 [math.round]
       24 CALL                             R9 1 1
       25 DIVK                             R8 R9 K4 [10000]
       26 FASTCALL1                        TOSTRING R8 ; [+2]
       27 GETIMPORT                        R7 K9 [tostring]
       29 CALL                             R7 1 1
       30 MOVE                             R5 R7
       31 SETLIST                          R4 R5 1 [1]
       33 MOVE                             R3 R4
       34 RETURN                           R3 1
       35 GETTABLEKS                       R4 R0 K0 ["Type"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K1 ["TRACK_TYPES"]
       40 GETTABLEKS                       R5 R6 K10 ["IkTarget"]
       42 JUMPIFNOTEQ                      R4 R5 ; [+186]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K3 ["getValue"]
       47 GETTABLEKS                       R6 R0 K11 ["Components"]
       49 GETTABLEKS                       R5 R6 K12 ["offsetPos"]
       51 MOVE                             R6 R1
       52 MOVE                             R7 R2
       53 CALL                             R4 3 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R5 R6 K3 ["getValue"]
       57 GETTABLEKS                       R7 R0 K11 ["Components"]
       59 GETTABLEKS                       R6 R7 K13 ["offsetRot"]
       61 MOVE                             R7 R1
       62 MOVE                             R8 R2
       63 CALL                             R5 3 1
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R6 R7 K3 ["getValue"]
       67 GETTABLEKS                       R8 R0 K11 ["Components"]
       69 GETTABLEKS                       R7 R8 K14 ["weight"]
       71 MOVE                             R8 R1
       72 MOVE                             R9 R2
       73 CALL                             R6 3 1
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R7 R8 K3 ["getValue"]
       77 GETTABLEKS                       R9 R0 K11 ["Components"]
       79 GETTABLEKS                       R8 R9 K15 ["surface"]
       81 MOVE                             R9 R1
       82 MOVE                             R10 R2
       83 CALL                             R7 3 1
       84 NEWTABLE                         R8 0 10
       86 GETTABLEKS                       R10 R4 K16 ["X"]
       88 MULK                             R14 R10 K4 [10000]
       89 FASTCALL1                        MATH_ROUND R14 ; [+2]
       90 GETIMPORT                        R13 K7 [math.round]
       92 CALL                             R13 1 1
       93 DIVK                             R12 R13 K4 [10000]
       94 FASTCALL1                        TOSTRING R12 ; [+2]
       95 GETIMPORT                        R11 K9 [tostring]
       97 CALL                             R11 1 1
       98 MOVE                             R9 R11
       99 GETTABLEKS                       R11 R4 K17 ["Y"]
      101 MULK                             R15 R11 K4 [10000]
      102 FASTCALL1                        MATH_ROUND R15 ; [+2]
      103 GETIMPORT                        R14 K7 [math.round]
      105 CALL                             R14 1 1
      106 DIVK                             R13 R14 K4 [10000]
      107 FASTCALL1                        TOSTRING R13 ; [+2]
      108 GETIMPORT                        R12 K9 [tostring]
      110 CALL                             R12 1 1
      111 MOVE                             R10 R12
      112 GETTABLEKS                       R12 R4 K18 ["Z"]
      114 MULK                             R16 R12 K4 [10000]
      115 FASTCALL1                        MATH_ROUND R16 ; [+2]
      116 GETIMPORT                        R15 K7 [math.round]
      118 CALL                             R15 1 1
      119 DIVK                             R14 R15 K4 [10000]
      120 FASTCALL1                        TOSTRING R14 ; [+2]
      121 GETIMPORT                        R13 K9 [tostring]
      123 CALL                             R13 1 1
      124 MOVE                             R11 R13
      125 GETTABLEKS                       R14 R5 K16 ["X"]
      127 FASTCALL1                        MATH_DEG R14 ; [+2]
      128 GETIMPORT                        R13 K20 [math.deg]
      130 CALL                             R13 1 1
      131 MULK                             R17 R13 K4 [10000]
      132 FASTCALL1                        MATH_ROUND R17 ; [+2]
      133 GETIMPORT                        R16 K7 [math.round]
      135 CALL                             R16 1 1
      136 DIVK                             R15 R16 K4 [10000]
      137 FASTCALL1                        TOSTRING R15 ; [+2]
      138 GETIMPORT                        R14 K9 [tostring]
      140 CALL                             R14 1 1
      141 MOVE                             R12 R14
      142 GETTABLEKS                       R15 R5 K17 ["Y"]
      144 FASTCALL1                        MATH_DEG R15 ; [+2]
      145 GETIMPORT                        R14 K20 [math.deg]
      147 CALL                             R14 1 1
      148 MULK                             R18 R14 K4 [10000]
      149 FASTCALL1                        MATH_ROUND R18 ; [+2]
      150 GETIMPORT                        R17 K7 [math.round]
      152 CALL                             R17 1 1
      153 DIVK                             R16 R17 K4 [10000]
      154 FASTCALL1                        TOSTRING R16 ; [+2]
      155 GETIMPORT                        R15 K9 [tostring]
      157 CALL                             R15 1 1
      158 MOVE                             R13 R15
      159 GETTABLEKS                       R16 R5 K18 ["Z"]
      161 FASTCALL1                        MATH_DEG R16 ; [+2]
      162 GETIMPORT                        R15 K20 [math.deg]
      164 CALL                             R15 1 1
      165 MULK                             R19 R15 K4 [10000]
      166 FASTCALL1                        MATH_ROUND R19 ; [+2]
      167 GETIMPORT                        R18 K7 [math.round]
      169 CALL                             R18 1 1
      170 DIVK                             R17 R18 K4 [10000]
      171 FASTCALL1                        TOSTRING R17 ; [+2]
      172 GETIMPORT                        R16 K9 [tostring]
      174 CALL                             R16 1 1
      175 MOVE                             R14 R16
      176 MULK                             R18 R6 K4 [10000]
      177 FASTCALL1                        MATH_ROUND R18 ; [+2]
      178 GETIMPORT                        R17 K7 [math.round]
      180 CALL                             R17 1 1
      181 DIVK                             R16 R17 K4 [10000]
      182 FASTCALL1                        TOSTRING R16 ; [+2]
      183 GETIMPORT                        R15 K9 [tostring]
      185 CALL                             R15 1 1
      186 GETTABLEKS                       R17 R7 K16 ["X"]
      188 MULK                             R21 R17 K4 [10000]
      189 FASTCALL1                        MATH_ROUND R21 ; [+2]
      190 GETIMPORT                        R20 K7 [math.round]
      192 CALL                             R20 1 1
      193 DIVK                             R19 R20 K4 [10000]
      194 FASTCALL1                        TOSTRING R19 ; [+2]
      195 GETIMPORT                        R18 K9 [tostring]
      197 CALL                             R18 1 1
      198 MOVE                             R16 R18
      199 GETTABLEKS                       R18 R7 K17 ["Y"]
      201 MULK                             R22 R18 K4 [10000]
      202 FASTCALL1                        MATH_ROUND R22 ; [+2]
      203 GETIMPORT                        R21 K7 [math.round]
      205 CALL                             R21 1 1
      206 DIVK                             R20 R21 K4 [10000]
      207 FASTCALL1                        TOSTRING R20 ; [+2]
      208 GETIMPORT                        R19 K9 [tostring]
      210 CALL                             R19 1 1
      211 MOVE                             R17 R19
      212 GETTABLEKS                       R19 R7 K18 ["Z"]
      214 MULK                             R23 R19 K4 [10000]
      215 FASTCALL1                        MATH_ROUND R23 ; [+2]
      216 GETIMPORT                        R22 K7 [math.round]
      218 CALL                             R22 1 1
      219 DIVK                             R21 R22 K4 [10000]
      220 FASTCALL1                        TOSTRING R21 ; [+2]
      221 GETIMPORT                        R20 K9 [tostring]
      223 CALL                             R20 1 1
      224 MOVE                             R18 R20
      225 SETLIST                          R8 R9 10 [1]
      227 MOVE                             R3 R8
      228 RETURN                           R3 1
      229 GETTABLEKS                       R4 R0 K0 ["Type"]
      231 GETUPVAL                         R7 0
      232 GETTABLEKS                       R6 R7 K1 ["TRACK_TYPES"]
      234 GETTABLEKS                       R5 R6 K21 ["CFrame"]
      236 JUMPIFNOTEQ                      R4 R5 ; [+103]
      238 GETUPVAL                         R5 1
      239 GETTABLEKS                       R4 R5 K3 ["getValue"]
      241 MOVE                             R5 R0
      242 MOVE                             R6 R1
      243 MOVE                             R7 R2
      244 CALL                             R4 3 1
      245 NAMECALL                         R5 R4 K22 ["ToEulerAnglesXYZ"]
      247 CALL                             R5 1 3
      248 NEWTABLE                         R8 0 6
      250 GETTABLEKS                       R10 R4 K16 ["X"]
      252 MULK                             R14 R10 K4 [10000]
      253 FASTCALL1                        MATH_ROUND R14 ; [+2]
      254 GETIMPORT                        R13 K7 [math.round]
      256 CALL                             R13 1 1
      257 DIVK                             R12 R13 K4 [10000]
      258 FASTCALL1                        TOSTRING R12 ; [+2]
      259 GETIMPORT                        R11 K9 [tostring]
      261 CALL                             R11 1 1
      262 MOVE                             R9 R11
      263 GETTABLEKS                       R11 R4 K17 ["Y"]
      265 MULK                             R15 R11 K4 [10000]
      266 FASTCALL1                        MATH_ROUND R15 ; [+2]
      267 GETIMPORT                        R14 K7 [math.round]
      269 CALL                             R14 1 1
      270 DIVK                             R13 R14 K4 [10000]
      271 FASTCALL1                        TOSTRING R13 ; [+2]
      272 GETIMPORT                        R12 K9 [tostring]
      274 CALL                             R12 1 1
      275 MOVE                             R10 R12
      276 GETTABLEKS                       R12 R4 K18 ["Z"]
      278 MULK                             R16 R12 K4 [10000]
      279 FASTCALL1                        MATH_ROUND R16 ; [+2]
      280 GETIMPORT                        R15 K7 [math.round]
      282 CALL                             R15 1 1
      283 DIVK                             R14 R15 K4 [10000]
      284 FASTCALL1                        TOSTRING R14 ; [+2]
      285 GETIMPORT                        R13 K9 [tostring]
      287 CALL                             R13 1 1
      288 MOVE                             R11 R13
      289 FASTCALL1                        MATH_DEG R5 ; [+3]
      290 MOVE                             R14 R5
      291 GETIMPORT                        R13 K20 [math.deg]
      293 CALL                             R13 1 1
      294 MULK                             R17 R13 K4 [10000]
      295 FASTCALL1                        MATH_ROUND R17 ; [+2]
      296 GETIMPORT                        R16 K7 [math.round]
      298 CALL                             R16 1 1
      299 DIVK                             R15 R16 K4 [10000]
      300 FASTCALL1                        TOSTRING R15 ; [+2]
      301 GETIMPORT                        R14 K9 [tostring]
      303 CALL                             R14 1 1
      304 MOVE                             R12 R14
      305 FASTCALL1                        MATH_DEG R6 ; [+3]
      306 MOVE                             R15 R6
      307 GETIMPORT                        R14 K20 [math.deg]
      309 CALL                             R14 1 1
      310 MULK                             R18 R14 K4 [10000]
      311 FASTCALL1                        MATH_ROUND R18 ; [+2]
      312 GETIMPORT                        R17 K7 [math.round]
      314 CALL                             R17 1 1
      315 DIVK                             R16 R17 K4 [10000]
      316 FASTCALL1                        TOSTRING R16 ; [+2]
      317 GETIMPORT                        R15 K9 [tostring]
      319 CALL                             R15 1 1
      320 MOVE                             R13 R15
      321 FASTCALL1                        MATH_DEG R7 ; [+3]
      322 MOVE                             R16 R7
      323 GETIMPORT                        R15 K20 [math.deg]
      325 CALL                             R15 1 1
      326 MULK                             R19 R15 K4 [10000]
      327 FASTCALL1                        MATH_ROUND R19 ; [+2]
      328 GETIMPORT                        R18 K7 [math.round]
      330 CALL                             R18 1 1
      331 DIVK                             R17 R18 K4 [10000]
      332 FASTCALL1                        TOSTRING R17 ; [+2]
      333 GETIMPORT                        R16 K9 [tostring]
      335 CALL                             R16 1 1
      336 MOVE                             R14 R16
      337 SETLIST                          R8 R9 6 [1]
      339 MOVE                             R3 R8
      340 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["TICK_FREQUENCY"]
        3 DIV                              R5 R0 R6
        4 MULK                             R9 R5 K1 [10000]
        5 FASTCALL1                        MATH_ROUND R9 ; [+2]
        6 GETIMPORT                        R8 K4 [math.round]
        8 CALL                             R8 1 1
        9 DIVK                             R7 R8 K1 [10000]
       10 FASTCALL1                        TOSTRING R7 ; [+2]
       11 GETIMPORT                        R6 K6 [tostring]
       13 CALL                             R6 1 1
       14 MOVE                             R3 R6
       15 LOADK                            R4 K7 [","]
       16 CONCAT                           R2 R3 R4
       17 MOVE                             R4 R2
       18 GETIMPORT                        R7 K10 [table.concat]
       20 MOVE                             R8 R1
       21 LOADK                            R9 K7 [","]
       22 CALL                             R7 2 1
       23 MOVE                             R5 R7
       24 LOADK                            R6 K11 ["\n"]
       25 CONCAT                           R3 R4 R6
       26 RETURN                           R3 1

PROTO_7:
        0 LOADN                            R4 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          REF R4
        3 JUMPIF                           R0 ; [+1]
        4 JUMP                             ; [+25]
        5 DUPCLOSURE                       R6 K0 [PROTO_0]
        6 CAPTURE                          VAL R6
        7 GETTABLEKS                       R7 R0 K1 ["Components"]
        9 JUMPIFNOT                        R7 ; [+16]
       10 GETIMPORT                        R7 K3 [pairs]
       12 GETTABLEKS                       R8 R0 K1 ["Components"]
       14 CALL                             R7 1 3
       15 FORGPREP_NEXT                    R7
       16 MOVE                             R12 R6
       17 MOVE                             R13 R11
       18 LOADK                            R15 K4 [""]
       19 MOVE                             R16 R10
       20 CONCAT                           R14 R15 R16
       21 MOVE                             R15 R5
       22 CALL                             R12 3 0
       23 FORGLOOP                         R7 2 ; [-8]
       25 JUMP                             ; [+4]
       26 MOVE                             R7 R5
       27 MOVE                             R8 R0
       28 LOADK                            R9 K4 [""]
       29 CALL                             R7 2 0
       30 MOVE                             R3 R4
       31 CLOSEUPVALS                      R4
       32 LOADNIL                          R4
       33 JUMPIFNOT                        R0 ; [+55]
       34 GETTABLEKS                       R5 R0 K5 ["Type"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K6 ["TRACK_TYPES"]
       39 GETTABLEKS                       R6 R7 K7 ["Facs"]
       41 JUMPIFNOTEQ                      R5 R6 ; [+9]
       43 NEWTABLE                         R5 0 2
       45 ORK                              R6 R1 K8 ["FACS"]
       46 LOADK                            R7 K9 ["Value"]
       47 SETLIST                          R5 R6 2 [1]
       49 MOVE                             R4 R5
       50 JUMP                             ; [+38]
       51 GETTABLEKS                       R5 R0 K5 ["Type"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K6 ["TRACK_TYPES"]
       56 GETTABLEKS                       R6 R7 K10 ["IkTarget"]
       58 JUMPIFNOTEQ                      R5 R6 ; [+18]
       60 NEWTABLE                         R5 0 11
       62 ORK                              R6 R1 K11 ["IK"]
       63 LOADK                            R7 K12 ["POx"]
       64 LOADK                            R8 K13 ["POy"]
       65 LOADK                            R9 K14 ["POz"]
       66 LOADK                            R10 K15 ["ROx"]
       67 LOADK                            R11 K16 ["ROy"]
       68 LOADK                            R12 K17 ["ROz"]
       69 LOADK                            R13 K18 ["weight"]
       70 LOADK                            R14 K19 ["Sx"]
       71 LOADK                            R15 K20 ["Sy"]
       72 LOADK                            R16 K21 ["Sz"]
       73 SETLIST                          R5 R6 11 [1]
       75 MOVE                             R4 R5
       76 JUMP                             ; [+12]
       77 NEWTABLE                         R5 0 7
       79 ORK                              R6 R1 K22 ["CFrame"]
       80 LOADK                            R7 K23 ["Px"]
       81 LOADK                            R8 K24 ["Py"]
       82 LOADK                            R9 K25 ["Pz"]
       83 LOADK                            R10 K26 ["Rx"]
       84 LOADK                            R11 K27 ["Ry"]
       85 LOADK                            R12 K28 ["Rz"]
       86 SETLIST                          R5 R6 7 [1]
       88 MOVE                             R4 R5
       89 LOADK                            R6 K29 ["\n"]
       90 GETIMPORT                        R9 K32 [table.concat]
       92 MOVE                             R10 R4
       93 LOADK                            R11 K33 [","]
       94 CALL                             R9 2 1
       95 MOVE                             R7 R9
       96 LOADK                            R8 K29 ["\n"]
       97 CONCAT                           R5 R6 R8
       98 JUMPIFNOT                        R0 ; [+38]
       99 LOADN                            R8 0
      100 MOVE                             R6 R3
      101 LOADN                            R7 20
      102 FORNPREP                         R6
      103 GETUPVAL                         R9 1
      104 MOVE                             R10 R0
      105 MOVE                             R11 R8
      106 MOVE                             R12 R2
      107 CALL                             R9 3 1
      108 MOVE                             R10 R5
      109 GETUPVAL                         R17 0
      110 GETTABLEKS                       R16 R17 K34 ["TICK_FREQUENCY"]
      112 DIV                              R15 R8 R16
      113 MULK                             R19 R15 K35 [10000]
      114 FASTCALL1                        MATH_ROUND R19 ; [+2]
      115 GETIMPORT                        R18 K38 [math.round]
      117 CALL                             R18 1 1
      118 DIVK                             R17 R18 K35 [10000]
      119 FASTCALL1                        TOSTRING R17 ; [+2]
      120 GETIMPORT                        R16 K40 [tostring]
      122 CALL                             R16 1 1
      123 MOVE                             R13 R16
      124 LOADK                            R14 K33 [","]
      125 CONCAT                           R12 R13 R14
      126 MOVE                             R13 R12
      127 GETIMPORT                        R16 K32 [table.concat]
      129 MOVE                             R17 R9
      130 LOADK                            R18 K33 [","]
      131 CALL                             R16 2 1
      132 MOVE                             R14 R16
      133 LOADK                            R15 K29 ["\n"]
      134 CONCAT                           R11 R13 R15
      135 CONCAT                           R5 R10 R11
      136 FORNLOOP                         R6
      137 GETIMPORT                        R6 K42 [print]
      139 MOVE                             R7 R5
      140 CALL                             R6 1 0
      141 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["KeyframeUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 DUPCLOSURE                       R4 K11 [PROTO_3]
       27 DUPCLOSURE                       R5 K12 [PROTO_4]
       28 DUPCLOSURE                       R6 K13 [PROTO_5]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 DUPCLOSURE                       R7 K14 [PROTO_6]
       32 CAPTURE                          VAL R2
       33 DUPCLOSURE                       R8 K15 [PROTO_7]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R6
       36 RETURN                           R8 1
