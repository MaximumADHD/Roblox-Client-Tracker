PROTO_0:
        0 GETTABLEKS                       R4 R0 K1 ["order"]
        2 ORK                              R3 R4 K0 [1]
        3 GETTABLEKS                       R5 R1 K1 ["order"]
        5 ORK                              R4 R5 K0 [1]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["priority"]
        2 GETTABLEKS                       R4 R1 K0 ["priority"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 NEWTABLE                         R6 0 0
        8 NEWTABLE                         R7 0 0
       10 MOVE                             R8 R1
       11 GETIMPORT                        R9 K2 [table.clone]
       13 MOVE                             R10 R0
       14 CALL                             R9 1 1
       15 GETIMPORT                        R10 K4 [table.sort]
       17 MOVE                             R11 R9
       18 DUPCLOSURE                       R12 K5 [PROTO_0]
       19 CALL                             R10 2 0
       20 NEWTABLE                         R10 0 0
       22 LOADN                            R11 0
       23 LENGTH                           R14 R9
       24 LOADN                            R12 1
       25 LOADN                            R13 255
       26 FORNPREP                         R12
       27 GETTABLE                         R15 R9 R14
       28 GETTABLEKS                       R15 R15 K6 ["id"]
       30 SETTABLE                         R11 R10 R15
       31 GETTABLE                         R15 R9 R14
       32 GETTABLEKS                       R15 R15 K7 ["minWidth"]
       34 ADD                              R11 R11 R15
       35 FORNLOOP                         R12
       36 LENGTH                           R13 R9
       37 GETTABLE                         R12 R9 R13
       38 GETIMPORT                        R13 K9 [ipairs]
       40 MOVE                             R14 R9
       41 CALL                             R13 1 3
       42 FORGPREP_INEXT                   R13
       43 GETTABLEKS                       R18 R17 K6 ["id"]
       45 GETTABLEKS                       R19 R12 K6 ["id"]
       47 JUMPIFEQ                         R18 R19 ; [+52]
       49 GETTABLEKS                       R19 R17 K6 ["id"]
       51 GETTABLE                         R18 R3 R19
       52 JUMPIFNOT                        R18 ; [+34]
       53 GETTABLEKS                       R19 R17 K7 ["minWidth"]
       55 GETTABLEKS                       R22 R17 K6 ["id"]
       57 GETTABLE                         R21 R10 R22
       58 SUB                              R20 R8 R21
       59 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
       61 GETIMPORT                        R18 K12 [math.max]
       63 CALL                             R18 2 1
       64 GETTABLEKS                       R21 R17 K6 ["id"]
       66 GETTABLE                         R20 R3 R21
       67 GETTABLEKS                       R21 R17 K7 ["minWidth"]
       69 FASTCALL3                        MATH_CLAMP R20 R21 R18
       71 MOVE                             R22 R18
       72 GETIMPORT                        R19 K14 [math.clamp]
       74 CALL                             R19 3 1
       75 GETTABLEKS                       R20 R17 K6 ["id"]
       77 GETIMPORT                        R21 K17 [UDim2.new]
       79 LOADN                            R22 0
       80 MOVE                             R23 R19
       81 LOADN                            R24 1
       82 LOADN                            R25 0
       83 CALL                             R21 4 1
       84 SETTABLE                         R21 R7 R20
       85 SUB                              R8 R8 R19
       86 JUMP                             ; [+13]
       87 GETTABLEKS                       R18 R17 K18 ["idealWidth"]
       89 ADD                              R4 R4 R18
       90 GETTABLEKS                       R18 R17 K7 ["minWidth"]
       92 ADD                              R5 R5 R18
       93 FASTCALL2                        TABLE_INSERT R6 R17 ; [+5]
       95 MOVE                             R19 R6
       96 MOVE                             R20 R17
       97 GETIMPORT                        R18 K20 [table.insert]
       99 CALL                             R18 2 0
      100 FORGLOOP                         R13 2 [inext] ; [-58]
      102 LENGTH                           R13 R6
      103 JUMPIFNOTEQKN                    R13 K21 [0] ; [+46]
      105 JUMPIFNOT                        R12 ; [+43]
      106 LOADN                            R13 0
      107 GETIMPORT                        R14 K9 [ipairs]
      109 MOVE                             R15 R9
      110 CALL                             R14 1 3
      111 FORGPREP_INEXT                   R14
      112 GETTABLEKS                       R19 R18 K6 ["id"]
      114 GETTABLEKS                       R20 R12 K6 ["id"]
      116 JUMPIFEQ                         R19 R20 ; [+13]
      118 GETTABLEKS                       R20 R18 K6 ["id"]
      120 GETTABLE                         R19 R7 R20
      121 JUMPIFNOT                        R19 ; [+8]
      122 GETTABLEKS                       R20 R18 K6 ["id"]
      124 GETTABLE                         R19 R7 R20
      125 GETTABLEKS                       R19 R19 K22 ["X"]
      127 GETTABLEKS                       R19 R19 K23 ["Offset"]
      129 ADD                              R13 R13 R19
      130 FORGLOOP                         R14 2 [inext] ; [-19]
      132 GETTABLEKS                       R14 R12 K6 ["id"]
      134 GETIMPORT                        R15 K17 [UDim2.new]
      136 LOADN                            R16 0
      137 GETTABLEKS                       R18 R12 K7 ["minWidth"]
      139 SUB                              R19 R1 R13
      140 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
      142 GETIMPORT                        R17 K12 [math.max]
      144 CALL                             R17 2 1
      145 LOADN                            R18 1
      146 LOADN                            R19 0
      147 CALL                             R15 4 1
      148 SETTABLE                         R15 R7 R14
      149 RETURN                           R7 1
      150 LOADN                            R13 0
      151 MOVE                             R14 R6
      152 LOADNIL                          R15
      153 LOADNIL                          R16
      154 FORGPREP                         R14
      155 GETTABLEKS                       R20 R18 K24 ["width"]
      157 ORK                              R19 R20 K21 [0]
      158 ADD                              R13 R13 R19
      159 FORGLOOP                         R14 2 ; [-5]
      161 JUMPIFNOTLE                      R4 R8 ; [+32]
      163 SUB                              R14 R8 R4
      164 MOVE                             R15 R6
      165 LOADNIL                          R16
      166 LOADNIL                          R17
      167 FORGPREP                         R15
      168 LOADN                            R21 0
      169 JUMPIFNOTLT                      R21 R13 ; [+5]
      171 GETTABLEKS                       R21 R19 K24 ["width"]
      173 DIV                              R20 R21 R13
      174 JUMPIF                           R20 ; [+2]
      175 LENGTH                           R21 R6
      176 DIVRK                            R20 R25 K21 [0]
      177 GETTABLEKS                       R22 R19 K18 ["idealWidth"]
      179 MUL                              R23 R14 R20
      180 ADD                              R21 R22 R23
      181 GETTABLEKS                       R22 R19 K6 ["id"]
      183 GETIMPORT                        R23 K17 [UDim2.new]
      185 LOADN                            R24 0
      186 MOVE                             R25 R21
      187 LOADN                            R26 1
      188 LOADN                            R27 0
      189 CALL                             R23 4 1
      190 SETTABLE                         R23 R7 R22
      191 FORGLOOP                         R15 2 ; [-24]
      193 JUMP                             ; [+106]
      194 JUMPIFNOTLE                      R5 R8 ; [+35]
      196 SUB                              R14 R8 R5
      197 SUB                              R15 R4 R5
      198 MOVE                             R16 R6
      199 LOADNIL                          R17
      200 LOADNIL                          R18
      201 FORGPREP                         R16
      202 GETTABLEKS                       R22 R20 K18 ["idealWidth"]
      204 GETTABLEKS                       R23 R20 K7 ["minWidth"]
      206 SUB                              R21 R22 R23
      207 LOADN                            R23 0
      208 JUMPIFNOTLT                      R23 R15 ; [+4]
      210 DIV                              R23 R21 R15
      211 MUL                              R22 R23 R14
      212 JUMPIF                           R22 ; [+1]
      213 LOADN                            R22 0
      214 GETTABLEKS                       R24 R20 K7 ["minWidth"]
      216 ADD                              R23 R24 R22
      217 GETTABLEKS                       R24 R20 K6 ["id"]
      219 GETIMPORT                        R25 K17 [UDim2.new]
      221 LOADN                            R26 0
      222 MOVE                             R27 R23
      223 LOADN                            R28 1
      224 LOADN                            R29 0
      225 CALL                             R25 4 1
      226 SETTABLE                         R25 R7 R24
      227 FORGLOOP                         R16 2 ; [-26]
      229 JUMP                             ; [+70]
      230 NEWTABLE                         R14 0 0
      232 MOVE                             R15 R6
      233 LOADNIL                          R16
      234 LOADNIL                          R17
      235 FORGPREP                         R15
      236 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      238 MOVE                             R21 R14
      239 MOVE                             R22 R19
      240 GETIMPORT                        R20 K20 [table.insert]
      242 CALL                             R20 2 0
      243 FORGLOOP                         R15 2 ; [-8]
      245 GETIMPORT                        R15 K4 [table.sort]
      247 MOVE                             R16 R14
      248 DUPCLOSURE                       R17 K26 [PROTO_1]
      249 CALL                             R15 2 0
      250 GETIMPORT                        R15 K9 [ipairs]
      252 MOVE                             R16 R14
      253 CALL                             R15 1 3
      254 FORGPREP_INEXT                   R15
      255 LENGTH                           R22 R14
      256 SUB                              R21 R22 R18
      257 ADDK                             R20 R21 K25 [1]
      258 JUMPIFNOTEQKN                    R20 K25 [1] ; [+19]
      260 GETTABLEKS                       R21 R19 K6 ["id"]
      262 GETIMPORT                        R22 K17 [UDim2.new]
      264 LOADN                            R23 0
      265 GETTABLEKS                       R26 R19 K7 ["minWidth"]
      267 FASTCALL2                        MATH_MAX R8 R26 ; [+4]
      269 MOVE                             R25 R8
      270 GETIMPORT                        R24 K12 [math.max]
      272 CALL                             R24 2 1
      273 LOADN                            R25 1
      274 LOADN                            R26 0
      275 CALL                             R22 4 1
      276 SETTABLE                         R22 R7 R21
      277 JUMP                             ; [+20]
      278 DIV                              R21 R8 R20
      279 GETTABLEKS                       R23 R19 K7 ["minWidth"]
      281 FASTCALL2                        MATH_MIN R23 R21 ; [+4]
      283 MOVE                             R24 R21
      284 GETIMPORT                        R22 K28 [math.min]
      286 CALL                             R22 2 1
      287 GETTABLEKS                       R23 R19 K6 ["id"]
      289 GETIMPORT                        R24 K17 [UDim2.new]
      291 LOADN                            R25 0
      292 MOVE                             R26 R22
      293 LOADN                            R27 1
      294 LOADN                            R28 0
      295 CALL                             R24 4 1
      296 SETTABLE                         R24 R7 R23
      297 SUB                              R8 R8 R22
      298 FORGLOOP                         R15 2 [inext] ; [-44]
      300 JUMPIFNOT                        R12 ; [+43]
      301 LOADN                            R14 0
      302 GETIMPORT                        R15 K9 [ipairs]
      304 MOVE                             R16 R9
      305 CALL                             R15 1 3
      306 FORGPREP_INEXT                   R15
      307 GETTABLEKS                       R20 R19 K6 ["id"]
      309 GETTABLEKS                       R21 R12 K6 ["id"]
      311 JUMPIFEQ                         R20 R21 ; [+13]
      313 GETTABLEKS                       R21 R19 K6 ["id"]
      315 GETTABLE                         R20 R7 R21
      316 JUMPIFNOT                        R20 ; [+8]
      317 GETTABLEKS                       R21 R19 K6 ["id"]
      319 GETTABLE                         R20 R7 R21
      320 GETTABLEKS                       R20 R20 K22 ["X"]
      322 GETTABLEKS                       R20 R20 K23 ["Offset"]
      324 ADD                              R14 R14 R20
      325 FORGLOOP                         R15 2 [inext] ; [-19]
      327 GETTABLEKS                       R15 R12 K6 ["id"]
      329 GETIMPORT                        R16 K17 [UDim2.new]
      331 LOADN                            R17 0
      332 GETTABLEKS                       R19 R12 K7 ["minWidth"]
      334 SUB                              R20 R1 R14
      335 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
      337 GETIMPORT                        R18 K12 [math.max]
      339 CALL                             R18 2 1
      340 LOADN                            R19 1
      341 LOADN                            R20 0
      342 CALL                             R16 4 1
      343 SETTABLE                         R16 R7 R15
      344 RETURN                           R7 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K1 ["order"]
        2 ORK                              R3 R4 K0 [1]
        3 GETTABLEKS                       R5 R1 K1 ["order"]
        5 ORK                              R4 R5 K0 [1]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["id"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R3 R0 K0 ["id"]
       12 GETTABLE                         R1 R2 R3
       13 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["priority"]
        2 GETTABLEKS                       R4 R1 K0 ["priority"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 NEWTABLE                         R6 0 0
        8 NEWTABLE                         R7 0 0
       10 GETIMPORT                        R8 K2 [table.clone]
       12 MOVE                             R9 R0
       13 CALL                             R8 1 1
       14 GETIMPORT                        R9 K4 [table.sort]
       16 MOVE                             R10 R8
       17 DUPCLOSURE                       R11 K5 [PROTO_3]
       18 CALL                             R9 2 0
       19 LENGTH                           R10 R8
       20 GETTABLE                         R9 R8 R10
       21 NEWCLOSURE                       R10 P1
       22 CAPTURE                          VAL R9
       23 CAPTURE                          VAL R3
       24 LOADN                            R11 0
       25 LOADN                            R12 0
       26 LOADN                            R13 0
       27 GETIMPORT                        R14 K7 [ipairs]
       29 MOVE                             R15 R8
       30 CALL                             R14 1 3
       31 FORGPREP_INEXT                   R14
       32 GETTABLEKS                       R20 R18 K8 ["id"]
       34 GETTABLEKS                       R21 R9 K8 ["id"]
       36 JUMPIFNOTEQ                      R20 R21 ; [+3]
       38 LOADNIL                          R19
       39 JUMP                             ; [+3]
       40 GETTABLEKS                       R20 R18 K8 ["id"]
       42 GETTABLE                         R19 R3 R20
       43 JUMPIFNOT                        R19 ; [+16]
       44 GETTABLEKS                       R20 R18 K9 ["minWidth"]
       46 ADD                              R12 R12 R20
       47 GETTABLEKS                       R21 R18 K9 ["minWidth"]
       49 FASTCALL2                        MATH_MAX R21 R19 ; [+4]
       51 MOVE                             R22 R19
       52 GETIMPORT                        R20 K12 [math.max]
       54 CALL                             R20 2 1
       55 GETTABLEKS                       R22 R18 K9 ["minWidth"]
       57 SUB                              R21 R20 R22
       58 ADD                              R13 R13 R21
       59 JUMP                             ; [+3]
       60 GETTABLEKS                       R20 R18 K9 ["minWidth"]
       62 ADD                              R11 R11 R20
       63 FORGLOOP                         R14 2 [inext] ; [-32]
       65 LOADN                            R15 0
       66 SUB                              R16 R1 R11
       67 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
       69 GETIMPORT                        R14 K12 [math.max]
       71 CALL                             R14 2 1
       72 LOADN                            R16 0
       73 SUB                              R17 R14 R12
       74 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
       76 GETIMPORT                        R15 K12 [math.max]
       78 CALL                             R15 2 1
       79 LOADN                            R16 1
       80 JUMPIFNOTLT                      R15 R13 ; [+5]
       82 LOADN                            R17 0
       83 JUMPIFNOTLT                      R17 R13 ; [+2]
       85 DIV                              R16 R15 R13
       86 MOVE                             R17 R1
       87 GETIMPORT                        R18 K7 [ipairs]
       89 MOVE                             R19 R8
       90 CALL                             R18 1 3
       91 FORGPREP_INEXT                   R18
       92 GETTABLEKS                       R24 R22 K8 ["id"]
       94 GETTABLEKS                       R25 R9 K8 ["id"]
       96 JUMPIFNOTEQ                      R24 R25 ; [+3]
       98 LOADNIL                          R23
       99 JUMP                             ; [+3]
      100 GETTABLEKS                       R24 R22 K8 ["id"]
      102 GETTABLE                         R23 R3 R24
      103 JUMPIFNOT                        R23 ; [+27]
      104 GETTABLEKS                       R25 R22 K9 ["minWidth"]
      106 FASTCALL2                        MATH_MAX R25 R23 ; [+4]
      108 MOVE                             R26 R23
      109 GETIMPORT                        R24 K12 [math.max]
      111 CALL                             R24 2 1
      112 GETTABLEKS                       R27 R22 K9 ["minWidth"]
      114 SUB                              R26 R24 R27
      115 MUL                              R25 R26 R16
      116 GETTABLEKS                       R27 R22 K9 ["minWidth"]
      118 ADD                              R26 R27 R25
      119 GETTABLEKS                       R27 R22 K8 ["id"]
      121 GETIMPORT                        R28 K15 [UDim2.new]
      123 LOADN                            R29 0
      124 MOVE                             R30 R26
      125 LOADN                            R31 1
      126 LOADN                            R32 0
      127 CALL                             R28 4 1
      128 SETTABLE                         R28 R7 R27
      129 SUB                              R17 R17 R26
      130 JUMP                             ; [+13]
      131 GETTABLEKS                       R24 R22 K16 ["idealWidth"]
      133 ADD                              R4 R4 R24
      134 GETTABLEKS                       R24 R22 K9 ["minWidth"]
      136 ADD                              R5 R5 R24
      137 FASTCALL2                        TABLE_INSERT R6 R22 ; [+5]
      139 MOVE                             R25 R6
      140 MOVE                             R26 R22
      141 GETIMPORT                        R24 K18 [table.insert]
      143 CALL                             R24 2 0
      144 FORGLOOP                         R18 2 [inext] ; [-53]
      146 LOADN                            R18 0
      147 MOVE                             R19 R6
      148 LOADNIL                          R20
      149 LOADNIL                          R21
      150 FORGPREP                         R19
      151 GETTABLEKS                       R25 R23 K20 ["width"]
      153 ORK                              R24 R25 K19 [0]
      154 ADD                              R18 R18 R24
      155 FORGLOOP                         R19 2 ; [-5]
      157 JUMPIFNOTLE                      R4 R17 ; [+32]
      159 SUB                              R19 R17 R4
      160 MOVE                             R20 R6
      161 LOADNIL                          R21
      162 LOADNIL                          R22
      163 FORGPREP                         R20
      164 LOADN                            R26 0
      165 JUMPIFNOTLT                      R26 R18 ; [+5]
      167 GETTABLEKS                       R26 R24 K20 ["width"]
      169 DIV                              R25 R26 R18
      170 JUMPIF                           R25 ; [+2]
      171 LENGTH                           R26 R6
      172 DIVRK                            R25 R21 K26 ["Offset"]
      173 GETTABLEKS                       R27 R24 K16 ["idealWidth"]
      175 MUL                              R28 R19 R25
      176 ADD                              R26 R27 R28
      177 GETTABLEKS                       R27 R24 K8 ["id"]
      179 GETIMPORT                        R28 K15 [UDim2.new]
      181 LOADN                            R29 0
      182 MOVE                             R30 R26
      183 LOADN                            R31 1
      184 LOADN                            R32 0
      185 CALL                             R28 4 1
      186 SETTABLE                         R28 R7 R27
      187 FORGLOOP                         R20 2 ; [-24]
      189 JUMP                             ; [+106]
      190 JUMPIFNOTLE                      R5 R17 ; [+35]
      192 SUB                              R19 R17 R5
      193 SUB                              R20 R4 R5
      194 MOVE                             R21 R6
      195 LOADNIL                          R22
      196 LOADNIL                          R23
      197 FORGPREP                         R21
      198 GETTABLEKS                       R27 R25 K16 ["idealWidth"]
      200 GETTABLEKS                       R28 R25 K9 ["minWidth"]
      202 SUB                              R26 R27 R28
      203 LOADN                            R28 0
      204 JUMPIFNOTLT                      R28 R20 ; [+4]
      206 DIV                              R28 R26 R20
      207 MUL                              R27 R28 R19
      208 JUMPIF                           R27 ; [+1]
      209 LOADN                            R27 0
      210 GETTABLEKS                       R29 R25 K9 ["minWidth"]
      212 ADD                              R28 R29 R27
      213 GETTABLEKS                       R29 R25 K8 ["id"]
      215 GETIMPORT                        R30 K15 [UDim2.new]
      217 LOADN                            R31 0
      218 MOVE                             R32 R28
      219 LOADN                            R33 1
      220 LOADN                            R34 0
      221 CALL                             R30 4 1
      222 SETTABLE                         R30 R7 R29
      223 FORGLOOP                         R21 2 ; [-26]
      225 JUMP                             ; [+70]
      226 NEWTABLE                         R19 0 0
      228 MOVE                             R20 R6
      229 LOADNIL                          R21
      230 LOADNIL                          R22
      231 FORGPREP                         R20
      232 FASTCALL2                        TABLE_INSERT R19 R24 ; [+5]
      234 MOVE                             R26 R19
      235 MOVE                             R27 R24
      236 GETIMPORT                        R25 K18 [table.insert]
      238 CALL                             R25 2 0
      239 FORGLOOP                         R20 2 ; [-8]
      241 GETIMPORT                        R20 K4 [table.sort]
      243 MOVE                             R21 R19
      244 DUPCLOSURE                       R22 K22 [PROTO_5]
      245 CALL                             R20 2 0
      246 GETIMPORT                        R20 K7 [ipairs]
      248 MOVE                             R21 R19
      249 CALL                             R20 1 3
      250 FORGPREP_INEXT                   R20
      251 LENGTH                           R27 R19
      252 SUB                              R26 R27 R23
      253 ADDK                             R25 R26 K21 [1]
      254 JUMPIFNOTEQKN                    R25 K21 [1] ; [+19]
      256 GETTABLEKS                       R26 R24 K8 ["id"]
      258 GETIMPORT                        R27 K15 [UDim2.new]
      260 LOADN                            R28 0
      261 GETTABLEKS                       R31 R24 K9 ["minWidth"]
      263 FASTCALL2                        MATH_MAX R17 R31 ; [+4]
      265 MOVE                             R30 R17
      266 GETIMPORT                        R29 K12 [math.max]
      268 CALL                             R29 2 1
      269 LOADN                            R30 1
      270 LOADN                            R31 0
      271 CALL                             R27 4 1
      272 SETTABLE                         R27 R7 R26
      273 JUMP                             ; [+20]
      274 DIV                              R26 R17 R25
      275 GETTABLEKS                       R28 R24 K9 ["minWidth"]
      277 FASTCALL2                        MATH_MIN R28 R26 ; [+4]
      279 MOVE                             R29 R26
      280 GETIMPORT                        R27 K24 [math.min]
      282 CALL                             R27 2 1
      283 GETTABLEKS                       R28 R24 K8 ["id"]
      285 GETIMPORT                        R29 K15 [UDim2.new]
      287 LOADN                            R30 0
      288 MOVE                             R31 R27
      289 LOADN                            R32 1
      290 LOADN                            R33 0
      291 CALL                             R29 4 1
      292 SETTABLE                         R29 R7 R28
      293 SUB                              R17 R17 R27
      294 FORGLOOP                         R20 2 [inext] ; [-44]
      296 JUMPIFNOT                        R9 ; [+43]
      297 LOADN                            R19 0
      298 GETIMPORT                        R20 K7 [ipairs]
      300 MOVE                             R21 R8
      301 CALL                             R20 1 3
      302 FORGPREP_INEXT                   R20
      303 GETTABLEKS                       R25 R24 K8 ["id"]
      305 GETTABLEKS                       R26 R9 K8 ["id"]
      307 JUMPIFEQ                         R25 R26 ; [+13]
      309 GETTABLEKS                       R26 R24 K8 ["id"]
      311 GETTABLE                         R25 R7 R26
      312 JUMPIFNOT                        R25 ; [+8]
      313 GETTABLEKS                       R26 R24 K8 ["id"]
      315 GETTABLE                         R25 R7 R26
      316 GETTABLEKS                       R25 R25 K25 ["X"]
      318 GETTABLEKS                       R25 R25 K26 ["Offset"]
      320 ADD                              R19 R19 R25
      321 FORGLOOP                         R20 2 [inext] ; [-19]
      323 GETTABLEKS                       R20 R9 K8 ["id"]
      325 GETIMPORT                        R21 K15 [UDim2.new]
      327 LOADN                            R22 0
      328 GETTABLEKS                       R24 R9 K9 ["minWidth"]
      330 SUB                              R25 R1 R19
      331 FASTCALL2                        MATH_MAX R24 R25 ; [+3]
      333 GETIMPORT                        R23 K12 [math.max]
      335 CALL                             R23 2 1
      336 LOADN                            R24 1
      337 LOADN                            R25 0
      338 CALL                             R21 4 1
      339 SETTABLE                         R21 R7 R20
      340 RETURN                           R7 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagSceneAnalysisBugfixesMay2026"]
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 1
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 1
       16 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_2]
       17 DUPCLOSURE                       R3 K10 [PROTO_6]
       18 DUPCLOSURE                       R4 K11 [PROTO_7]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R2
       22 RETURN                           R4 1
