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
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K7 ["numBones"]
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
       91 LOADK                            R24 K16 [0.3]
       92 MUL                              R23 R24 R20
       93 DIVK                             R22 R23 K15 [6]
       94 SUBRK                            R21 R14 K22 [0.5]
       95 ADDK                             R22 R4 K14 [1]
       96 GETUPVAL                         R23 1
       97 GETTABLE                         R26 R6 R20
       98 GETTABLEKS                       R25 R26 K17 ["WorldPosition"]
      100 GETUPVAL                         R28 0
      101 GETTABLEKS                       R27 R28 K18 ["radiusOfStructure"]
      103 LOADK                            R28 K19 [{0, -1, 0}]
      104 MUL                              R26 R27 R28
      105 ADD                              R24 R25 R26
      106 MOVE                             R25 R21
      107 CALL                             R23 2 1
      108 SETTABLE                         R23 R5 R22
      109 ADDK                             R22 R4 K20 [2]
      110 GETUPVAL                         R23 1
      111 GETTABLE                         R26 R6 R20
      112 GETTABLEKS                       R25 R26 K17 ["WorldPosition"]
      114 GETUPVAL                         R28 0
      115 GETTABLEKS                       R27 R28 K18 ["radiusOfStructure"]
      117 GETUPVAL                         R30 0
      118 GETTABLEKS                       R29 R30 K21 ["sqrt3on2"]
      120 LOADK                            R30 K22 [0.5]
      121 LOADN                            R31 0
      122 FASTCALL                         VECTOR ; [+2]
      123 GETIMPORT                        R28 K25 [Vector3.new]
      125 CALL                             R28 3 1
      126 MUL                              R26 R27 R28
      127 ADD                              R24 R25 R26
      128 MOVE                             R25 R21
      129 CALL                             R23 2 1
      130 SETTABLE                         R23 R5 R22
      131 ADDK                             R22 R4 K26 [3]
      132 GETUPVAL                         R23 1
      133 GETTABLE                         R26 R6 R20
      134 GETTABLEKS                       R25 R26 K17 ["WorldPosition"]
      136 GETUPVAL                         R28 0
      137 GETTABLEKS                       R27 R28 K18 ["radiusOfStructure"]
      139 GETUPVAL                         R31 0
      140 GETTABLEKS                       R30 R31 K21 ["sqrt3on2"]
      142 MINUS                            R29 R30
      143 LOADK                            R30 K22 [0.5]
      144 LOADN                            R31 0
      145 FASTCALL                         VECTOR ; [+2]
      146 GETIMPORT                        R28 K25 [Vector3.new]
      148 CALL                             R28 3 1
      149 MUL                              R26 R27 R28
      150 ADD                              R24 R25 R26
      151 MOVE                             R25 R21
      152 CALL                             R23 2 1
      153 SETTABLE                         R23 R5 R22
      154 JUMPIFNOTEQKN                    R4 K27 [0] ; [+28]
      156 GETTABLEN                        R26 R5 1
      157 GETTABLEKS                       R25 R26 K28 ["position"]
      159 GETTABLEN                        R27 R5 2
      160 GETTABLEKS                       R26 R27 K28 ["position"]
      162 ADD                              R24 R25 R26
      163 GETTABLEN                        R26 R5 3
      164 GETTABLEKS                       R25 R26 K28 ["position"]
      166 ADD                              R23 R24 R25
      167 DIVK                             R22 R23 K26 [3]
      168 GETTABLEN                        R25 R5 1
      169 GETTABLEKS                       R24 R25 K28 ["position"]
      171 SUB                              R23 R24 R22
      172 SETTABLEN                        R23 R11 1
      173 GETTABLEN                        R25 R5 2
      174 GETTABLEKS                       R24 R25 K28 ["position"]
      176 SUB                              R23 R24 R22
      177 SETTABLEN                        R23 R11 2
      178 GETTABLEN                        R25 R5 3
      179 GETTABLEKS                       R24 R25 K28 ["position"]
      181 SUB                              R23 R24 R22
      182 SETTABLEN                        R23 R11 3
      183 ADDK                             R22 R9 K14 [1]
      184 GETUPVAL                         R23 2
      185 ADDK                             R25 R4 K14 [1]
      186 GETTABLE                         R24 R5 R25
      187 ADDK                             R26 R4 K20 [2]
      188 GETTABLE                         R25 R5 R26
      189 CALL                             R23 2 1
      190 SETTABLE                         R23 R8 R22
      191 ADDK                             R22 R9 K20 [2]
      192 GETUPVAL                         R23 2
      193 ADDK                             R25 R4 K20 [2]
      194 GETTABLE                         R24 R5 R25
      195 ADDK                             R26 R4 K26 [3]
      196 GETTABLE                         R25 R5 R26
      197 CALL                             R23 2 1
      198 SETTABLE                         R23 R8 R22
      199 ADDK                             R22 R9 K26 [3]
      200 GETUPVAL                         R23 2
      201 ADDK                             R25 R4 K26 [3]
      202 GETTABLE                         R24 R5 R25
      203 ADDK                             R26 R4 K14 [1]
      204 GETTABLE                         R25 R5 R26
      205 CALL                             R23 2 1
      206 SETTABLE                         R23 R8 R22
      207 ADDK                             R23 R9 K14 [1]
      208 GETTABLE                         R22 R8 R23
      209 LOADN                            R23 58
      210 SETTABLEKS                       R23 R22 K29 ["springConstant"]
      212 ADDK                             R23 R9 K14 [1]
      213 GETTABLE                         R22 R8 R23
      214 LOADN                            R23 5
      215 SETTABLEKS                       R23 R22 K30 ["dampingFactor"]
      217 ADDK                             R23 R9 K20 [2]
      218 GETTABLE                         R22 R8 R23
      219 LOADN                            R23 58
      220 SETTABLEKS                       R23 R22 K29 ["springConstant"]
      222 ADDK                             R23 R9 K20 [2]
      223 GETTABLE                         R22 R8 R23
      224 LOADN                            R23 5
      225 SETTABLEKS                       R23 R22 K30 ["dampingFactor"]
      227 ADDK                             R23 R9 K26 [3]
      228 GETTABLE                         R22 R8 R23
      229 LOADN                            R23 58
      230 SETTABLEKS                       R23 R22 K29 ["springConstant"]
      232 ADDK                             R23 R9 K26 [3]
      233 GETTABLE                         R22 R8 R23
      234 LOADN                            R23 5
      235 SETTABLEKS                       R23 R22 K30 ["dampingFactor"]
      237 LOADN                            R22 3
      238 JUMPIFNOTLE                      R22 R4 ; [+215]
      240 ADDK                             R22 R9 K31 [4]
      241 GETUPVAL                         R23 2
      242 ADDK                             R26 R4 K14 [1]
      243 SUBK                             R25 R26 K26 [3]
      244 GETTABLE                         R24 R5 R25
      245 ADDK                             R26 R4 K14 [1]
      246 GETTABLE                         R25 R5 R26
      247 CALL                             R23 2 1
      248 SETTABLE                         R23 R8 R22
      249 ADDK                             R22 R9 K32 [5]
      250 GETUPVAL                         R23 2
      251 ADDK                             R26 R4 K20 [2]
      252 SUBK                             R25 R26 K26 [3]
      253 GETTABLE                         R24 R5 R25
      254 ADDK                             R26 R4 K20 [2]
      255 GETTABLE                         R25 R5 R26
      256 CALL                             R23 2 1
      257 SETTABLE                         R23 R8 R22
      258 ADDK                             R22 R9 K15 [6]
      259 GETUPVAL                         R23 2
      260 ADDK                             R26 R4 K26 [3]
      261 SUBK                             R25 R26 K26 [3]
      262 GETTABLE                         R24 R5 R25
      263 ADDK                             R26 R4 K26 [3]
      264 GETTABLE                         R25 R5 R26
      265 CALL                             R23 2 1
      266 SETTABLE                         R23 R8 R22
      267 LOADN                            R24 1
      268 LOADN                            R22 6
      269 LOADN                            R23 1
      270 FORNPREP                         R22
      271 ADD                              R26 R9 R24
      272 GETTABLE                         R25 R8 R26
      273 LOADN                            R26 28
      274 SETTABLEKS                       R26 R25 K29 ["springConstant"]
      276 ADD                              R26 R9 R24
      277 GETTABLE                         R25 R8 R26
      278 LOADN                            R26 7
      279 SETTABLEKS                       R26 R25 K30 ["dampingFactor"]
      281 FORNLOOP                         R22
      282 ADDK                             R22 R9 K33 [7]
      283 GETUPVAL                         R23 2
      284 ADDK                             R26 R4 K14 [1]
      285 SUBK                             R25 R26 K26 [3]
      286 GETTABLE                         R24 R5 R25
      287 ADDK                             R26 R4 K20 [2]
      288 GETTABLE                         R25 R5 R26
      289 CALL                             R23 2 1
      290 SETTABLE                         R23 R8 R22
      291 ADDK                             R22 R9 K34 [8]
      292 GETUPVAL                         R23 2
      293 ADDK                             R26 R4 K20 [2]
      294 SUBK                             R25 R26 K26 [3]
      295 GETTABLE                         R24 R5 R25
      296 ADDK                             R26 R4 K14 [1]
      297 GETTABLE                         R25 R5 R26
      298 CALL                             R23 2 1
      299 SETTABLE                         R23 R8 R22
      300 ADDK                             R22 R9 K35 [9]
      301 GETUPVAL                         R23 2
      302 ADDK                             R26 R4 K26 [3]
      303 SUBK                             R25 R26 K26 [3]
      304 GETTABLE                         R24 R5 R25
      305 ADDK                             R26 R4 K20 [2]
      306 GETTABLE                         R25 R5 R26
      307 CALL                             R23 2 1
      308 SETTABLE                         R23 R8 R22
      309 ADDK                             R22 R9 K36 [10]
      310 GETUPVAL                         R23 2
      311 ADDK                             R26 R4 K20 [2]
      312 SUBK                             R25 R26 K26 [3]
      313 GETTABLE                         R24 R5 R25
      314 ADDK                             R26 R4 K26 [3]
      315 GETTABLE                         R25 R5 R26
      316 CALL                             R23 2 1
      317 SETTABLE                         R23 R8 R22
      318 ADDK                             R22 R9 K37 [11]
      319 GETUPVAL                         R23 2
      320 ADDK                             R26 R4 K14 [1]
      321 SUBK                             R25 R26 K26 [3]
      322 GETTABLE                         R24 R5 R25
      323 ADDK                             R26 R4 K26 [3]
      324 GETTABLE                         R25 R5 R26
      325 CALL                             R23 2 1
      326 SETTABLE                         R23 R8 R22
      327 ADDK                             R22 R9 K38 [12]
      328 GETUPVAL                         R23 2
      329 ADDK                             R26 R4 K26 [3]
      330 SUBK                             R25 R26 K26 [3]
      331 GETTABLE                         R24 R5 R25
      332 ADDK                             R26 R4 K14 [1]
      333 GETTABLE                         R25 R5 R26
      334 CALL                             R23 2 1
      335 SETTABLE                         R23 R8 R22
      336 JUMPIFNOTEQKN                    R9 K26 [3] ; [+16]
      338 LOADN                            R24 1
      339 LOADN                            R22 12
      340 LOADN                            R23 1
      341 FORNPREP                         R22
      342 ADD                              R26 R9 R24
      343 GETTABLE                         R25 R8 R26
      344 LOADN                            R26 28
      345 SETTABLEKS                       R26 R25 K29 ["springConstant"]
      347 ADD                              R26 R9 R24
      348 GETTABLE                         R25 R8 R26
      349 LOADN                            R26 5
      350 SETTABLEKS                       R26 R25 K30 ["dampingFactor"]
      352 FORNLOOP                         R22
      353 LOADN                            R22 6
      354 JUMPIFNOTLE                      R22 R4 ; [+98]
      356 ADDK                             R22 R9 K39 [13]
      357 GETUPVAL                         R23 2
      358 ADDK                             R26 R4 K14 [1]
      359 SUBK                             R25 R26 K15 [6]
      360 GETTABLE                         R24 R5 R25
      361 ADDK                             R26 R4 K14 [1]
      362 GETTABLE                         R25 R5 R26
      363 CALL                             R23 2 1
      364 SETTABLE                         R23 R8 R22
      365 ADDK                             R22 R9 K40 [14]
      366 GETUPVAL                         R23 2
      367 ADDK                             R26 R4 K20 [2]
      368 SUBK                             R25 R26 K15 [6]
      369 GETTABLE                         R24 R5 R25
      370 ADDK                             R26 R4 K20 [2]
      371 GETTABLE                         R25 R5 R26
      372 CALL                             R23 2 1
      373 SETTABLE                         R23 R8 R22
      374 ADDK                             R22 R9 K41 [15]
      375 GETUPVAL                         R23 2
      376 ADDK                             R26 R4 K26 [3]
      377 SUBK                             R25 R26 K15 [6]
      378 GETTABLE                         R24 R5 R25
      379 ADDK                             R26 R4 K26 [3]
      380 GETTABLE                         R25 R5 R26
      381 CALL                             R23 2 1
      382 SETTABLE                         R23 R8 R22
      383 ADDK                             R22 R9 K42 [16]
      384 GETUPVAL                         R23 2
      385 ADDK                             R26 R4 K14 [1]
      386 SUBK                             R25 R26 K15 [6]
      387 GETTABLE                         R24 R5 R25
      388 ADDK                             R26 R4 K20 [2]
      389 GETTABLE                         R25 R5 R26
      390 CALL                             R23 2 1
      391 SETTABLE                         R23 R8 R22
      392 ADDK                             R22 R9 K43 [17]
      393 GETUPVAL                         R23 2
      394 ADDK                             R26 R4 K20 [2]
      395 SUBK                             R25 R26 K15 [6]
      396 GETTABLE                         R24 R5 R25
      397 ADDK                             R26 R4 K14 [1]
      398 GETTABLE                         R25 R5 R26
      399 CALL                             R23 2 1
      400 SETTABLE                         R23 R8 R22
      401 ADDK                             R22 R9 K44 [18]
      402 GETUPVAL                         R23 2
      403 ADDK                             R26 R4 K26 [3]
      404 SUBK                             R25 R26 K15 [6]
      405 GETTABLE                         R24 R5 R25
      406 ADDK                             R26 R4 K20 [2]
      407 GETTABLE                         R25 R5 R26
      408 CALL                             R23 2 1
      409 SETTABLE                         R23 R8 R22
      410 ADDK                             R22 R9 K45 [19]
      411 GETUPVAL                         R23 2
      412 ADDK                             R26 R4 K20 [2]
      413 SUBK                             R25 R26 K15 [6]
      414 GETTABLE                         R24 R5 R25
      415 ADDK                             R26 R4 K26 [3]
      416 GETTABLE                         R25 R5 R26
      417 CALL                             R23 2 1
      418 SETTABLE                         R23 R8 R22
      419 ADDK                             R22 R9 K46 [20]
      420 GETUPVAL                         R23 2
      421 ADDK                             R26 R4 K14 [1]
      422 SUBK                             R25 R26 K15 [6]
      423 GETTABLE                         R24 R5 R25
      424 ADDK                             R26 R4 K26 [3]
      425 GETTABLE                         R25 R5 R26
      426 CALL                             R23 2 1
      427 SETTABLE                         R23 R8 R22
      428 ADDK                             R22 R9 K47 [21]
      429 GETUPVAL                         R23 2
      430 ADDK                             R26 R4 K26 [3]
      431 SUBK                             R25 R26 K15 [6]
      432 GETTABLE                         R24 R5 R25
      433 ADDK                             R26 R4 K14 [1]
      434 GETTABLE                         R25 R5 R26
      435 CALL                             R23 2 1
      436 SETTABLE                         R23 R8 R22
      437 LOADN                            R24 13
      438 LOADN                            R22 21
      439 LOADN                            R23 1
      440 FORNPREP                         R22
      441 ADD                              R26 R9 R24
      442 GETTABLE                         R25 R8 R26
      443 LOADN                            R26 24
      444 SETTABLEKS                       R26 R25 K29 ["springConstant"]
      446 ADD                              R26 R9 R24
      447 GETTABLE                         R25 R8 R26
      448 LOADN                            R26 7
      449 SETTABLEKS                       R26 R25 K30 ["dampingFactor"]
      451 FORNLOOP                         R22
      452 ADDK                             R9 R9 K35 [9]
      453 ADDK                             R9 R9 K35 [9]
      454 ADDK                             R9 R9 K26 [3]
      455 ADDK                             R4 R4 K26 [3]
      456 FORNLOOP                         R18
      457 SETTABLEKS                       R9 R0 K9 ["numSprings"]
      459 SETTABLEKS                       R4 R0 K4 ["numPoints"]
      461 LOADN                            R20 1
      462 MOVE                             R18 R7
      463 LOADN                            R19 1
      464 FORNPREP                         R18
      465 GETUPVAL                         R22 3
      466 MOVE                             R23 R20
      467 MOVE                             R24 R5
      468 CALL                             R22 2 1
      469 NAMECALL                         R22 R22 K48 ["Inverse"]
      471 CALL                             R22 1 1
      472 GETTABLE                         R24 R6 R20
      473 GETTABLEKS                       R23 R24 K49 ["WorldCFrame"]
      475 MUL                              R21 R22 R23
      476 SETTABLE                         R21 R10 R20
      477 FORNLOOP                         R18
      478 GETIMPORT                        R18 K51 [CFrame.new]
      480 CALL                             R18 0 1
      481 SETTABLEKS                       R18 R3 K50 ["CFrame"]
      483 GETTABLEKS                       R19 R3 K53 ["Size"]
      485 MULK                             R18 R19 K52 [0.4]
      486 SETTABLEKS                       R18 R3 K53 ["Size"]
      488 GETIMPORT                        R18 K55 [tick]
      490 CALL                             R18 0 1
      491 SETTABLEKS                       R18 R0 K56 ["lastTick"]
      493 LOADB                            R18 1
      494 SETTABLEKS                       R18 R0 K57 ["initSucceded"]
      496 LOADN                            R20 0
      497 NAMECALL                         R18 R0 K58 ["afterCamera"]
      499 CALL                             R18 2 0
      500 NEWCLOSURE                       R18 P0
      501 CAPTURE                          VAL R0
      502 GETUPVAL                         R19 4
      503 LOADK                            R21 K59 ["WindhoseAfterCamera"]
      504 GETIMPORT                        R24 K63 [Enum.RenderPriority.Camera]
      506 GETTABLEKS                       R23 R24 K64 ["Value"]
      508 ADDK                             R22 R23 K14 [1]
      509 MOVE                             R23 R18
      510 NAMECALL                         R19 R19 K65 ["BindToRenderStep"]
      512 CALL                             R19 4 0
      513 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["numBones"]
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
       45 GETTABLE                         R23 R6 R18
       46 GETTABLEKS                       R22 R23 K13 ["Parent"]
       48 GETTABLEKS                       R21 R22 K14 ["WorldCFrame"]
       50 NAMECALL                         R21 R21 K15 ["Inverse"]
       52 CALL                             R21 1 1
       53 MUL                              R20 R21 R19
       54 JUMP                             ; [+9]
       55 GETTABLE                         R23 R6 R18
       56 GETTABLEKS                       R22 R23 K13 ["Parent"]
       58 GETTABLEKS                       R21 R22 K16 ["CFrame"]
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
      102 GETIMPORT                        R19 K25 [workspace]
      104 GETTABLEKS                       R18 R19 K26 ["Gravity"]
      106 LOADN                            R19 0
      107 JUMPIFNOTLT                      R19 R18 ; [+23]
      109 LOADN                            R19 0
      110 GETUPVAL                         R24 0
      111 GETTABLEKS                       R23 R24 K27 ["inverseStandardGravity"]
      113 GETIMPORT                        R25 K25 [workspace]
      115 GETTABLEKS                       R24 R25 K26 ["Gravity"]
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
      143 GETUPVAL                         R23 0
      144 GETTABLEKS                       R22 R23 K37 ["spsToFudgedMps"]
      146 MUL                              R21 R22 R8
      147 MULK                             R20 R21 K36 [2]
      148 FASTCALL2                        MATH_MIN R19 R20 ; [+3]
      150 GETIMPORT                        R18 K31 [math.min]
      152 CALL                             R18 2 1
      153 GETUPVAL                         R23 0
      154 GETTABLEKS                       R22 R23 K37 ["spsToFudgedMps"]
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
      181 GETTABLE                         R28 R2 R22
      182 GETTABLEKS                       R27 R28 K45 ["RightVector"]
      184 MUL                              R26 R18 R27
      185 MUL                              R28 R18 R15
      186 FASTCALL1                        MATH_SIN R28 ; [+2]
      187 GETIMPORT                        R27 K47 [math.sin]
      189 CALL                             R27 1 1
      190 MUL                              R25 R26 R27
      191 GETTABLE                         R28 R2 R22
      192 GETTABLEKS                       R27 R28 K48 ["UpVector"]
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
      209 GETTABLE                         R31 R2 R22
      210 GETTABLEKS                       R30 R31 K50 ["LookVector"]
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
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K6 ["maxDtsToAvg"]
       15 MUL                              R3 R4 R5
       16 JUMPIFNOTLE                      R3 R2 ; [+6]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K6 ["maxDtsToAvg"]
       21 SETTABLEKS                       R2 R0 K5 ["lastDtIndex"]
       23 GETTABLEKS                       R3 R0 K5 ["lastDtIndex"]
       25 ADDK                             R2 R3 K7 [1]
       26 SETTABLEKS                       R2 R0 K5 ["lastDtIndex"]
       28 GETTABLEKS                       R2 R0 K8 ["lastDts"]
       30 GETTABLEKS                       R6 R0 K5 ["lastDtIndex"]
       32 SUBK                             R5 R6 K7 [1]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K6 ["maxDtsToAvg"]
       36 MOD                              R4 R5 R6
       37 ADDK                             R3 R4 K7 [1]
       38 SETTABLE                         R1 R2 R3
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R3 R4 K6 ["maxDtsToAvg"]
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
        9 GETIMPORT                        R4 K7 [script]
       11 GETTABLEKS                       R3 R4 K8 ["Parent"]
       13 GETTABLEKS                       R2 R3 K9 ["Particle"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R5 K7 [script]
       20 GETTABLEKS                       R4 R5 K8 ["Parent"]
       22 GETTABLEKS                       R3 R4 K10 ["SpringDamper"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R6 K7 [script]
       29 GETTABLEKS                       R5 R6 K8 ["Parent"]
       31 GETTABLEKS                       R4 R5 K11 ["constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R7 K7 [script]
       38 GETTABLEKS                       R6 R7 K8 ["Parent"]
       40 GETTABLEKS                       R5 R6 K12 ["class"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R8 K7 [script]
       47 GETTABLEKS                       R7 R8 K8 ["Parent"]
       49 GETTABLEKS                       R6 R7 K13 ["constructCFrameForBone"]
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
