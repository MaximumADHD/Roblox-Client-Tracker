PROTO_0:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.Unknown]
        2 JUMPIFNOTEQ                      R0 R2 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R2 R3 R1
        8 JUMPIF                           R2 ; [+2]
        9 LOADB                            R3 0
       10 RETURN                           R3 1
       11 GETTABLEKS                       R3 R0 K4 ["Value"]
       13 MOVE                             R4 R2
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R8 K5 ["min"]
       19 JUMPIFNOTLE                      R9 R3 ; [+7]
       21 GETTABLEKS                       R9 R8 K6 ["max"]
       23 JUMPIFNOTLE                      R3 R9 ; [+3]
       25 LOADB                            R9 1
       26 RETURN                           R9 1
       27 FORGLOOP                         R4 2 ; [-11]
       29 LOADB                            R4 0
       30 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R2
        2 MOVE                             R6 R3
        3 CALL                             R4 2 1
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R4 R2 K0 ["Value"]
        8 GETTABLE                         R5 R1 R4
        9 JUMPIFNOT                        R5 ; [+1]
       10 RETURN                           R0 0
       11 LOADB                            R5 1
       12 SETTABLE                         R5 R1 R4
       13 GETTABLEKS                       R7 R2 K1 ["Name"]
       15 FASTCALL2                        TABLE_INSERT R0 R7 ; [+4]
       17 MOVE                             R6 R0
       18 GETIMPORT                        R5 K4 [table.insert]
       20 CALL                             R5 2 0
       21 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 LENGTH                           R6 R5
       10 JUMPIFEQKN                       R6 K1 [1] ; [+3]
       12 LOADB                            R6 0
       13 RETURN                           R6 1
       14 FORGLOOP                         R1 2 ; [-6]
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 GETIMPORT                        R5 K3 [Enum.InputActionType.Direction1D]
        6 JUMPIFNOTEQ                      R1 R5 ; [+48]
        8 GETTABLEKS                       R5 R0 K4 ["up"]
       10 GETUPVAL                         R6 0
       11 MOVE                             R7 R5
       12 MOVE                             R8 R2
       13 CALL                             R6 2 1
       14 JUMPIF                           R6 ; [+1]
       15 JUMP                             ; [+15]
       16 GETTABLEKS                       R6 R5 K5 ["Value"]
       18 GETTABLE                         R7 R4 R6
       19 JUMPIFNOT                        R7 ; [+1]
       20 JUMP                             ; [+10]
       21 LOADB                            R7 1
       22 SETTABLE                         R7 R4 R6
       23 GETTABLEKS                       R9 R5 K6 ["Name"]
       25 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       27 MOVE                             R8 R3
       28 GETIMPORT                        R7 K9 [table.insert]
       30 CALL                             R7 2 0
       31 GETTABLEKS                       R5 R0 K10 ["down"]
       33 GETUPVAL                         R6 0
       34 MOVE                             R7 R5
       35 MOVE                             R8 R2
       36 CALL                             R6 2 1
       37 JUMPIF                           R6 ; [+1]
       38 JUMP                             ; [+255]
       39 GETTABLEKS                       R6 R5 K5 ["Value"]
       41 GETTABLE                         R7 R4 R6
       42 JUMPIFNOT                        R7 ; [+1]
       43 JUMP                             ; [+250]
       44 LOADB                            R7 1
       45 SETTABLE                         R7 R4 R6
       46 GETTABLEKS                       R9 R5 K6 ["Name"]
       48 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       50 MOVE                             R8 R3
       51 GETIMPORT                        R7 K9 [table.insert]
       53 CALL                             R7 2 0
       54 JUMP                             ; [+239]
       55 GETIMPORT                        R5 K12 [Enum.InputActionType.Direction2D]
       57 JUMPIFNOTEQ                      R1 R5 ; [+94]
       59 GETTABLEKS                       R5 R0 K4 ["up"]
       61 GETUPVAL                         R6 0
       62 MOVE                             R7 R5
       63 MOVE                             R8 R2
       64 CALL                             R6 2 1
       65 JUMPIF                           R6 ; [+1]
       66 JUMP                             ; [+15]
       67 GETTABLEKS                       R6 R5 K5 ["Value"]
       69 GETTABLE                         R7 R4 R6
       70 JUMPIFNOT                        R7 ; [+1]
       71 JUMP                             ; [+10]
       72 LOADB                            R7 1
       73 SETTABLE                         R7 R4 R6
       74 GETTABLEKS                       R9 R5 K6 ["Name"]
       76 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       78 MOVE                             R8 R3
       79 GETIMPORT                        R7 K9 [table.insert]
       81 CALL                             R7 2 0
       82 GETTABLEKS                       R5 R0 K13 ["left"]
       84 GETUPVAL                         R6 0
       85 MOVE                             R7 R5
       86 MOVE                             R8 R2
       87 CALL                             R6 2 1
       88 JUMPIF                           R6 ; [+1]
       89 JUMP                             ; [+15]
       90 GETTABLEKS                       R6 R5 K5 ["Value"]
       92 GETTABLE                         R7 R4 R6
       93 JUMPIFNOT                        R7 ; [+1]
       94 JUMP                             ; [+10]
       95 LOADB                            R7 1
       96 SETTABLE                         R7 R4 R6
       97 GETTABLEKS                       R9 R5 K6 ["Name"]
       99 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      101 MOVE                             R8 R3
      102 GETIMPORT                        R7 K9 [table.insert]
      104 CALL                             R7 2 0
      105 GETTABLEKS                       R5 R0 K10 ["down"]
      107 GETUPVAL                         R6 0
      108 MOVE                             R7 R5
      109 MOVE                             R8 R2
      110 CALL                             R6 2 1
      111 JUMPIF                           R6 ; [+1]
      112 JUMP                             ; [+15]
      113 GETTABLEKS                       R6 R5 K5 ["Value"]
      115 GETTABLE                         R7 R4 R6
      116 JUMPIFNOT                        R7 ; [+1]
      117 JUMP                             ; [+10]
      118 LOADB                            R7 1
      119 SETTABLE                         R7 R4 R6
      120 GETTABLEKS                       R9 R5 K6 ["Name"]
      122 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      124 MOVE                             R8 R3
      125 GETIMPORT                        R7 K9 [table.insert]
      127 CALL                             R7 2 0
      128 GETTABLEKS                       R5 R0 K14 ["right"]
      130 GETUPVAL                         R6 0
      131 MOVE                             R7 R5
      132 MOVE                             R8 R2
      133 CALL                             R6 2 1
      134 JUMPIF                           R6 ; [+1]
      135 JUMP                             ; [+158]
      136 GETTABLEKS                       R6 R5 K5 ["Value"]
      138 GETTABLE                         R7 R4 R6
      139 JUMPIFNOT                        R7 ; [+1]
      140 JUMP                             ; [+153]
      141 LOADB                            R7 1
      142 SETTABLE                         R7 R4 R6
      143 GETTABLEKS                       R9 R5 K6 ["Name"]
      145 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      147 MOVE                             R8 R3
      148 GETIMPORT                        R7 K9 [table.insert]
      150 CALL                             R7 2 0
      151 JUMP                             ; [+142]
      152 GETIMPORT                        R5 K16 [Enum.InputActionType.Direction3D]
      154 JUMPIFNOTEQ                      R1 R5 ; [+139]
      156 GETTABLEKS                       R5 R0 K4 ["up"]
      158 GETUPVAL                         R6 0
      159 MOVE                             R7 R5
      160 MOVE                             R8 R2
      161 CALL                             R6 2 1
      162 JUMPIF                           R6 ; [+1]
      163 JUMP                             ; [+15]
      164 GETTABLEKS                       R6 R5 K5 ["Value"]
      166 GETTABLE                         R7 R4 R6
      167 JUMPIFNOT                        R7 ; [+1]
      168 JUMP                             ; [+10]
      169 LOADB                            R7 1
      170 SETTABLE                         R7 R4 R6
      171 GETTABLEKS                       R9 R5 K6 ["Name"]
      173 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      175 MOVE                             R8 R3
      176 GETIMPORT                        R7 K9 [table.insert]
      178 CALL                             R7 2 0
      179 GETTABLEKS                       R5 R0 K13 ["left"]
      181 GETUPVAL                         R6 0
      182 MOVE                             R7 R5
      183 MOVE                             R8 R2
      184 CALL                             R6 2 1
      185 JUMPIF                           R6 ; [+1]
      186 JUMP                             ; [+15]
      187 GETTABLEKS                       R6 R5 K5 ["Value"]
      189 GETTABLE                         R7 R4 R6
      190 JUMPIFNOT                        R7 ; [+1]
      191 JUMP                             ; [+10]
      192 LOADB                            R7 1
      193 SETTABLE                         R7 R4 R6
      194 GETTABLEKS                       R9 R5 K6 ["Name"]
      196 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      198 MOVE                             R8 R3
      199 GETIMPORT                        R7 K9 [table.insert]
      201 CALL                             R7 2 0
      202 GETTABLEKS                       R5 R0 K17 ["forward"]
      204 GETUPVAL                         R6 0
      205 MOVE                             R7 R5
      206 MOVE                             R8 R2
      207 CALL                             R6 2 1
      208 JUMPIF                           R6 ; [+1]
      209 JUMP                             ; [+15]
      210 GETTABLEKS                       R6 R5 K5 ["Value"]
      212 GETTABLE                         R7 R4 R6
      213 JUMPIFNOT                        R7 ; [+1]
      214 JUMP                             ; [+10]
      215 LOADB                            R7 1
      216 SETTABLE                         R7 R4 R6
      217 GETTABLEKS                       R9 R5 K6 ["Name"]
      219 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      221 MOVE                             R8 R3
      222 GETIMPORT                        R7 K9 [table.insert]
      224 CALL                             R7 2 0
      225 GETTABLEKS                       R5 R0 K10 ["down"]
      227 GETUPVAL                         R6 0
      228 MOVE                             R7 R5
      229 MOVE                             R8 R2
      230 CALL                             R6 2 1
      231 JUMPIF                           R6 ; [+1]
      232 JUMP                             ; [+15]
      233 GETTABLEKS                       R6 R5 K5 ["Value"]
      235 GETTABLE                         R7 R4 R6
      236 JUMPIFNOT                        R7 ; [+1]
      237 JUMP                             ; [+10]
      238 LOADB                            R7 1
      239 SETTABLE                         R7 R4 R6
      240 GETTABLEKS                       R9 R5 K6 ["Name"]
      242 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      244 MOVE                             R8 R3
      245 GETIMPORT                        R7 K9 [table.insert]
      247 CALL                             R7 2 0
      248 GETTABLEKS                       R5 R0 K14 ["right"]
      250 GETUPVAL                         R6 0
      251 MOVE                             R7 R5
      252 MOVE                             R8 R2
      253 CALL                             R6 2 1
      254 JUMPIF                           R6 ; [+1]
      255 JUMP                             ; [+15]
      256 GETTABLEKS                       R6 R5 K5 ["Value"]
      258 GETTABLE                         R7 R4 R6
      259 JUMPIFNOT                        R7 ; [+1]
      260 JUMP                             ; [+10]
      261 LOADB                            R7 1
      262 SETTABLE                         R7 R4 R6
      263 GETTABLEKS                       R9 R5 K6 ["Name"]
      265 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      267 MOVE                             R8 R3
      268 GETIMPORT                        R7 K9 [table.insert]
      270 CALL                             R7 2 0
      271 GETTABLEKS                       R5 R0 K18 ["backward"]
      273 GETUPVAL                         R6 0
      274 MOVE                             R7 R5
      275 MOVE                             R8 R2
      276 CALL                             R6 2 1
      277 JUMPIF                           R6 ; [+1]
      278 JUMP                             ; [+15]
      279 GETTABLEKS                       R6 R5 K5 ["Value"]
      281 GETTABLE                         R7 R4 R6
      282 JUMPIFNOT                        R7 ; [+1]
      283 JUMP                             ; [+10]
      284 LOADB                            R7 1
      285 SETTABLE                         R7 R4 R6
      286 GETTABLEKS                       R9 R5 K6 ["Name"]
      288 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      290 MOVE                             R8 R3
      291 GETIMPORT                        R7 K9 [table.insert]
      293 CALL                             R7 2 0
      294 GETTABLEKS                       R5 R0 K19 ["keyCode"]
      296 GETUPVAL                         R6 0
      297 MOVE                             R7 R5
      298 MOVE                             R8 R2
      299 CALL                             R6 2 1
      300 JUMPIF                           R6 ; [+1]
      301 JUMP                             ; [+15]
      302 GETTABLEKS                       R6 R5 K5 ["Value"]
      304 GETTABLE                         R7 R4 R6
      305 JUMPIFNOT                        R7 ; [+1]
      306 JUMP                             ; [+10]
      307 LOADB                            R7 1
      308 SETTABLE                         R7 R4 R6
      309 GETTABLEKS                       R9 R5 K6 ["Name"]
      311 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      313 MOVE                             R8 R3
      314 GETIMPORT                        R7 K9 [table.insert]
      316 CALL                             R7 2 0
      317 JUMPIFNOTEQKS                    R2 K20 ["Touch"] ; [+9]
      319 GETTABLEKS                       R5 R0 K21 ["uiButton"]
      321 JUMPIFNOT                        R5 ; [+5]
      322 GETTABLEKS                       R6 R0 K21 ["uiButton"]
      324 GETTABLEKS                       R5 R6 K22 ["name"]
      326 RETURN                           R5 1
      327 LENGTH                           R5 R3
      328 JUMPIFNOTEQKN                    R5 K23 [0] ; [+3]
      330 LOADNIL                          R5
      331 RETURN                           R5 1
      332 LENGTH                           R6 R3
      333 JUMPIFNOTEQKN                    R6 K23 [0] ; [+3]
      335 LOADB                            R5 1
      336 JUMP                             ; [+12]
      337 MOVE                             R6 R3
      338 LOADNIL                          R7
      339 LOADNIL                          R8
      340 FORGPREP                         R6
      341 LENGTH                           R11 R10
      342 JUMPIFEQKN                       R11 K24 [1] ; [+3]
      344 LOADB                            R5 0
      345 JUMP                             ; [+3]
      346 FORGLOOP                         R6 2 ; [-6]
      348 LOADB                            R5 1
      349 JUMPIFNOT                        R5 ; [+6]
      350 GETIMPORT                        R5 K26 [table.concat]
      352 MOVE                             R6 R3
      353 LOADK                            R7 K27 [""]
      354 CALL                             R5 2 -1
      355 RETURN                           R5 -1
      356 GETIMPORT                        R5 K26 [table.concat]
      358 MOVE                             R6 R3
      359 LOADK                            R7 K28 [" + "]
      360 CALL                             R5 2 -1
      361 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K12 [{"MouseKeyboard", "Touch", "Gamepad", "VR"}]
       15 NEWTABLE                         R3 0 2
       17 DUPTABLE                         R4 K15 [{"min", "max"}]
       18 LOADN                            R5 8
       19 SETTABLEKS                       R5 R4 K13 ["min"]
       21 LOADN                            R5 66
       22 SETTABLEKS                       R5 R4 K14 ["max"]
       24 DUPTABLE                         R5 K15 [{"min", "max"}]
       25 LOADN                            R6 2
       26 SETTABLEKS                       R6 R5 K13 ["min"]
       28 LOADN                            R6 9
       29 SETTABLEKS                       R6 R5 K14 ["max"]
       31 SETLIST                          R3 R4 2 [1]
       33 SETTABLEKS                       R3 R2 K8 ["MouseKeyboard"]
       35 NEWTABLE                         R3 0 1
       37 DUPTABLE                         R4 K15 [{"min", "max"}]
       38 LOADN                            R5 10
       39 SETTABLEKS                       R5 R4 K13 ["min"]
       41 LOADN                            R5 10
       42 SETTABLEKS                       R5 R4 K14 ["max"]
       44 SETLIST                          R3 R4 1 [1]
       46 SETTABLEKS                       R3 R2 K9 ["Touch"]
       48 NEWTABLE                         R3 0 1
       50 DUPTABLE                         R4 K15 [{"min", "max"}]
       51 LOADN                            R5 232
       52 SETTABLEKS                       R5 R4 K13 ["min"]
       54 LOADN                            R5 1
       55 SETTABLEKS                       R5 R4 K14 ["max"]
       57 SETLIST                          R3 R4 1 [1]
       59 SETTABLEKS                       R3 R2 K10 ["Gamepad"]
       61 NEWTABLE                         R3 0 0
       63 SETTABLEKS                       R3 R2 K11 ["VR"]
       65 DUPCLOSURE                       R3 K16 [PROTO_0]
       66 CAPTURE                          VAL R2
       67 DUPCLOSURE                       R4 K17 [PROTO_1]
       68 CAPTURE                          VAL R3
       69 DUPCLOSURE                       R5 K18 [PROTO_2]
       70 DUPCLOSURE                       R6 K19 [PROTO_3]
       71 CAPTURE                          VAL R3
       72 RETURN                           R6 1
