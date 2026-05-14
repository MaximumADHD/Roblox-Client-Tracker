PROTO_0:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["initSucceded"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["physicallyAnimate"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["windSpeed"]
        9 LOADK                            R1 K3 [{1, 1, 1}]
       10 SETTABLEKS                       R1 R0 K4 ["windDir"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K5 ["skel"]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K6 ["numPoints"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K7 ["structurePoints"]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K8 ["bindWorldPose"]
       27 LOADN                            R1 0
       28 SETTABLEKS                       R1 R0 K9 ["numSprings"]
       30 NEWTABLE                         R1 0 0
       32 SETTABLEKS                       R1 R0 K10 ["structureSprings"]
       34 NEWTABLE                         R1 0 0
       36 SETTABLEKS                       R1 R0 K11 ["originalMountpoints"]
       38 LOADNIL                          R1
       39 SETTABLEKS                       R1 R0 K12 ["worldModel"]
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K13 ["cone"]
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K14 ["lastTick"]
       47 LOADNIL                          R1
       48 SETTABLEKS                       R1 R0 K15 ["dt"]
       50 LOADN                            R1 0
       51 SETTABLEKS                       R1 R0 K16 ["rapTimeSoFar"]
       53 LOADN                            R1 0
       54 SETTABLEKS                       R1 R0 K17 ["spinY"]
       56 LOADN                            R1 0
       57 SETTABLEKS                       R1 R0 K18 ["spinX"]
       59 LOADB                            R1 0
       60 SETTABLEKS                       R1 R0 K19 ["windChanged"]
       62 LOADB                            R1 0
       63 SETTABLEKS                       R1 R0 K20 ["isChangingYaw"]
       65 LOADB                            R1 0
       66 SETTABLEKS                       R1 R0 K21 ["isChangingPitch"]
       68 LOADNIL                          R1
       69 SETTABLEKS                       R1 R0 K22 ["tailBone"]
       71 LOADK                            R1 K23 [{0, 0, 0}]
       72 SETTABLEKS                       R1 R0 K24 ["origCenter"]
       74 LOADN                            R1 0
       75 SETTABLEKS                       R1 R0 K25 ["lastDtIndex"]
       77 NEWTABLE                         R1 0 0
       79 SETTABLEKS                       R1 R0 K26 ["lastDts"]
       81 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["afterCamera"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 0
        3 SETTABLEKS                       R1 R0 K0 ["worldModel"]
        5 GETTABLEKS                       R2 R0 K0 ["worldModel"]
        7 LOADK                            R4 K1 ["Cone"]
        8 NAMECALL                         R2 R2 K2 ["WaitForChild"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R0 K3 ["cone"]
       13 GETTABLEKS                       R2 R0 K0 ["worldModel"]
       15 GETTABLEKS                       R3 R0 K3 ["cone"]
       17 GETTABLEKS                       R4 R0 K4 ["numPoints"]
       19 GETTABLEKS                       R5 R0 K5 ["structurePoints"]
       21 GETTABLEKS                       R6 R0 K6 ["skel"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K7 ["numBones"]
       26 GETTABLEKS                       R8 R0 K8 ["structureSprings"]
       28 GETTABLEKS                       R9 R0 K9 ["numSprings"]
       30 GETTABLEKS                       R10 R0 K10 ["bindWorldPose"]
       32 GETTABLEKS                       R11 R0 K11 ["originalMountpoints"]
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 RETURN                           R0 0
       37 SETTABLEKS                       R3 R2 K12 ["PrimaryPart"]
       39 NAMECALL                         R13 R3 K13 ["GetChildren"]
       41 CALL                             R13 1 1
       42 GETTABLEN                        R12 R13 1
       43 SETTABLEN                        R12 R6 1
       44 JUMPIFNOTEQKNIL                  R12 ; [+2]
       46 RETURN                           R0 0
       47 NAMECALL                         R14 R12 K13 ["GetChildren"]
       49 CALL                             R14 1 1
       50 GETTABLEN                        R13 R14 1
       51 SETTABLEN                        R13 R6 2
       52 JUMPIFNOTEQKNIL                  R13 ; [+2]
       54 RETURN                           R0 0
       55 NAMECALL                         R15 R13 K13 ["GetChildren"]
       57 CALL                             R15 1 1
       58 GETTABLEN                        R14 R15 1
       59 SETTABLEN                        R14 R6 3
       60 JUMPIFNOTEQKNIL                  R14 ; [+2]
       62 RETURN                           R0 0
       63 NAMECALL                         R16 R14 K13 ["GetChildren"]
       65 CALL                             R16 1 1
       66 GETTABLEN                        R15 R16 1
       67 SETTABLEN                        R15 R6 4
       68 JUMPIFNOTEQKNIL                  R15 ; [+2]
       70 RETURN                           R0 0
       71 NAMECALL                         R17 R15 K13 ["GetChildren"]
       73 CALL                             R17 1 1
       74 GETTABLEN                        R16 R17 1
       75 SETTABLEN                        R16 R6 5
       76 JUMPIFNOTEQKNIL                  R16 ; [+2]
       78 RETURN                           R0 0
       79 NAMECALL                         R18 R16 K13 ["GetChildren"]
       81 CALL                             R18 1 1
       82 GETTABLEN                        R17 R18 1
       83 SETTABLEN                        R17 R6 6
       84 JUMPIFNOTEQKNIL                  R17 ; [+2]
       86 RETURN                           R0 0
       87 LOADN                            R20 1
       88 MOVE                             R18 R7
       89 LOADN                            R19 1
       90 FORNPREP                         R18
       91 MULK                             R23 R20 K16 [0.3]
       92 DIVK                             R22 R23 K15 [6]
       93 SUBRK                            R21 R14 K22 [0.5]
       94 ADDK                             R22 R4 K14 [1]
       95 GETUPVAL                         R23 1
       96 GETTABLE                         R25 R6 R20
       97 GETTABLEKS                       R25 R25 K17 ["WorldPosition"]
       99 GETUPVAL                         R27 0
      100 GETTABLEKS                       R27 R27 K18 ["radiusOfStructure"]
      102 LOADK                            R28 K19 [{0, -1, 0}]
      103 MUL                              R26 R27 R28
      104 ADD                              R24 R25 R26
      105 MOVE                             R25 R21
      106 CALL                             R23 2 1
      107 SETTABLE                         R23 R5 R22
      108 ADDK                             R22 R4 K20 [2]
      109 GETUPVAL                         R23 1
      110 GETTABLE                         R25 R6 R20
      111 GETTABLEKS                       R25 R25 K17 ["WorldPosition"]
      113 GETUPVAL                         R27 0
      114 GETTABLEKS                       R27 R27 K18 ["radiusOfStructure"]
      116 GETUPVAL                         R29 0
      117 GETTABLEKS                       R29 R29 K21 ["sqrt3on2"]
      119 LOADK                            R30 K22 [0.5]
      120 LOADN                            R31 0
      121 FASTCALL                         VECTOR ; [+2]
      122 GETIMPORT                        R28 K25 [Vector3.new]
      124 CALL                             R28 3 1
      125 MUL                              R26 R27 R28
      126 ADD                              R24 R25 R26
      127 MOVE                             R25 R21
      128 CALL                             R23 2 1
      129 SETTABLE                         R23 R5 R22
      130 ADDK                             R22 R4 K26 [3]
      131 GETUPVAL                         R23 1
      132 GETTABLE                         R25 R6 R20
      133 GETTABLEKS                       R25 R25 K17 ["WorldPosition"]
      135 GETUPVAL                         R27 0
      136 GETTABLEKS                       R27 R27 K18 ["radiusOfStructure"]
      138 GETUPVAL                         R30 0
      139 GETTABLEKS                       R30 R30 K21 ["sqrt3on2"]
      141 MINUS                            R29 R30
      142 LOADK                            R30 K22 [0.5]
      143 LOADN                            R31 0
      144 FASTCALL                         VECTOR ; [+2]
      145 GETIMPORT                        R28 K25 [Vector3.new]
      147 CALL                             R28 3 1
      148 MUL                              R26 R27 R28
      149 ADD                              R24 R25 R26
      150 MOVE                             R25 R21
      151 CALL                             R23 2 1
      152 SETTABLE                         R23 R5 R22
      153 JUMPIFNOTEQKN                    R4 K27 [0] ; [+28]
      155 GETTABLEN                        R25 R5 1
      156 GETTABLEKS                       R25 R25 K28 ["position"]
      158 GETTABLEN                        R26 R5 2
      159 GETTABLEKS                       R26 R26 K28 ["position"]
      161 ADD                              R24 R25 R26
      162 GETTABLEN                        R25 R5 3
      163 GETTABLEKS                       R25 R25 K28 ["position"]
      165 ADD                              R23 R24 R25
      166 DIVK                             R22 R23 K26 [3]
      167 GETTABLEN                        R24 R5 1
      168 GETTABLEKS                       R24 R24 K28 ["position"]
      170 SUB                              R23 R24 R22
      171 SETTABLEN                        R23 R11 1
      172 GETTABLEN                        R24 R5 2
      173 GETTABLEKS                       R24 R24 K28 ["position"]
      175 SUB                              R23 R24 R22
      176 SETTABLEN                        R23 R11 2
      177 GETTABLEN                        R24 R5 3
      178 GETTABLEKS                       R24 R24 K28 ["position"]
      180 SUB                              R23 R24 R22
      181 SETTABLEN                        R23 R11 3
      182 ADDK                             R22 R9 K14 [1]
      183 GETUPVAL                         R23 2
      184 ADDK                             R25 R4 K14 [1]
      185 GETTABLE                         R24 R5 R25
      186 ADDK                             R26 R4 K20 [2]
      187 GETTABLE                         R25 R5 R26
      188 CALL                             R23 2 1
      189 SETTABLE                         R23 R8 R22
      190 ADDK                             R22 R9 K20 [2]
      191 GETUPVAL                         R23 2
      192 ADDK                             R25 R4 K20 [2]
      193 GETTABLE                         R24 R5 R25
      194 ADDK                             R26 R4 K26 [3]
      195 GETTABLE                         R25 R5 R26
      196 CALL                             R23 2 1
      197 SETTABLE                         R23 R8 R22
      198 ADDK                             R22 R9 K26 [3]
      199 GETUPVAL                         R23 2
      200 ADDK                             R25 R4 K26 [3]
      201 GETTABLE                         R24 R5 R25
      202 ADDK                             R26 R4 K14 [1]
      203 GETTABLE                         R25 R5 R26
      204 CALL                             R23 2 1
      205 SETTABLE                         R23 R8 R22
      206 ADDK                             R23 R9 K14 [1]
      207 GETTABLE                         R22 R8 R23
      208 LOADN                            R23 58
      209 SETTABLEKS                       R23 R22 K29 ["springConstant"]
      211 ADDK                             R23 R9 K14 [1]
      212 GETTABLE                         R22 R8 R23
      213 LOADN                            R23 5
      214 SETTABLEKS                       R23 R22 K30 ["dampingFactor"]
      216 ADDK                             R23 R9 K20 [2]
      217 GETTABLE                         R22 R8 R23
      218 LOADN                            R23 58
      219 SETTABLEKS                       R23 R22 K29 ["springConstant"]
      221 ADDK                             R23 R9 K20 [2]
      222 GETTABLE                         R22 R8 R23
      223 LOADN                            R23 5
      224 SETTABLEKS                       R23 R22 K30 ["dampingFactor"]
      226 ADDK                             R23 R9 K26 [3]
      227 GETTABLE                         R22 R8 R23
      228 LOADN                            R23 58
      229 SETTABLEKS                       R23 R22 K29 ["springConstant"]
      231 ADDK                             R23 R9 K26 [3]
      232 GETTABLE                         R22 R8 R23
      233 LOADN                            R23 5
      234 SETTABLEKS                       R23 R22 K30 ["dampingFactor"]
      236 LOADN                            R22 3
      237 JUMPIFNOTLE                      R22 R4 ; [+215]
      239 ADDK                             R22 R9 K31 [4]
      240 GETUPVAL                         R23 2
      241 ADDK                             R26 R4 K14 [1]
      242 SUBK                             R25 R26 K26 [3]
      243 GETTABLE                         R24 R5 R25
      244 ADDK                             R26 R4 K14 [1]
      245 GETTABLE                         R25 R5 R26
      246 CALL                             R23 2 1
      247 SETTABLE                         R23 R8 R22
      248 ADDK                             R22 R9 K32 [5]
      249 GETUPVAL                         R23 2
      250 ADDK                             R26 R4 K20 [2]
      251 SUBK                             R25 R26 K26 [3]
      252 GETTABLE                         R24 R5 R25
      253 ADDK                             R26 R4 K20 [2]
      254 GETTABLE                         R25 R5 R26
      255 CALL                             R23 2 1
      256 SETTABLE                         R23 R8 R22
      257 ADDK                             R22 R9 K15 [6]
      258 GETUPVAL                         R23 2
      259 ADDK                             R26 R4 K26 [3]
      260 SUBK                             R25 R26 K26 [3]
      261 GETTABLE                         R24 R5 R25
      262 ADDK                             R26 R4 K26 [3]
      263 GETTABLE                         R25 R5 R26
      264 CALL                             R23 2 1
      265 SETTABLE                         R23 R8 R22
      266 LOADN                            R24 1
      267 LOADN                            R22 6
      268 LOADN                            R23 1
      269 FORNPREP                         R22
      270 ADD                              R26 R9 R24
      271 GETTABLE                         R25 R8 R26
      272 LOADN                            R26 28
      273 SETTABLEKS                       R26 R25 K29 ["springConstant"]
      275 ADD                              R26 R9 R24
      276 GETTABLE                         R25 R8 R26
      277 LOADN                            R26 7
      278 SETTABLEKS                       R26 R25 K30 ["dampingFactor"]
      280 FORNLOOP                         R22
      281 ADDK                             R22 R9 K33 [7]
      282 GETUPVAL                         R23 2
      283 ADDK                             R26 R4 K14 [1]
      284 SUBK                             R25 R26 K26 [3]
      285 GETTABLE                         R24 R5 R25
      286 ADDK                             R26 R4 K20 [2]
      287 GETTABLE                         R25 R5 R26
      288 CALL                             R23 2 1
      289 SETTABLE                         R23 R8 R22
      290 ADDK                             R22 R9 K34 [8]
      291 GETUPVAL                         R23 2
      292 ADDK                             R26 R4 K20 [2]
      293 SUBK                             R25 R26 K26 [3]
      294 GETTABLE                         R24 R5 R25
      295 ADDK                             R26 R4 K14 [1]
      296 GETTABLE                         R25 R5 R26
      297 CALL                             R23 2 1
      298 SETTABLE                         R23 R8 R22
      299 ADDK                             R22 R9 K35 [9]
      300 GETUPVAL                         R23 2
      301 ADDK                             R26 R4 K26 [3]
      302 SUBK                             R25 R26 K26 [3]
      303 GETTABLE                         R24 R5 R25
      304 ADDK                             R26 R4 K20 [2]
      305 GETTABLE                         R25 R5 R26
      306 CALL                             R23 2 1
      307 SETTABLE                         R23 R8 R22
      308 ADDK                             R22 R9 K36 [10]
      309 GETUPVAL                         R23 2
      310 ADDK                             R26 R4 K20 [2]
      311 SUBK                             R25 R26 K26 [3]
      312 GETTABLE                         R24 R5 R25
      313 ADDK                             R26 R4 K26 [3]
      314 GETTABLE                         R25 R5 R26
      315 CALL                             R23 2 1
      316 SETTABLE                         R23 R8 R22
      317 ADDK                             R22 R9 K37 [11]
      318 GETUPVAL                         R23 2
      319 ADDK                             R26 R4 K14 [1]
      320 SUBK                             R25 R26 K26 [3]
      321 GETTABLE                         R24 R5 R25
      322 ADDK                             R26 R4 K26 [3]
      323 GETTABLE                         R25 R5 R26
      324 CALL                             R23 2 1
      325 SETTABLE                         R23 R8 R22
      326 ADDK                             R22 R9 K38 [12]
      327 GETUPVAL                         R23 2
      328 ADDK                             R26 R4 K26 [3]
      329 SUBK                             R25 R26 K26 [3]
      330 GETTABLE                         R24 R5 R25
      331 ADDK                             R26 R4 K14 [1]
      332 GETTABLE                         R25 R5 R26
      333 CALL                             R23 2 1
      334 SETTABLE                         R23 R8 R22
      335 JUMPIFNOTEQKN                    R9 K26 [3] ; [+16]
      337 LOADN                            R24 1
      338 LOADN                            R22 12
      339 LOADN                            R23 1
      340 FORNPREP                         R22
      341 ADD                              R26 R9 R24
      342 GETTABLE                         R25 R8 R26
      343 LOADN                            R26 28
      344 SETTABLEKS                       R26 R25 K29 ["springConstant"]
      346 ADD                              R26 R9 R24
      347 GETTABLE                         R25 R8 R26
      348 LOADN                            R26 5
      349 SETTABLEKS                       R26 R25 K30 ["dampingFactor"]
      351 FORNLOOP                         R22
      352 LOADN                            R22 6
      353 JUMPIFNOTLE                      R22 R4 ; [+98]
      355 ADDK                             R22 R9 K39 [13]
      356 GETUPVAL                         R23 2
      357 ADDK                             R26 R4 K14 [1]
      358 SUBK                             R25 R26 K15 [6]
      359 GETTABLE                         R24 R5 R25
      360 ADDK                             R26 R4 K14 [1]
      361 GETTABLE                         R25 R5 R26
      362 CALL                             R23 2 1
      363 SETTABLE                         R23 R8 R22
      364 ADDK                             R22 R9 K40 [14]
      365 GETUPVAL                         R23 2
      366 ADDK                             R26 R4 K20 [2]
      367 SUBK                             R25 R26 K15 [6]
      368 GETTABLE                         R24 R5 R25
      369 ADDK                             R26 R4 K20 [2]
      370 GETTABLE                         R25 R5 R26
      371 CALL                             R23 2 1
      372 SETTABLE                         R23 R8 R22
      373 ADDK                             R22 R9 K41 [15]
      374 GETUPVAL                         R23 2
      375 ADDK                             R26 R4 K26 [3]
      376 SUBK                             R25 R26 K15 [6]
      377 GETTABLE                         R24 R5 R25
      378 ADDK                             R26 R4 K26 [3]
      379 GETTABLE                         R25 R5 R26
      380 CALL                             R23 2 1
      381 SETTABLE                         R23 R8 R22
      382 ADDK                             R22 R9 K42 [16]
      383 GETUPVAL                         R23 2
      384 ADDK                             R26 R4 K14 [1]
      385 SUBK                             R25 R26 K15 [6]
      386 GETTABLE                         R24 R5 R25
      387 ADDK                             R26 R4 K20 [2]
      388 GETTABLE                         R25 R5 R26
      389 CALL                             R23 2 1
      390 SETTABLE                         R23 R8 R22
      391 ADDK                             R22 R9 K43 [17]
      392 GETUPVAL                         R23 2
      393 ADDK                             R26 R4 K20 [2]
      394 SUBK                             R25 R26 K15 [6]
      395 GETTABLE                         R24 R5 R25
      396 ADDK                             R26 R4 K14 [1]
      397 GETTABLE                         R25 R5 R26
      398 CALL                             R23 2 1
      399 SETTABLE                         R23 R8 R22
      400 ADDK                             R22 R9 K44 [18]
      401 GETUPVAL                         R23 2
      402 ADDK                             R26 R4 K26 [3]
      403 SUBK                             R25 R26 K15 [6]
      404 GETTABLE                         R24 R5 R25
      405 ADDK                             R26 R4 K20 [2]
      406 GETTABLE                         R25 R5 R26
      407 CALL                             R23 2 1
      408 SETTABLE                         R23 R8 R22
      409 ADDK                             R22 R9 K45 [19]
      410 GETUPVAL                         R23 2
      411 ADDK                             R26 R4 K20 [2]
      412 SUBK                             R25 R26 K15 [6]
      413 GETTABLE                         R24 R5 R25
      414 ADDK                             R26 R4 K26 [3]
      415 GETTABLE                         R25 R5 R26
      416 CALL                             R23 2 1
      417 SETTABLE                         R23 R8 R22
      418 ADDK                             R22 R9 K46 [20]
      419 GETUPVAL                         R23 2
      420 ADDK                             R26 R4 K14 [1]
      421 SUBK                             R25 R26 K15 [6]
      422 GETTABLE                         R24 R5 R25
      423 ADDK                             R26 R4 K26 [3]
      424 GETTABLE                         R25 R5 R26
      425 CALL                             R23 2 1
      426 SETTABLE                         R23 R8 R22
      427 ADDK                             R22 R9 K47 [21]
      428 GETUPVAL                         R23 2
      429 ADDK                             R26 R4 K26 [3]
      430 SUBK                             R25 R26 K15 [6]
      431 GETTABLE                         R24 R5 R25
      432 ADDK                             R26 R4 K14 [1]
      433 GETTABLE                         R25 R5 R26
      434 CALL                             R23 2 1
      435 SETTABLE                         R23 R8 R22
      436 LOADN                            R24 13
      437 LOADN                            R22 21
      438 LOADN                            R23 1
      439 FORNPREP                         R22
      440 ADD                              R26 R9 R24
      441 GETTABLE                         R25 R8 R26
      442 LOADN                            R26 24
      443 SETTABLEKS                       R26 R25 K29 ["springConstant"]
      445 ADD                              R26 R9 R24
      446 GETTABLE                         R25 R8 R26
      447 LOADN                            R26 7
      448 SETTABLEKS                       R26 R25 K30 ["dampingFactor"]
      450 FORNLOOP                         R22
      451 ADDK                             R9 R9 K35 [9]
      452 ADDK                             R9 R9 K35 [9]
      453 ADDK                             R9 R9 K26 [3]
      454 ADDK                             R4 R4 K26 [3]
      455 FORNLOOP                         R18
      456 SETTABLEKS                       R9 R0 K9 ["numSprings"]
      458 SETTABLEKS                       R4 R0 K4 ["numPoints"]
      460 LOADN                            R20 1
      461 MOVE                             R18 R7
      462 LOADN                            R19 1
      463 FORNPREP                         R18
      464 GETUPVAL                         R22 3
      465 MOVE                             R23 R20
      466 MOVE                             R24 R5
      467 CALL                             R22 2 1
      468 NAMECALL                         R22 R22 K48 ["Inverse"]
      470 CALL                             R22 1 1
      471 GETTABLE                         R23 R6 R20
      472 GETTABLEKS                       R23 R23 K49 ["WorldCFrame"]
      474 MUL                              R21 R22 R23
      475 SETTABLE                         R21 R10 R20
      476 FORNLOOP                         R18
      477 GETIMPORT                        R18 K51 [CFrame.new]
      479 CALL                             R18 0 1
      480 SETTABLEKS                       R18 R3 K50 ["CFrame"]
      482 GETTABLEKS                       R19 R3 K53 ["Size"]
      484 MULK                             R18 R19 K52 [0.4]
      485 SETTABLEKS                       R18 R3 K53 ["Size"]
      487 GETIMPORT                        R18 K55 [tick]
      489 CALL                             R18 0 1
      490 SETTABLEKS                       R18 R0 K56 ["lastTick"]
      492 LOADB                            R18 1
      493 SETTABLEKS                       R18 R0 K57 ["initSucceded"]
      495 LOADN                            R20 0
      496 NAMECALL                         R18 R0 K58 ["afterCamera"]
      498 CALL                             R18 2 0
      499 NEWCLOSURE                       R18 P0
      500 CAPTURE                          VAL R0
      501 GETUPVAL                         R19 4
      502 LOADK                            R21 K59 ["WindhoseAfterCamera"]
      503 GETIMPORT                        R23 K63 [Enum.RenderPriority.Camera]
      505 GETTABLEKS                       R23 R23 K64 ["Value"]
      507 ADDK                             R22 R23 K14 [1]
      508 MOVE                             R23 R18
      509 NAMECALL                         R19 R19 K65 ["BindToRenderStep"]
      511 CALL                             R19 4 0
      512 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["numBones"]
        5 GETTABLEKS                       R4 R0 K1 ["structurePoints"]
        7 GETTABLEKS                       R5 R0 K2 ["structureSprings"]
        9 GETTABLEKS                       R6 R0 K3 ["skel"]
       11 GETTABLEKS                       R7 R0 K4 ["windDir"]
       13 GETTABLEKS                       R8 R0 K5 ["windSpeed"]
       15 GETTABLEKS                       R9 R0 K6 ["numPoints"]
       17 GETTABLEKS                       R10 R0 K7 ["bindWorldPose"]
       19 GETTABLEKS                       R11 R0 K8 ["spinY"]
       21 GETTABLEKS                       R12 R0 K9 ["spinX"]
       23 GETTABLEKS                       R13 R0 K10 ["originalMountpoints"]
       25 GETTABLEKS                       R14 R0 K11 ["numSprings"]
       27 GETTABLEKS                       R15 R0 K12 ["rapTimeSoFar"]
       29 LOADN                            R18 1
       30 MOVE                             R16 R3
       31 LOADN                            R17 1
       32 FORNPREP                         R16
       33 GETUPVAL                         R19 1
       34 MOVE                             R20 R18
       35 MOVE                             R21 R4
       36 CALL                             R19 2 1
       37 SETTABLE                         R19 R2 R18
       38 GETTABLE                         R20 R2 R18
       39 GETTABLE                         R21 R10 R18
       40 MUL                              R19 R20 R21
       41 LOADNIL                          R20
       42 LOADN                            R21 1
       43 JUMPIFNOTLT                      R21 R18 ; [+11]
       45 GETTABLE                         R21 R6 R18
       46 GETTABLEKS                       R21 R21 K13 ["Parent"]
       48 GETTABLEKS                       R21 R21 K14 ["WorldCFrame"]
       50 NAMECALL                         R21 R21 K15 ["Inverse"]
       52 CALL                             R21 1 1
       53 MUL                              R20 R21 R19
       54 JUMP                             ; [+9]
       55 GETTABLE                         R21 R6 R18
       56 GETTABLEKS                       R21 R21 K13 ["Parent"]
       58 GETTABLEKS                       R21 R21 K16 ["CFrame"]
       60 NAMECALL                         R21 R21 K15 ["Inverse"]
       62 CALL                             R21 1 1
       63 MUL                              R20 R21 R19
       64 GETTABLE                         R21 R6 R18
       65 SETTABLEKS                       R20 R21 K16 ["CFrame"]
       67 FORNLOOP                         R16
       68 GETIMPORT                        R17 K18 [CFrame.fromEulerAnglesYXZ]
       70 LOADN                            R18 0
       71 MOVE                             R19 R11
       72 LOADN                            R20 0
       73 CALL                             R17 3 1
       74 GETIMPORT                        R18 K18 [CFrame.fromEulerAnglesYXZ]
       76 MOVE                             R19 R12
       77 LOADN                            R20 0
       78 LOADN                            R21 0
       79 CALL                             R18 3 1
       80 MUL                              R16 R17 R18
       81 LOADN                            R19 1
       82 LOADN                            R17 3
       83 LOADN                            R18 1
       84 FORNPREP                         R17
       85 GETTABLE                         R20 R4 R19
       86 GETTABLE                         R24 R13 R19
       87 NAMECALL                         R22 R16 K19 ["PointToWorldSpace"]
       89 CALL                             R22 2 1
       90 LOADK                            R24 K20 [0.45]
       91 GETTABLEKS                       R25 R0 K4 ["windDir"]
       93 MUL                              R23 R24 R25
       94 SUB                              R21 R22 R23
       95 SETTABLEKS                       R21 R20 K21 ["position"]
       97 FORNLOOP                         R17
       98 GETTABLEKS                       R17 R0 K22 ["physicallyAnimate"]
      100 JUMPIFNOT                        R17 ; [+136]
      101 LOADK                            R17 K23 [{0, 0, 0}]
      102 GETIMPORT                        R18 K25 [workspace]
      104 GETTABLEKS                       R18 R18 K26 ["Gravity"]
      106 LOADN                            R19 0
      107 JUMPIFNOTLT                      R19 R18 ; [+23]
      109 LOADN                            R19 0
      110 GETUPVAL                         R23 0
      111 GETTABLEKS                       R23 R23 K27 ["inverseStandardGravity"]
      113 GETIMPORT                        R24 K25 [workspace]
      115 GETTABLEKS                       R24 R24 K26 ["Gravity"]
      117 MUL                              R22 R23 R24
      118 FASTCALL2K                       MATH_MIN R22 K28 ; [+4]
      120 LOADK                            R23 K28 [4]
      121 GETIMPORT                        R21 K31 [math.min]
      123 CALL                             R21 2 1
      124 MINUS                            R20 R21
      125 LOADN                            R21 0
      126 FASTCALL                         VECTOR ; [+2]
      127 GETIMPORT                        R18 K34 [Vector3.new]
      129 CALL                             R18 3 1
      130 MOVE                             R17 R18
      131 LOADN                            R20 4
      132 MOVE                             R18 R9
      133 LOADN                            R19 1
      134 FORNPREP                         R18
      135 GETTABLE                         R21 R4 R20
      136 MOVE                             R23 R1
      137 LOADB                            R24 0
      138 NAMECALL                         R21 R21 K35 ["update"]
      140 CALL                             R21 3 0
      141 FORNLOOP                         R18
      142 LOADN                            R19 30
      143 GETUPVAL                         R22 0
      144 GETTABLEKS                       R22 R22 K37 ["spsToFudgedMps"]
      146 MUL                              R21 R22 R8
      147 MULK                             R20 R21 K36 [2]
      148 FASTCALL2                        MATH_MIN R19 R20 ; [+3]
      150 GETIMPORT                        R18 K31 [math.min]
      152 CALL                             R18 2 1
      153 GETUPVAL                         R22 0
      154 GETTABLEKS                       R22 R22 K37 ["spsToFudgedMps"]
      156 MULK                             R21 R22 K38 [1000]
      157 FASTCALL2                        MATH_MIN R18 R21 ; [+4]
      159 MOVE                             R20 R18
      160 GETIMPORT                        R19 K31 [math.min]
      162 CALL                             R19 2 1
      163 MOVE                             R18 R19
      164 LOADN                            R21 4
      165 MOVE                             R19 R9
      166 LOADN                            R20 1
      167 FORNPREP                         R19
      168 DIVK                             R23 R21 K39 [3]
      169 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      170 GETIMPORT                        R22 K41 [math.floor]
      172 CALL                             R22 1 1
      173 DIVK                             R25 R18 K43 [30]
      174 SUBRK                            R24 R42 K25 [workspace]
      175 MUL                              R23 R22 R24
      176 GETTABLE                         R24 R4 R21
      177 MUL                              R26 R23 R17
      178 NAMECALL                         R24 R24 K44 ["addForce"]
      180 CALL                             R24 2 0
      181 GETTABLE                         R27 R2 R22
      182 GETTABLEKS                       R27 R27 K45 ["RightVector"]
      184 MUL                              R26 R18 R27
      185 MUL                              R28 R18 R15
      186 FASTCALL1                        MATH_SIN R28 ; [+2]
      187 GETIMPORT                        R27 K47 [math.sin]
      189 CALL                             R27 1 1
      190 MUL                              R25 R26 R27
      191 GETTABLE                         R27 R2 R22
      192 GETTABLEKS                       R27 R27 K48 ["UpVector"]
      194 MUL                              R29 R18 R15
      195 FASTCALL1                        MATH_SIN R29 ; [+2]
      196 GETIMPORT                        R28 K47 [math.sin]
      198 CALL                             R28 1 1
      199 MUL                              R26 R27 R28
      200 ADD                              R24 R25 R26
      201 JUMPIFNOTEQKN                    R22 K49 [5] ; [+6]
      203 GETTABLE                         R25 R4 R21
      204 MOVE                             R27 R24
      205 NAMECALL                         R25 R25 K44 ["addForce"]
      207 CALL                             R25 2 0
      208 LOADN                            R27 0
      209 GETTABLE                         R30 R2 R22
      210 GETTABLEKS                       R30 R30 K50 ["LookVector"]
      212 NAMECALL                         R28 R7 K51 ["Dot"]
      214 CALL                             R28 2 -1
      215 FASTCALL                         MATH_MAX ; [+2]
      216 GETIMPORT                        R26 K53 [math.max]
      218 CALL                             R26 -1 1
      219 SUBRK                            R25 R36 K26 ["Gravity"]
      220 GETTABLE                         R26 R4 R21
      221 MUL                              R30 R25 R7
      222 MULK                             R29 R30 K54 [0.25]
      223 MUL                              R28 R29 R18
      224 NAMECALL                         R26 R26 K44 ["addForce"]
      226 CALL                             R26 2 0
      227 FORNLOOP                         R19
      228 LOADN                            R21 1
      229 MOVE                             R19 R14
      230 LOADN                            R20 1
      231 FORNPREP                         R19
      232 GETTABLE                         R22 R5 R21
      233 NAMECALL                         R22 R22 K55 ["computeForce"]
      235 CALL                             R22 1 0
      236 FORNLOOP                         R19
      237 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 [0.00833333333333333]
        1 LOADK                            R5 K1 [0.02]
        2 FASTCALL3                        MATH_CLAMP R1 R4 R5
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K4 [math.clamp]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 GETTABLEKS                       R2 R0 K5 ["lastDtIndex"]
       11 LOADN                            R4 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K6 ["maxDtsToAvg"]
       15 MUL                              R3 R4 R5
       16 JUMPIFNOTLE                      R3 R2 ; [+6]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K6 ["maxDtsToAvg"]
       21 SETTABLEKS                       R2 R0 K5 ["lastDtIndex"]
       23 GETTABLEKS                       R3 R0 K5 ["lastDtIndex"]
       25 ADDK                             R2 R3 K7 [1]
       26 SETTABLEKS                       R2 R0 K5 ["lastDtIndex"]
       28 GETTABLEKS                       R2 R0 K8 ["lastDts"]
       30 GETTABLEKS                       R6 R0 K5 ["lastDtIndex"]
       32 SUBK                             R5 R6 K7 [1]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K6 ["maxDtsToAvg"]
       36 MOD                              R4 R5 R6
       37 ADDK                             R3 R4 K7 [1]
       38 SETTABLE                         R1 R2 R3
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K6 ["maxDtsToAvg"]
       42 GETTABLEKS                       R4 R0 K5 ["lastDtIndex"]
       44 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       46 GETIMPORT                        R2 K10 [math.min]
       48 CALL                             R2 2 1
       49 LOADN                            R3 0
       50 LOADN                            R6 1
       51 MOVE                             R4 R2
       52 LOADN                            R5 1
       53 FORNPREP                         R4
       54 GETTABLEKS                       R8 R0 K8 ["lastDts"]
       56 GETTABLE                         R7 R8 R6
       57 ADD                              R3 R3 R7
       58 FORNLOOP                         R4
       59 DIV                              R4 R3 R2
       60 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["initSucceded"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["physicallyAnimate"]
        6 JUMPIFNOT                        R2 ; [+31]
        7 GETIMPORT                        R2 K3 [tick]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R4 R0 K4 ["lastTick"]
       12 SUB                              R3 R2 R4
       13 SETTABLEKS                       R2 R0 K4 ["lastTick"]
       15 MOVE                             R6 R1
       16 NAMECALL                         R4 R0 K5 ["updateAndGetAvgDt"]
       18 CALL                             R4 2 1
       19 MOVE                             R7 R4
       20 NAMECALL                         R5 R0 K6 ["onRenderStepSock"]
       22 CALL                             R5 2 0
       23 GETTABLEKS                       R5 R0 K7 ["rapTimeSoFar"]
       25 LOADK                            R6 K8 [3.14159265358979]
       26 JUMPIFNOTLT                      R6 R5 ; [+6]
       28 GETTABLEKS                       R5 R0 K7 ["rapTimeSoFar"]
       30 SUBK                             R5 R5 K8 [3.14159265358979]
       31 SETTABLEKS                       R5 R0 K7 ["rapTimeSoFar"]
       33 GETTABLEKS                       R5 R0 K7 ["rapTimeSoFar"]
       35 ADD                              R5 R5 R3
       36 SETTABLEKS                       R5 R0 K7 ["rapTimeSoFar"]
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["WindhoseAfterCamera"]
        2 NAMECALL                         R1 R1 K1 ["UnbindFromRenderStep"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["Particle"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K7 [script]
       20 GETTABLEKS                       R3 R3 K8 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["SpringDamper"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K7 [script]
       29 GETTABLEKS                       R4 R4 K8 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K7 [script]
       38 GETTABLEKS                       R5 R5 K8 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["class"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K7 [script]
       47 GETTABLEKS                       R6 R6 K8 ["Parent"]
       49 GETTABLEKS                       R6 R6 K13 ["constructCFrameForBone"]
       51 CALL                             R5 1 1
       52 MOVE                             R6 R4
       53 DUPCLOSURE                       R7 K14 [PROTO_0]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K15 [PROTO_2]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R7 R6 K16 ["init"]
       63 DUPCLOSURE                       R7 K17 [PROTO_3]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R7 R6 K18 ["onRenderStepSock"]
       68 DUPCLOSURE                       R7 K19 [PROTO_4]
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R7 R6 K20 ["updateAndGetAvgDt"]
       72 DUPCLOSURE                       R7 K21 [PROTO_5]
       73 SETTABLEKS                       R7 R6 K22 ["afterCamera"]
       75 DUPCLOSURE                       R7 K23 [PROTO_6]
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R7 R6 K24 ["destroy"]
       79 RETURN                           R6 1
