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
       13 MOVE                             R6 R0
       14 GETUPVAL                         R7 1
       15 MOVE                             R9 R2
       16 NAMECALL                         R7 R7 K1 ["GetStringForKeyCode"]
       18 CALL                             R7 2 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R5 K4 [table.insert]
       22 CALL                             R5 -1 0
       23 RETURN                           R0 0

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
        6 JUMPIFNOTEQ                      R1 R5 ; [+52]
        8 GETTABLEKS                       R5 R0 K4 ["up"]
       10 GETUPVAL                         R6 0
       11 MOVE                             R7 R5
       12 MOVE                             R8 R2
       13 CALL                             R6 2 1
       14 JUMPIF                           R6 ; [+1]
       15 JUMP                             ; [+17]
       16 GETTABLEKS                       R6 R5 K5 ["Value"]
       18 GETTABLE                         R7 R4 R6
       19 JUMPIFNOT                        R7 ; [+1]
       20 JUMP                             ; [+12]
       21 LOADB                            R7 1
       22 SETTABLE                         R7 R4 R6
       23 MOVE                             R8 R3
       24 GETUPVAL                         R9 1
       25 MOVE                             R11 R5
       26 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
       28 CALL                             R9 2 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R7 K9 [table.insert]
       32 CALL                             R7 -1 0
       33 GETTABLEKS                       R5 R0 K10 ["down"]
       35 GETUPVAL                         R6 0
       36 MOVE                             R7 R5
       37 MOVE                             R8 R2
       38 CALL                             R6 2 1
       39 JUMPIF                           R6 ; [+1]
       40 JUMP                             ; [+277]
       41 GETTABLEKS                       R6 R5 K5 ["Value"]
       43 GETTABLE                         R7 R4 R6
       44 JUMPIFNOT                        R7 ; [+1]
       45 JUMP                             ; [+272]
       46 LOADB                            R7 1
       47 SETTABLE                         R7 R4 R6
       48 MOVE                             R8 R3
       49 GETUPVAL                         R9 1
       50 MOVE                             R11 R5
       51 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
       53 CALL                             R9 2 -1
       54 FASTCALL                         TABLE_INSERT ; [+2]
       55 GETIMPORT                        R7 K9 [table.insert]
       57 CALL                             R7 -1 0
       58 JUMP                             ; [+259]
       59 GETIMPORT                        R5 K12 [Enum.InputActionType.Direction2D]
       61 JUMPIFNOTEQ                      R1 R5 ; [+102]
       63 GETTABLEKS                       R5 R0 K4 ["up"]
       65 GETUPVAL                         R6 0
       66 MOVE                             R7 R5
       67 MOVE                             R8 R2
       68 CALL                             R6 2 1
       69 JUMPIF                           R6 ; [+1]
       70 JUMP                             ; [+17]
       71 GETTABLEKS                       R6 R5 K5 ["Value"]
       73 GETTABLE                         R7 R4 R6
       74 JUMPIFNOT                        R7 ; [+1]
       75 JUMP                             ; [+12]
       76 LOADB                            R7 1
       77 SETTABLE                         R7 R4 R6
       78 MOVE                             R8 R3
       79 GETUPVAL                         R9 1
       80 MOVE                             R11 R5
       81 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
       83 CALL                             R9 2 -1
       84 FASTCALL                         TABLE_INSERT ; [+2]
       85 GETIMPORT                        R7 K9 [table.insert]
       87 CALL                             R7 -1 0
       88 GETTABLEKS                       R5 R0 K13 ["left"]
       90 GETUPVAL                         R6 0
       91 MOVE                             R7 R5
       92 MOVE                             R8 R2
       93 CALL                             R6 2 1
       94 JUMPIF                           R6 ; [+1]
       95 JUMP                             ; [+17]
       96 GETTABLEKS                       R6 R5 K5 ["Value"]
       98 GETTABLE                         R7 R4 R6
       99 JUMPIFNOT                        R7 ; [+1]
      100 JUMP                             ; [+12]
      101 LOADB                            R7 1
      102 SETTABLE                         R7 R4 R6
      103 MOVE                             R8 R3
      104 GETUPVAL                         R9 1
      105 MOVE                             R11 R5
      106 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      108 CALL                             R9 2 -1
      109 FASTCALL                         TABLE_INSERT ; [+2]
      110 GETIMPORT                        R7 K9 [table.insert]
      112 CALL                             R7 -1 0
      113 GETTABLEKS                       R5 R0 K10 ["down"]
      115 GETUPVAL                         R6 0
      116 MOVE                             R7 R5
      117 MOVE                             R8 R2
      118 CALL                             R6 2 1
      119 JUMPIF                           R6 ; [+1]
      120 JUMP                             ; [+17]
      121 GETTABLEKS                       R6 R5 K5 ["Value"]
      123 GETTABLE                         R7 R4 R6
      124 JUMPIFNOT                        R7 ; [+1]
      125 JUMP                             ; [+12]
      126 LOADB                            R7 1
      127 SETTABLE                         R7 R4 R6
      128 MOVE                             R8 R3
      129 GETUPVAL                         R9 1
      130 MOVE                             R11 R5
      131 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      133 CALL                             R9 2 -1
      134 FASTCALL                         TABLE_INSERT ; [+2]
      135 GETIMPORT                        R7 K9 [table.insert]
      137 CALL                             R7 -1 0
      138 GETTABLEKS                       R5 R0 K14 ["right"]
      140 GETUPVAL                         R6 0
      141 MOVE                             R7 R5
      142 MOVE                             R8 R2
      143 CALL                             R6 2 1
      144 JUMPIF                           R6 ; [+1]
      145 JUMP                             ; [+172]
      146 GETTABLEKS                       R6 R5 K5 ["Value"]
      148 GETTABLE                         R7 R4 R6
      149 JUMPIFNOT                        R7 ; [+1]
      150 JUMP                             ; [+167]
      151 LOADB                            R7 1
      152 SETTABLE                         R7 R4 R6
      153 MOVE                             R8 R3
      154 GETUPVAL                         R9 1
      155 MOVE                             R11 R5
      156 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      158 CALL                             R9 2 -1
      159 FASTCALL                         TABLE_INSERT ; [+2]
      160 GETIMPORT                        R7 K9 [table.insert]
      162 CALL                             R7 -1 0
      163 JUMP                             ; [+154]
      164 GETIMPORT                        R5 K16 [Enum.InputActionType.Direction3D]
      166 JUMPIFNOTEQ                      R1 R5 ; [+151]
      168 GETTABLEKS                       R5 R0 K4 ["up"]
      170 GETUPVAL                         R6 0
      171 MOVE                             R7 R5
      172 MOVE                             R8 R2
      173 CALL                             R6 2 1
      174 JUMPIF                           R6 ; [+1]
      175 JUMP                             ; [+17]
      176 GETTABLEKS                       R6 R5 K5 ["Value"]
      178 GETTABLE                         R7 R4 R6
      179 JUMPIFNOT                        R7 ; [+1]
      180 JUMP                             ; [+12]
      181 LOADB                            R7 1
      182 SETTABLE                         R7 R4 R6
      183 MOVE                             R8 R3
      184 GETUPVAL                         R9 1
      185 MOVE                             R11 R5
      186 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      188 CALL                             R9 2 -1
      189 FASTCALL                         TABLE_INSERT ; [+2]
      190 GETIMPORT                        R7 K9 [table.insert]
      192 CALL                             R7 -1 0
      193 GETTABLEKS                       R5 R0 K13 ["left"]
      195 GETUPVAL                         R6 0
      196 MOVE                             R7 R5
      197 MOVE                             R8 R2
      198 CALL                             R6 2 1
      199 JUMPIF                           R6 ; [+1]
      200 JUMP                             ; [+17]
      201 GETTABLEKS                       R6 R5 K5 ["Value"]
      203 GETTABLE                         R7 R4 R6
      204 JUMPIFNOT                        R7 ; [+1]
      205 JUMP                             ; [+12]
      206 LOADB                            R7 1
      207 SETTABLE                         R7 R4 R6
      208 MOVE                             R8 R3
      209 GETUPVAL                         R9 1
      210 MOVE                             R11 R5
      211 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      213 CALL                             R9 2 -1
      214 FASTCALL                         TABLE_INSERT ; [+2]
      215 GETIMPORT                        R7 K9 [table.insert]
      217 CALL                             R7 -1 0
      218 GETTABLEKS                       R5 R0 K17 ["forward"]
      220 GETUPVAL                         R6 0
      221 MOVE                             R7 R5
      222 MOVE                             R8 R2
      223 CALL                             R6 2 1
      224 JUMPIF                           R6 ; [+1]
      225 JUMP                             ; [+17]
      226 GETTABLEKS                       R6 R5 K5 ["Value"]
      228 GETTABLE                         R7 R4 R6
      229 JUMPIFNOT                        R7 ; [+1]
      230 JUMP                             ; [+12]
      231 LOADB                            R7 1
      232 SETTABLE                         R7 R4 R6
      233 MOVE                             R8 R3
      234 GETUPVAL                         R9 1
      235 MOVE                             R11 R5
      236 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      238 CALL                             R9 2 -1
      239 FASTCALL                         TABLE_INSERT ; [+2]
      240 GETIMPORT                        R7 K9 [table.insert]
      242 CALL                             R7 -1 0
      243 GETTABLEKS                       R5 R0 K10 ["down"]
      245 GETUPVAL                         R6 0
      246 MOVE                             R7 R5
      247 MOVE                             R8 R2
      248 CALL                             R6 2 1
      249 JUMPIF                           R6 ; [+1]
      250 JUMP                             ; [+17]
      251 GETTABLEKS                       R6 R5 K5 ["Value"]
      253 GETTABLE                         R7 R4 R6
      254 JUMPIFNOT                        R7 ; [+1]
      255 JUMP                             ; [+12]
      256 LOADB                            R7 1
      257 SETTABLE                         R7 R4 R6
      258 MOVE                             R8 R3
      259 GETUPVAL                         R9 1
      260 MOVE                             R11 R5
      261 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      263 CALL                             R9 2 -1
      264 FASTCALL                         TABLE_INSERT ; [+2]
      265 GETIMPORT                        R7 K9 [table.insert]
      267 CALL                             R7 -1 0
      268 GETTABLEKS                       R5 R0 K14 ["right"]
      270 GETUPVAL                         R6 0
      271 MOVE                             R7 R5
      272 MOVE                             R8 R2
      273 CALL                             R6 2 1
      274 JUMPIF                           R6 ; [+1]
      275 JUMP                             ; [+17]
      276 GETTABLEKS                       R6 R5 K5 ["Value"]
      278 GETTABLE                         R7 R4 R6
      279 JUMPIFNOT                        R7 ; [+1]
      280 JUMP                             ; [+12]
      281 LOADB                            R7 1
      282 SETTABLE                         R7 R4 R6
      283 MOVE                             R8 R3
      284 GETUPVAL                         R9 1
      285 MOVE                             R11 R5
      286 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      288 CALL                             R9 2 -1
      289 FASTCALL                         TABLE_INSERT ; [+2]
      290 GETIMPORT                        R7 K9 [table.insert]
      292 CALL                             R7 -1 0
      293 GETTABLEKS                       R5 R0 K18 ["backward"]
      295 GETUPVAL                         R6 0
      296 MOVE                             R7 R5
      297 MOVE                             R8 R2
      298 CALL                             R6 2 1
      299 JUMPIF                           R6 ; [+1]
      300 JUMP                             ; [+17]
      301 GETTABLEKS                       R6 R5 K5 ["Value"]
      303 GETTABLE                         R7 R4 R6
      304 JUMPIFNOT                        R7 ; [+1]
      305 JUMP                             ; [+12]
      306 LOADB                            R7 1
      307 SETTABLE                         R7 R4 R6
      308 MOVE                             R8 R3
      309 GETUPVAL                         R9 1
      310 MOVE                             R11 R5
      311 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      313 CALL                             R9 2 -1
      314 FASTCALL                         TABLE_INSERT ; [+2]
      315 GETIMPORT                        R7 K9 [table.insert]
      317 CALL                             R7 -1 0
      318 GETTABLEKS                       R5 R0 K19 ["keyCode"]
      320 GETUPVAL                         R6 0
      321 MOVE                             R7 R5
      322 MOVE                             R8 R2
      323 CALL                             R6 2 1
      324 JUMPIF                           R6 ; [+1]
      325 JUMP                             ; [+17]
      326 GETTABLEKS                       R6 R5 K5 ["Value"]
      328 GETTABLE                         R7 R4 R6
      329 JUMPIFNOT                        R7 ; [+1]
      330 JUMP                             ; [+12]
      331 LOADB                            R7 1
      332 SETTABLE                         R7 R4 R6
      333 MOVE                             R8 R3
      334 GETUPVAL                         R9 1
      335 MOVE                             R11 R5
      336 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
      338 CALL                             R9 2 -1
      339 FASTCALL                         TABLE_INSERT ; [+2]
      340 GETIMPORT                        R7 K9 [table.insert]
      342 CALL                             R7 -1 0
      343 JUMPIFNOTEQKS                    R2 K20 ["Touch"] ; [+9]
      345 GETTABLEKS                       R5 R0 K21 ["uiButton"]
      347 JUMPIFNOT                        R5 ; [+5]
      348 GETTABLEKS                       R6 R0 K21 ["uiButton"]
      350 GETTABLEKS                       R5 R6 K22 ["name"]
      352 RETURN                           R5 1
      353 LENGTH                           R5 R3
      354 JUMPIFNOTEQKN                    R5 K23 [0] ; [+3]
      356 LOADNIL                          R5
      357 RETURN                           R5 1
      358 LENGTH                           R6 R3
      359 JUMPIFNOTEQKN                    R6 K23 [0] ; [+3]
      361 LOADB                            R5 1
      362 JUMP                             ; [+12]
      363 MOVE                             R6 R3
      364 LOADNIL                          R7
      365 LOADNIL                          R8
      366 FORGPREP                         R6
      367 LENGTH                           R11 R10
      368 JUMPIFEQKN                       R11 K24 [1] ; [+3]
      370 LOADB                            R5 0
      371 JUMP                             ; [+3]
      372 FORGLOOP                         R6 2 ; [-6]
      374 LOADB                            R5 1
      375 JUMPIFNOT                        R5 ; [+6]
      376 GETIMPORT                        R5 K26 [table.concat]
      378 MOVE                             R6 R3
      379 LOADK                            R7 K27 [""]
      380 CALL                             R5 2 -1
      381 RETURN                           R5 -1
      382 GETIMPORT                        R5 K26 [table.concat]
      384 MOVE                             R6 R3
      385 LOADK                            R7 K28 [" + "]
      386 CALL                             R5 2 -1
      387 RETURN                           R5 -1

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
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["UserInputService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 DUPTABLE                         R3 K16 [{"MouseKeyboard", "Touch", "Gamepad", "VR"}]
       21 NEWTABLE                         R4 0 2
       23 DUPTABLE                         R5 K19 [{"min", "max"}]
       24 LOADN                            R6 8
       25 SETTABLEKS                       R6 R5 K17 ["min"]
       27 LOADN                            R6 66
       28 SETTABLEKS                       R6 R5 K18 ["max"]
       30 DUPTABLE                         R6 K19 [{"min", "max"}]
       31 LOADN                            R7 2
       32 SETTABLEKS                       R7 R6 K17 ["min"]
       34 LOADN                            R7 9
       35 SETTABLEKS                       R7 R6 K18 ["max"]
       37 SETLIST                          R4 R5 2 [1]
       39 SETTABLEKS                       R4 R3 K12 ["MouseKeyboard"]
       41 NEWTABLE                         R4 0 1
       43 DUPTABLE                         R5 K19 [{"min", "max"}]
       44 LOADN                            R6 10
       45 SETTABLEKS                       R6 R5 K17 ["min"]
       47 LOADN                            R6 10
       48 SETTABLEKS                       R6 R5 K18 ["max"]
       50 SETLIST                          R4 R5 1 [1]
       52 SETTABLEKS                       R4 R3 K13 ["Touch"]
       54 NEWTABLE                         R4 0 1
       56 DUPTABLE                         R5 K19 [{"min", "max"}]
       57 LOADN                            R6 232
       58 SETTABLEKS                       R6 R5 K17 ["min"]
       60 LOADN                            R6 1
       61 SETTABLEKS                       R6 R5 K18 ["max"]
       63 SETLIST                          R4 R5 1 [1]
       65 SETTABLEKS                       R4 R3 K14 ["Gamepad"]
       67 NEWTABLE                         R4 0 0
       69 SETTABLEKS                       R4 R3 K15 ["VR"]
       71 DUPCLOSURE                       R4 K20 [PROTO_0]
       72 CAPTURE                          VAL R3
       73 DUPCLOSURE                       R5 K21 [PROTO_1]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R2
       76 DUPCLOSURE                       R6 K22 [PROTO_2]
       77 DUPCLOSURE                       R7 K23 [PROTO_3]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 RETURN                           R7 1
