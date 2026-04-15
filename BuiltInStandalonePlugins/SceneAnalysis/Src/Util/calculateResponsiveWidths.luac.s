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
        4 MOVE                             R2 R3
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 NEWTABLE                         R5 0 0
        9 NEWTABLE                         R6 0 0
       11 MOVE                             R7 R1
       12 GETIMPORT                        R8 K2 [table.clone]
       14 MOVE                             R9 R0
       15 CALL                             R8 1 1
       16 GETIMPORT                        R9 K4 [table.sort]
       18 MOVE                             R10 R8
       19 DUPCLOSURE                       R11 K5 [PROTO_0]
       20 CALL                             R9 2 0
       21 NEWTABLE                         R9 0 0
       23 LOADN                            R10 0
       24 LENGTH                           R13 R8
       25 LOADN                            R11 1
       26 LOADN                            R12 255
       27 FORNPREP                         R11
       28 GETTABLE                         R15 R8 R13
       29 GETTABLEKS                       R14 R15 K6 ["id"]
       31 SETTABLE                         R10 R9 R14
       32 GETTABLE                         R15 R8 R13
       33 GETTABLEKS                       R14 R15 K7 ["minWidth"]
       35 ADD                              R10 R10 R14
       36 FORNLOOP                         R11
       37 LENGTH                           R12 R8
       38 GETTABLE                         R11 R8 R12
       39 GETIMPORT                        R12 K9 [ipairs]
       41 MOVE                             R13 R8
       42 CALL                             R12 1 3
       43 FORGPREP_INEXT                   R12
       44 GETTABLEKS                       R17 R16 K6 ["id"]
       46 GETTABLEKS                       R18 R11 K6 ["id"]
       48 JUMPIFEQ                         R17 R18 ; [+52]
       50 GETTABLEKS                       R18 R16 K6 ["id"]
       52 GETTABLE                         R17 R2 R18
       53 JUMPIFNOT                        R17 ; [+34]
       54 GETTABLEKS                       R18 R16 K7 ["minWidth"]
       56 GETTABLEKS                       R21 R16 K6 ["id"]
       58 GETTABLE                         R20 R9 R21
       59 SUB                              R19 R7 R20
       60 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
       62 GETIMPORT                        R17 K12 [math.max]
       64 CALL                             R17 2 1
       65 GETTABLEKS                       R20 R16 K6 ["id"]
       67 GETTABLE                         R19 R2 R20
       68 GETTABLEKS                       R20 R16 K7 ["minWidth"]
       70 FASTCALL3                        MATH_CLAMP R19 R20 R17
       72 MOVE                             R21 R17
       73 GETIMPORT                        R18 K14 [math.clamp]
       75 CALL                             R18 3 1
       76 GETTABLEKS                       R19 R16 K6 ["id"]
       78 GETIMPORT                        R20 K17 [UDim2.new]
       80 LOADN                            R21 0
       81 MOVE                             R22 R18
       82 LOADN                            R23 1
       83 LOADN                            R24 0
       84 CALL                             R20 4 1
       85 SETTABLE                         R20 R6 R19
       86 SUB                              R7 R7 R18
       87 JUMP                             ; [+13]
       88 GETTABLEKS                       R17 R16 K18 ["idealWidth"]
       90 ADD                              R3 R3 R17
       91 GETTABLEKS                       R17 R16 K7 ["minWidth"]
       93 ADD                              R4 R4 R17
       94 FASTCALL2                        TABLE_INSERT R5 R16 ; [+5]
       96 MOVE                             R18 R5
       97 MOVE                             R19 R16
       98 GETIMPORT                        R17 K20 [table.insert]
      100 CALL                             R17 2 0
      101 FORGLOOP                         R12 2 [inext] ; [-58]
      103 LENGTH                           R12 R5
      104 JUMPIFNOTEQKN                    R12 K21 [0] ; [+46]
      106 JUMPIFNOT                        R11 ; [+43]
      107 LOADN                            R12 0
      108 GETIMPORT                        R13 K9 [ipairs]
      110 MOVE                             R14 R8
      111 CALL                             R13 1 3
      112 FORGPREP_INEXT                   R13
      113 GETTABLEKS                       R18 R17 K6 ["id"]
      115 GETTABLEKS                       R19 R11 K6 ["id"]
      117 JUMPIFEQ                         R18 R19 ; [+13]
      119 GETTABLEKS                       R19 R17 K6 ["id"]
      121 GETTABLE                         R18 R6 R19
      122 JUMPIFNOT                        R18 ; [+8]
      123 GETTABLEKS                       R21 R17 K6 ["id"]
      125 GETTABLE                         R20 R6 R21
      126 GETTABLEKS                       R19 R20 K22 ["X"]
      128 GETTABLEKS                       R18 R19 K23 ["Offset"]
      130 ADD                              R12 R12 R18
      131 FORGLOOP                         R13 2 [inext] ; [-19]
      133 GETTABLEKS                       R13 R11 K6 ["id"]
      135 GETIMPORT                        R14 K17 [UDim2.new]
      137 LOADN                            R15 0
      138 GETTABLEKS                       R17 R11 K7 ["minWidth"]
      140 SUB                              R18 R1 R12
      141 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      143 GETIMPORT                        R16 K12 [math.max]
      145 CALL                             R16 2 1
      146 LOADN                            R17 1
      147 LOADN                            R18 0
      148 CALL                             R14 4 1
      149 SETTABLE                         R14 R6 R13
      150 RETURN                           R6 1
      151 LOADN                            R12 0
      152 MOVE                             R13 R5
      153 LOADNIL                          R14
      154 LOADNIL                          R15
      155 FORGPREP                         R13
      156 GETTABLEKS                       R19 R17 K24 ["width"]
      158 ORK                              R18 R19 K21 [0]
      159 ADD                              R12 R12 R18
      160 FORGLOOP                         R13 2 ; [-5]
      162 JUMPIFNOTLE                      R3 R7 ; [+32]
      164 SUB                              R13 R7 R3
      165 MOVE                             R14 R5
      166 LOADNIL                          R15
      167 LOADNIL                          R16
      168 FORGPREP                         R14
      169 LOADN                            R20 0
      170 JUMPIFNOTLT                      R20 R12 ; [+5]
      172 GETTABLEKS                       R20 R18 K24 ["width"]
      174 DIV                              R19 R20 R12
      175 JUMPIF                           R19 ; [+2]
      176 LENGTH                           R20 R5
      177 DIVRK                            R19 R25 K20 [table.insert]
      178 GETTABLEKS                       R21 R18 K18 ["idealWidth"]
      180 MUL                              R22 R13 R19
      181 ADD                              R20 R21 R22
      182 GETTABLEKS                       R21 R18 K6 ["id"]
      184 GETIMPORT                        R22 K17 [UDim2.new]
      186 LOADN                            R23 0
      187 MOVE                             R24 R20
      188 LOADN                            R25 1
      189 LOADN                            R26 0
      190 CALL                             R22 4 1
      191 SETTABLE                         R22 R6 R21
      192 FORGLOOP                         R14 2 ; [-24]
      194 JUMP                             ; [+106]
      195 JUMPIFNOTLE                      R4 R7 ; [+35]
      197 SUB                              R13 R7 R4
      198 SUB                              R14 R3 R4
      199 MOVE                             R15 R5
      200 LOADNIL                          R16
      201 LOADNIL                          R17
      202 FORGPREP                         R15
      203 GETTABLEKS                       R21 R19 K18 ["idealWidth"]
      205 GETTABLEKS                       R22 R19 K7 ["minWidth"]
      207 SUB                              R20 R21 R22
      208 LOADN                            R22 0
      209 JUMPIFNOTLT                      R22 R14 ; [+4]
      211 DIV                              R22 R20 R14
      212 MUL                              R21 R22 R13
      213 JUMPIF                           R21 ; [+1]
      214 LOADN                            R21 0
      215 GETTABLEKS                       R23 R19 K7 ["minWidth"]
      217 ADD                              R22 R23 R21
      218 GETTABLEKS                       R23 R19 K6 ["id"]
      220 GETIMPORT                        R24 K17 [UDim2.new]
      222 LOADN                            R25 0
      223 MOVE                             R26 R22
      224 LOADN                            R27 1
      225 LOADN                            R28 0
      226 CALL                             R24 4 1
      227 SETTABLE                         R24 R6 R23
      228 FORGLOOP                         R15 2 ; [-26]
      230 JUMP                             ; [+70]
      231 NEWTABLE                         R13 0 0
      233 MOVE                             R14 R5
      234 LOADNIL                          R15
      235 LOADNIL                          R16
      236 FORGPREP                         R14
      237 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
      239 MOVE                             R20 R13
      240 MOVE                             R21 R18
      241 GETIMPORT                        R19 K20 [table.insert]
      243 CALL                             R19 2 0
      244 FORGLOOP                         R14 2 ; [-8]
      246 GETIMPORT                        R14 K4 [table.sort]
      248 MOVE                             R15 R13
      249 DUPCLOSURE                       R16 K26 [PROTO_1]
      250 CALL                             R14 2 0
      251 GETIMPORT                        R14 K9 [ipairs]
      253 MOVE                             R15 R13
      254 CALL                             R14 1 3
      255 FORGPREP_INEXT                   R14
      256 LENGTH                           R21 R13
      257 SUB                              R20 R21 R17
      258 ADDK                             R19 R20 K25 [1]
      259 JUMPIFNOTEQKN                    R19 K25 [1] ; [+19]
      261 GETTABLEKS                       R20 R18 K6 ["id"]
      263 GETIMPORT                        R21 K17 [UDim2.new]
      265 LOADN                            R22 0
      266 GETTABLEKS                       R25 R18 K7 ["minWidth"]
      268 FASTCALL2                        MATH_MAX R7 R25 ; [+4]
      270 MOVE                             R24 R7
      271 GETIMPORT                        R23 K12 [math.max]
      273 CALL                             R23 2 1
      274 LOADN                            R24 1
      275 LOADN                            R25 0
      276 CALL                             R21 4 1
      277 SETTABLE                         R21 R6 R20
      278 JUMP                             ; [+20]
      279 DIV                              R20 R7 R19
      280 GETTABLEKS                       R22 R18 K7 ["minWidth"]
      282 FASTCALL2                        MATH_MIN R22 R20 ; [+4]
      284 MOVE                             R23 R20
      285 GETIMPORT                        R21 K28 [math.min]
      287 CALL                             R21 2 1
      288 GETTABLEKS                       R22 R18 K6 ["id"]
      290 GETIMPORT                        R23 K17 [UDim2.new]
      292 LOADN                            R24 0
      293 MOVE                             R25 R21
      294 LOADN                            R26 1
      295 LOADN                            R27 0
      296 CALL                             R23 4 1
      297 SETTABLE                         R23 R6 R22
      298 SUB                              R7 R7 R21
      299 FORGLOOP                         R14 2 [inext] ; [-44]
      301 JUMPIFNOT                        R11 ; [+43]
      302 LOADN                            R13 0
      303 GETIMPORT                        R14 K9 [ipairs]
      305 MOVE                             R15 R8
      306 CALL                             R14 1 3
      307 FORGPREP_INEXT                   R14
      308 GETTABLEKS                       R19 R18 K6 ["id"]
      310 GETTABLEKS                       R20 R11 K6 ["id"]
      312 JUMPIFEQ                         R19 R20 ; [+13]
      314 GETTABLEKS                       R20 R18 K6 ["id"]
      316 GETTABLE                         R19 R6 R20
      317 JUMPIFNOT                        R19 ; [+8]
      318 GETTABLEKS                       R22 R18 K6 ["id"]
      320 GETTABLE                         R21 R6 R22
      321 GETTABLEKS                       R20 R21 K22 ["X"]
      323 GETTABLEKS                       R19 R20 K23 ["Offset"]
      325 ADD                              R13 R13 R19
      326 FORGLOOP                         R14 2 [inext] ; [-19]
      328 GETTABLEKS                       R14 R11 K6 ["id"]
      330 GETIMPORT                        R15 K17 [UDim2.new]
      332 LOADN                            R16 0
      333 GETTABLEKS                       R18 R11 K7 ["minWidth"]
      335 SUB                              R19 R1 R13
      336 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
      338 GETIMPORT                        R17 K12 [math.max]
      340 CALL                             R17 2 1
      341 LOADN                            R18 1
      342 LOADN                            R19 0
      343 CALL                             R15 4 1
      344 SETTABLE                         R15 R6 R14
      345 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
