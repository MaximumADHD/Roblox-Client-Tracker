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
        4 JUMP                             ; [+43]
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
       25 JUMP                             ; [+22]
       26 GETTABLEKS                       R4 R0 K5 ["Keyframes"]
       28 JUMPIFNOT                        R4 ; [+19]
       29 GETTABLEKS                       R5 R0 K5 ["Keyframes"]
       31 LENGTH                           R4 R5
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R5 R4 ; [+14]
       35 GETTABLEKS                       R7 R0 K5 ["Keyframes"]
       37 GETTABLEKS                       R9 R0 K5 ["Keyframes"]
       39 LENGTH                           R8 R9
       40 GETTABLE                         R6 R7 R8
       41 FASTCALL2                        MATH_MAX R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K8 [math.max]
       46 CALL                             R4 2 1
       47 MOVE                             R1 R4
       48 CLOSEUPVALS                      R1
       49 RETURN                           R1 1

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
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K1 ["TRACK_TYPES"]
        7 GETTABLEKS                       R5 R5 K2 ["Facs"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+25]
       11 NEWTABLE                         R4 0 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K3 ["getValue"]
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
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K1 ["TRACK_TYPES"]
       40 GETTABLEKS                       R5 R5 K10 ["IkTarget"]
       42 JUMPIFNOTEQ                      R4 R5 ; [+186]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K3 ["getValue"]
       47 GETTABLEKS                       R5 R0 K11 ["Components"]
       49 GETTABLEKS                       R5 R5 K12 ["offsetPos"]
       51 MOVE                             R6 R1
       52 MOVE                             R7 R2
       53 CALL                             R4 3 1
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K3 ["getValue"]
       57 GETTABLEKS                       R6 R0 K11 ["Components"]
       59 GETTABLEKS                       R6 R6 K13 ["offsetRot"]
       61 MOVE                             R7 R1
       62 MOVE                             R8 R2
       63 CALL                             R5 3 1
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K3 ["getValue"]
       67 GETTABLEKS                       R7 R0 K11 ["Components"]
       69 GETTABLEKS                       R7 R7 K14 ["weight"]
       71 MOVE                             R8 R1
       72 MOVE                             R9 R2
       73 CALL                             R6 3 1
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K3 ["getValue"]
       77 GETTABLEKS                       R8 R0 K11 ["Components"]
       79 GETTABLEKS                       R8 R8 K15 ["surface"]
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
      231 GETUPVAL                         R5 0
      232 GETTABLEKS                       R5 R5 K1 ["TRACK_TYPES"]
      234 GETTABLEKS                       R5 R5 K21 ["CFrame"]
      236 JUMPIFNOTEQ                      R4 R5 ; [+103]
      238 GETUPVAL                         R4 1
      239 GETTABLEKS                       R4 R4 K3 ["getValue"]
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
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["TICK_FREQUENCY"]
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
        4 JUMP                             ; [+43]
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
       25 JUMP                             ; [+22]
       26 GETTABLEKS                       R7 R0 K5 ["Keyframes"]
       28 JUMPIFNOT                        R7 ; [+19]
       29 GETTABLEKS                       R8 R0 K5 ["Keyframes"]
       31 LENGTH                           R7 R8
       32 LOADN                            R8 0
       33 JUMPIFNOTLT                      R8 R7 ; [+14]
       35 GETTABLEKS                       R10 R0 K5 ["Keyframes"]
       37 GETTABLEKS                       R12 R0 K5 ["Keyframes"]
       39 LENGTH                           R11 R12
       40 GETTABLE                         R9 R10 R11
       41 FASTCALL2                        MATH_MAX R4 R9 ; [+4]
       43 MOVE                             R8 R4
       44 GETIMPORT                        R7 K8 [math.max]
       46 CALL                             R7 2 1
       47 MOVE                             R4 R7
       48 MOVE                             R3 R4
       49 CLOSEUPVALS                      R4
       50 LOADNIL                          R4
       51 JUMPIFNOT                        R0 ; [+55]
       52 GETTABLEKS                       R5 R0 K9 ["Type"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K10 ["TRACK_TYPES"]
       57 GETTABLEKS                       R6 R6 K11 ["Facs"]
       59 JUMPIFNOTEQ                      R5 R6 ; [+9]
       61 NEWTABLE                         R5 0 2
       63 ORK                              R6 R1 K12 ["FACS"]
       64 LOADK                            R7 K13 ["Value"]
       65 SETLIST                          R5 R6 2 [1]
       67 MOVE                             R4 R5
       68 JUMP                             ; [+38]
       69 GETTABLEKS                       R5 R0 K9 ["Type"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K10 ["TRACK_TYPES"]
       74 GETTABLEKS                       R6 R6 K14 ["IkTarget"]
       76 JUMPIFNOTEQ                      R5 R6 ; [+18]
       78 NEWTABLE                         R5 0 11
       80 ORK                              R6 R1 K15 ["IK"]
       81 LOADK                            R7 K16 ["POx"]
       82 LOADK                            R8 K17 ["POy"]
       83 LOADK                            R9 K18 ["POz"]
       84 LOADK                            R10 K19 ["ROx"]
       85 LOADK                            R11 K20 ["ROy"]
       86 LOADK                            R12 K21 ["ROz"]
       87 LOADK                            R13 K22 ["weight"]
       88 LOADK                            R14 K23 ["Sx"]
       89 LOADK                            R15 K24 ["Sy"]
       90 LOADK                            R16 K25 ["Sz"]
       91 SETLIST                          R5 R6 11 [1]
       93 MOVE                             R4 R5
       94 JUMP                             ; [+12]
       95 NEWTABLE                         R5 0 7
       97 ORK                              R6 R1 K26 ["CFrame"]
       98 LOADK                            R7 K27 ["Px"]
       99 LOADK                            R8 K28 ["Py"]
      100 LOADK                            R9 K29 ["Pz"]
      101 LOADK                            R10 K30 ["Rx"]
      102 LOADK                            R11 K31 ["Ry"]
      103 LOADK                            R12 K32 ["Rz"]
      104 SETLIST                          R5 R6 7 [1]
      106 MOVE                             R4 R5
      107 LOADK                            R6 K33 ["\n"]
      108 GETIMPORT                        R9 K36 [table.concat]
      110 MOVE                             R10 R4
      111 LOADK                            R11 K37 [","]
      112 CALL                             R9 2 1
      113 MOVE                             R7 R9
      114 LOADK                            R8 K33 ["\n"]
      115 CONCAT                           R5 R6 R8
      116 JUMPIFNOT                        R0 ; [+38]
      117 LOADN                            R8 0
      118 MOVE                             R6 R3
      119 LOADN                            R7 20
      120 FORNPREP                         R6
      121 GETUPVAL                         R9 1
      122 MOVE                             R10 R0
      123 MOVE                             R11 R8
      124 MOVE                             R12 R2
      125 CALL                             R9 3 1
      126 MOVE                             R10 R5
      127 GETUPVAL                         R16 0
      128 GETTABLEKS                       R16 R16 K38 ["TICK_FREQUENCY"]
      130 DIV                              R15 R8 R16
      131 MULK                             R19 R15 K39 [10000]
      132 FASTCALL1                        MATH_ROUND R19 ; [+2]
      133 GETIMPORT                        R18 K41 [math.round]
      135 CALL                             R18 1 1
      136 DIVK                             R17 R18 K39 [10000]
      137 FASTCALL1                        TOSTRING R17 ; [+2]
      138 GETIMPORT                        R16 K43 [tostring]
      140 CALL                             R16 1 1
      141 MOVE                             R13 R16
      142 LOADK                            R14 K37 [","]
      143 CONCAT                           R12 R13 R14
      144 MOVE                             R13 R12
      145 GETIMPORT                        R16 K36 [table.concat]
      147 MOVE                             R17 R9
      148 LOADK                            R18 K37 [","]
      149 CALL                             R16 2 1
      150 MOVE                             R14 R16
      151 LOADK                            R15 K33 ["\n"]
      152 CONCAT                           R11 R13 R15
      153 CONCAT                           R5 R10 R11
      154 FORNLOOP                         R6
      155 GETIMPORT                        R6 K45 [print]
      157 MOVE                             R7 R5
      158 CALL                             R6 1 0
      159 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["KeyframeUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
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
