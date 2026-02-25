PROTO_0:
        0 MOVE                             R5 R0
        1 NAMECALL                         R3 R1 K0 ["PointToObjectSpace"]
        3 CALL                             R3 2 1
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R3 K1 ["X"]
        7 GETTABLEKS                       R8 R2 K1 ["X"]
        9 MINUS                            R7 R8
       10 DIVK                             R6 R7 K2 [2]
       11 JUMPIFNOTLE                      R6 R5 ; [+44]
       13 LOADB                            R4 0
       14 GETTABLEKS                       R5 R3 K1 ["X"]
       16 GETTABLEKS                       R7 R2 K1 ["X"]
       18 DIVK                             R6 R7 K2 [2]
       19 JUMPIFNOTLE                      R5 R6 ; [+36]
       21 LOADB                            R4 0
       22 GETTABLEKS                       R5 R3 K3 ["Y"]
       24 GETTABLEKS                       R8 R2 K3 ["Y"]
       26 MINUS                            R7 R8
       27 DIVK                             R6 R7 K2 [2]
       28 JUMPIFNOTLE                      R6 R5 ; [+27]
       30 LOADB                            R4 0
       31 GETTABLEKS                       R5 R3 K3 ["Y"]
       33 GETTABLEKS                       R7 R2 K3 ["Y"]
       35 DIVK                             R6 R7 K2 [2]
       36 JUMPIFNOTLE                      R5 R6 ; [+19]
       38 LOADB                            R4 0
       39 GETTABLEKS                       R5 R3 K4 ["Z"]
       41 GETTABLEKS                       R8 R2 K4 ["Z"]
       43 MINUS                            R7 R8
       44 DIVK                             R6 R7 K2 [2]
       45 JUMPIFNOTLE                      R6 R5 ; [+10]
       47 GETTABLEKS                       R5 R3 K4 ["Z"]
       49 GETTABLEKS                       R7 R2 K4 ["Z"]
       51 DIVK                             R6 R7 K2 [2]
       52 JUMPIFLE                         R5 R6 ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 RETURN                           R4 1

PROTO_1:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["Size"]
        3 GETTABLEKS                       R3 R4 K1 ["X"]
        5 GETTABLEKS                       R4 R1 K1 ["X"]
        7 JUMPIFNOTLE                      R3 R4 ; [+20]
        9 LOADB                            R2 0
       10 GETTABLEKS                       R4 R0 K0 ["Size"]
       12 GETTABLEKS                       R3 R4 K2 ["Y"]
       14 GETTABLEKS                       R4 R1 K2 ["Y"]
       16 JUMPIFNOTLE                      R3 R4 ; [+11]
       18 GETTABLEKS                       R4 R0 K0 ["Size"]
       20 GETTABLEKS                       R3 R4 K3 ["Z"]
       22 GETTABLEKS                       R4 R1 K3 ["Z"]
       24 JUMPIFLE                         R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["Size"]
        2 MUL                              R3 R2 R4
        3 NAMECALL                         R3 R3 K1 ["Abs"]
        5 CALL                             R3 1 1
        6 LOADB                            R4 0
        7 GETTABLEKS                       R5 R3 K2 ["X"]
        9 GETTABLEKS                       R6 R1 K2 ["X"]
       11 JUMPIFNOTLE                      R5 R6 ; [+16]
       13 LOADB                            R4 0
       14 GETTABLEKS                       R5 R3 K3 ["Y"]
       16 GETTABLEKS                       R6 R1 K3 ["Y"]
       18 JUMPIFNOTLE                      R5 R6 ; [+9]
       20 GETTABLEKS                       R5 R3 K4 ["Z"]
       22 GETTABLEKS                       R6 R1 K4 ["Z"]
       24 JUMPIFLE                         R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 RETURN                           R4 1

PROTO_3:
        0 MULK                             R3 R0 K0 [100]
        1 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.floor]
        4 CALL                             R2 1 1
        5 DIVK                             R1 R2 K0 [100]
        6 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R3 0 1
        2 GETIMPORT                        R4 K2 [string.format]
        4 LOADK                            R5 K3 ["%s has size larger than max allowed bounding size. The max size for type %s is [%.2f, %.2f, %.2f]"]
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 GETTABLEKS                       R9 R2 K4 ["X"]
        9 MULK                             R11 R9 K5 [100]
       10 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       11 GETIMPORT                        R10 K8 [math.floor]
       13 CALL                             R10 1 1
       14 DIVK                             R8 R10 K5 [100]
       15 GETTABLEKS                       R10 R2 K9 ["Y"]
       17 MULK                             R12 R10 K5 [100]
       18 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       19 GETIMPORT                        R11 K8 [math.floor]
       21 CALL                             R11 1 1
       22 DIVK                             R9 R11 K5 [100]
       23 GETTABLEKS                       R11 R2 K10 ["Z"]
       25 MULK                             R13 R11 K5 [100]
       26 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       27 GETIMPORT                        R12 K8 [math.floor]
       29 CALL                             R12 1 1
       30 DIVK                             R10 R12 K5 [100]
       31 CALL                             R4 6 -1
       32 SETLIST                          R3 R4 -1 [1]
       34 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 NAMECALL                         R0 R0 K1 ["GetEditableMeshVerts"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETTABLEKS                       R7 R6 K0 ["isServer"]
        2 GETTABLEKS                       R8 R4 K1 ["size"]
        4 GETTABLEKS                       R10 R4 K3 ["offset"]
        6 ORK                              R9 R10 K2 [{0, 0, 0}]
        7 GETTABLEKS                       R12 R0 K4 ["CFrame"]
        9 GETTABLEKS                       R13 R1 K4 ["CFrame"]
       11 MUL                              R11 R12 R13
       12 GETIMPORT                        R12 K6 [CFrame.new]
       14 MOVE                             R13 R9
       15 CALL                             R12 1 1
       16 MUL                              R10 R11 R12
       17 GETTABLEKS                       R12 R0 K7 ["Position"]
       19 GETTABLEKS                       R11 R12 K8 ["X"]
       21 LOADN                            R12 16
       22 JUMPIFLT                         R12 R11 ; [+36]
       24 GETTABLEKS                       R12 R0 K7 ["Position"]
       26 GETTABLEKS                       R11 R12 K8 ["X"]
       28 LOADN                            R12 240
       29 JUMPIFLT                         R11 R12 ; [+29]
       31 GETTABLEKS                       R12 R0 K7 ["Position"]
       33 GETTABLEKS                       R11 R12 K9 ["Y"]
       35 LOADN                            R12 16
       36 JUMPIFLT                         R12 R11 ; [+22]
       38 GETTABLEKS                       R12 R0 K7 ["Position"]
       40 GETTABLEKS                       R11 R12 K9 ["Y"]
       42 LOADN                            R12 240
       43 JUMPIFLT                         R11 R12 ; [+15]
       45 GETTABLEKS                       R12 R0 K7 ["Position"]
       47 GETTABLEKS                       R11 R12 K10 ["Z"]
       49 LOADN                            R12 16
       50 JUMPIFLT                         R12 R11 ; [+8]
       52 GETTABLEKS                       R12 R0 K7 ["Position"]
       54 GETTABLEKS                       R11 R12 K10 ["Z"]
       56 LOADN                            R12 240
       57 JUMPIFNOTLT                      R11 R12 ; [+8]
       59 LOADB                            R11 0
       60 NEWTABLE                         R12 0 1
       62 LOADK                            R13 K11 ["Position is outside of bounds"]
       63 SETLIST                          R12 R13 1 [1]
       65 RETURN                           R11 2
       66 GETTABLEKS                       R12 R10 K7 ["Position"]
       68 GETTABLEKS                       R11 R12 K8 ["X"]
       70 LOADN                            R12 16
       71 JUMPIFLT                         R12 R11 ; [+36]
       73 GETTABLEKS                       R12 R10 K7 ["Position"]
       75 GETTABLEKS                       R11 R12 K8 ["X"]
       77 LOADN                            R12 240
       78 JUMPIFLT                         R11 R12 ; [+29]
       80 GETTABLEKS                       R12 R10 K7 ["Position"]
       82 GETTABLEKS                       R11 R12 K9 ["Y"]
       84 LOADN                            R12 16
       85 JUMPIFLT                         R12 R11 ; [+22]
       87 GETTABLEKS                       R12 R10 K7 ["Position"]
       89 GETTABLEKS                       R11 R12 K9 ["Y"]
       91 LOADN                            R12 240
       92 JUMPIFLT                         R11 R12 ; [+15]
       94 GETTABLEKS                       R12 R10 K7 ["Position"]
       96 GETTABLEKS                       R11 R12 K10 ["Z"]
       98 LOADN                            R12 16
       99 JUMPIFLT                         R12 R11 ; [+8]
      101 GETTABLEKS                       R12 R10 K7 ["Position"]
      103 GETTABLEKS                       R11 R12 K10 ["Z"]
      105 LOADN                            R12 240
      106 JUMPIFNOTLT                      R11 R12 ; [+8]
      108 LOADB                            R11 0
      109 NEWTABLE                         R12 0 1
      111 LOADK                            R13 K11 ["Position is outside of bounds"]
      112 SETLIST                          R12 R13 1 [1]
      114 RETURN                           R11 2
      115 GETTABLEKS                       R11 R3 K8 ["X"]
      117 GETUPVAL                         R13 0
      118 DIVK                             R12 R13 K12 [1000]
      119 JUMPIFLT                         R11 R12 ; [+13]
      121 GETTABLEKS                       R11 R3 K9 ["Y"]
      123 GETUPVAL                         R13 0
      124 DIVK                             R12 R13 K12 [1000]
      125 JUMPIFLT                         R11 R12 ; [+7]
      127 GETTABLEKS                       R11 R3 K10 ["Z"]
      129 GETUPVAL                         R13 0
      130 DIVK                             R12 R13 K12 [1000]
      131 JUMPIFNOTLT                      R11 R12 ; [+8]
      133 LOADB                            R11 0
      134 NEWTABLE                         R12 0 1
      136 LOADK                            R13 K13 ["Mesh scale is too small"]
      137 SETLIST                          R12 R13 1 [1]
      139 RETURN                           R11 2
      140 GETUPVAL                         R11 1
      141 CALL                             R11 0 1
      142 JUMPIFNOT                        R11 ; [+31]
      143 GETTABLEKS                       R11 R3 K8 ["X"]
      145 GETUPVAL                         R13 2
      146 DIVK                             R12 R13 K12 [1000]
      147 JUMPIFLT                         R12 R11 ; [+13]
      149 GETTABLEKS                       R11 R3 K9 ["Y"]
      151 GETUPVAL                         R13 2
      152 DIVK                             R12 R13 K12 [1000]
      153 JUMPIFLT                         R12 R11 ; [+7]
      155 GETTABLEKS                       R11 R3 K10 ["Z"]
      157 GETUPVAL                         R13 2
      158 DIVK                             R12 R13 K12 [1000]
      159 JUMPIFNOTLT                      R12 R11 ; [+14]
      161 LOADB                            R11 0
      162 NEWTABLE                         R12 0 1
      164 LOADK                            R14 K14 ["%* mesh scale is too large"]
      165 GETTABLEKS                       R16 R0 K15 ["Name"]
      167 NAMECALL                         R14 R14 K16 ["format"]
      169 CALL                             R14 2 1
      170 MOVE                             R13 R14
      171 SETLIST                          R12 R13 1 [1]
      173 RETURN                           R11 2
      174 GETIMPORT                        R11 K18 [pcall]
      176 NEWCLOSURE                       R12 P0
      177 CAPTURE                          UPVAL U3
      178 CAPTURE                          VAL R2
      179 CALL                             R11 1 2
      180 JUMPIF                           R11 ; [+35]
      181 GETUPVAL                         R14 4
      182 GETTABLEKS                       R13 R14 K19 ["reportFailure"]
      184 GETUPVAL                         R16 4
      185 GETTABLEKS                       R15 R16 K20 ["ErrorType"]
      187 GETTABLEKS                       R14 R15 K21 ["validateMeshBounds_FailedToLoadMesh"]
      189 LOADNIL                          R15
      190 MOVE                             R16 R6
      191 CALL                             R13 3 0
      192 JUMPIFEQKNIL                     R7 ; [+11]
      194 JUMPIFNOT                        R7 ; [+9]
      195 GETIMPORT                        R13 K23 [error]
      197 GETIMPORT                        R14 K25 [string.format]
      199 LOADK                            R15 K26 ["Failed to load body part mesh %s. Make sure body part exists and try again."]
      200 GETTABLEKS                       R16 R2 K27 ["fullName"]
      202 CALL                             R14 2 -1
      203 CALL                             R13 -1 0
      204 LOADB                            R13 0
      205 NEWTABLE                         R14 0 1
      207 GETIMPORT                        R15 K25 [string.format]
      209 LOADK                            R16 K26 ["Failed to load body part mesh %s. Make sure body part exists and try again."]
      210 GETTABLEKS                       R17 R2 K27 ["fullName"]
      212 CALL                             R15 2 -1
      213 SETLIST                          R14 R15 -1 [1]
      215 RETURN                           R13 2
      216 GETIMPORT                        R13 K29 [pairs]
      218 MOVE                             R14 R12
      219 CALL                             R13 1 3
      220 FORGPREP_NEXT                    R13
      221 GETTABLEKS                       R18 R0 K4 ["CFrame"]
      223 MUL                              R20 R17 R3
      224 NAMECALL                         R18 R18 K30 ["PointToWorldSpace"]
      226 CALL                             R18 2 1
      227 GETUPVAL                         R19 5
      228 MOVE                             R20 R18
      229 MOVE                             R21 R10
      230 MOVE                             R22 R8
      231 CALL                             R19 3 1
      232 JUMPIF                           R19 ; [+19]
      233 GETUPVAL                         R20 4
      234 GETTABLEKS                       R19 R20 K19 ["reportFailure"]
      236 GETUPVAL                         R22 4
      237 GETTABLEKS                       R21 R22 K20 ["ErrorType"]
      239 GETTABLEKS                       R20 R21 K31 ["validateMeshBounds_TooLarge"]
      241 LOADNIL                          R21
      242 MOVE                             R22 R6
      243 CALL                             R19 3 0
      244 LOADB                            R19 0
      245 GETUPVAL                         R20 6
      246 GETTABLEKS                       R21 R2 K32 ["context"]
      248 MOVE                             R22 R5
      249 MOVE                             R23 R8
      250 CALL                             R20 3 1
      251 RETURN                           R19 2
      252 FORGLOOP                         R13 2 ; [-32]
      254 GETUPVAL                         R13 7
      255 CALL                             R13 0 1
      256 JUMPIFNOT                        R13 ; [+105]
      257 GETUPVAL                         R13 8
      258 JUMPIFNOT                        R13 ; [+54]
      259 GETTABLEKS                       R14 R1 K4 ["CFrame"]
      261 GETTABLEKS                       R13 R14 K33 ["Rotation"]
      263 GETTABLEKS                       R16 R0 K34 ["Size"]
      265 MUL                              R15 R13 R16
      266 NAMECALL                         R15 R15 K35 ["Abs"]
      268 CALL                             R15 1 1
      269 LOADB                            R14 0
      270 GETTABLEKS                       R16 R15 K8 ["X"]
      272 GETTABLEKS                       R17 R8 K8 ["X"]
      274 JUMPIFNOTLE                      R16 R17 ; [+16]
      276 LOADB                            R14 0
      277 GETTABLEKS                       R16 R15 K9 ["Y"]
      279 GETTABLEKS                       R17 R8 K9 ["Y"]
      281 JUMPIFNOTLE                      R16 R17 ; [+9]
      283 GETTABLEKS                       R16 R15 K10 ["Z"]
      285 GETTABLEKS                       R17 R8 K10 ["Z"]
      287 JUMPIFLE                         R16 R17 ; [+2]
      289 LOADB                            R14 0 +1
      290 LOADB                            R14 1
      291 JUMPIF                           R14 ; [+70]
      292 GETUPVAL                         R15 4
      293 GETTABLEKS                       R14 R15 K19 ["reportFailure"]
      295 GETUPVAL                         R17 4
      296 GETTABLEKS                       R16 R17 K20 ["ErrorType"]
      298 GETTABLEKS                       R15 R16 K31 ["validateMeshBounds_TooLarge"]
      300 LOADNIL                          R16
      301 MOVE                             R17 R6
      302 CALL                             R14 3 0
      303 LOADB                            R14 0
      304 GETUPVAL                         R15 6
      305 NAMECALL                         R16 R0 K36 ["GetFullName"]
      307 CALL                             R16 1 1
      308 MOVE                             R17 R5
      309 MOVE                             R18 R8
      310 CALL                             R15 3 1
      311 RETURN                           R14 2
      312 JUMP                             ; [+49]
      313 LOADB                            R13 0
      314 GETTABLEKS                       R15 R0 K34 ["Size"]
      316 GETTABLEKS                       R14 R15 K8 ["X"]
      318 GETTABLEKS                       R15 R8 K8 ["X"]
      320 JUMPIFNOTLE                      R14 R15 ; [+20]
      322 LOADB                            R13 0
      323 GETTABLEKS                       R15 R0 K34 ["Size"]
      325 GETTABLEKS                       R14 R15 K9 ["Y"]
      327 GETTABLEKS                       R15 R8 K9 ["Y"]
      329 JUMPIFNOTLE                      R14 R15 ; [+11]
      331 GETTABLEKS                       R15 R0 K34 ["Size"]
      333 GETTABLEKS                       R14 R15 K10 ["Z"]
      335 GETTABLEKS                       R15 R8 K10 ["Z"]
      337 JUMPIFLE                         R14 R15 ; [+2]
      339 LOADB                            R13 0 +1
      340 LOADB                            R13 1
      341 JUMPIF                           R13 ; [+20]
      342 GETUPVAL                         R14 4
      343 GETTABLEKS                       R13 R14 K19 ["reportFailure"]
      345 GETUPVAL                         R16 4
      346 GETTABLEKS                       R15 R16 K20 ["ErrorType"]
      348 GETTABLEKS                       R14 R15 K31 ["validateMeshBounds_TooLarge"]
      350 LOADNIL                          R15
      351 MOVE                             R16 R6
      352 CALL                             R13 3 0
      353 LOADB                            R13 0
      354 GETUPVAL                         R14 6
      355 NAMECALL                         R15 R0 K36 ["GetFullName"]
      357 CALL                             R15 1 1
      358 MOVE                             R16 R5
      359 MOVE                             R17 R8
      360 CALL                             R14 3 1
      361 RETURN                           R13 2
      362 GETUPVAL                         R13 9
      363 CALL                             R13 0 1
      364 JUMPIF                           R13 ; [+3]
      365 GETUPVAL                         R13 10
      366 CALL                             R13 0 1
      367 JUMPIFNOT                        R13 ; [+103]
      368 GETIMPORT                        R13 K39 [table.clone]
      370 MOVE                             R14 R2
      371 CALL                             R13 1 1
      372 SETTABLEKS                       R3 R13 K40 ["scale"]
      374 GETUPVAL                         R14 11
      375 MOVE                             R15 R13
      376 MOVE                             R16 R6
      377 CALL                             R14 2 4
      378 JUMPIF                           R14 ; [+3]
      379 LOADB                            R18 0
      380 MOVE                             R19 R15
      381 RETURN                           R18 2
      382 GETUPVAL                         R18 10
      383 CALL                             R18 0 1
      384 JUMPIFNOT                        R18 ; [+45]
      385 SUB                              R18 R17 R16
      386 GETUPVAL                         R20 12
      387 CALL                             R20 0 1
      388 DIVK                             R19 R20 K41 [100]
      389 GETTABLEKS                       R21 R18 K8 ["X"]
      391 GETTABLEKS                       R22 R18 K9 ["Y"]
      393 GETTABLEKS                       R23 R18 K10 ["Z"]
      395 FASTCALL                         MATH_MIN ; [+2]
      396 GETIMPORT                        R20 K44 [math.min]
      398 CALL                             R20 3 1
      399 JUMPIFNOTLT                      R20 R19 ; [+30]
      401 GETUPVAL                         R21 4
      402 GETTABLEKS                       R20 R21 K19 ["reportFailure"]
      404 GETUPVAL                         R23 4
      405 GETTABLEKS                       R22 R23 K20 ["ErrorType"]
      407 GETTABLEKS                       R21 R22 K45 ["validateAssetBounds_AssetSizeTooSmall"]
      409 LOADNIL                          R22
      410 MOVE                             R23 R6
      411 CALL                             R20 3 0
      412 LOADB                            R20 0
      413 NEWTABLE                         R21 0 1
      415 LOADK                            R23 K46 ["%*.%* is smaller than the min size of (%*, %*, %*)."]
      416 GETTABLEKS                       R25 R2 K27 ["fullName"]
      418 GETTABLEKS                       R26 R2 K47 ["fieldName"]
      420 MOVE                             R27 R19
      421 MOVE                             R28 R19
      422 MOVE                             R29 R19
      423 NAMECALL                         R23 R23 K16 ["format"]
      425 CALL                             R23 6 1
      426 MOVE                             R22 R23
      427 SETLIST                          R21 R22 1 [1]
      429 RETURN                           R20 2
      430 GETUPVAL                         R18 9
      431 CALL                             R18 0 1
      432 JUMPIFNOT                        R18 ; [+38]
      433 GETTABLEKS                       R18 R6 K48 ["allowEditableInstances"]
      435 JUMPIF                           R18 ; [+35]
      436 ADD                              R19 R16 R17
      437 DIVK                             R18 R19 K49 [2]
      438 GETUPVAL                         R20 13
      439 CALL                             R20 0 1
      440 DIVK                             R19 R20 K41 [100]
      441 GETTABLEKS                       R20 R18 K50 ["Magnitude"]
      443 JUMPIFNOTLT                      R19 R20 ; [+27]
      445 GETUPVAL                         R21 4
      446 GETTABLEKS                       R20 R21 K19 ["reportFailure"]
      448 GETUPVAL                         R23 4
      449 GETTABLEKS                       R22 R23 K20 ["ErrorType"]
      451 GETTABLEKS                       R21 R22 K51 ["validateMeshBounds_Shifted"]
      453 LOADNIL                          R22
      454 MOVE                             R23 R6
      455 CALL                             R20 3 0
      456 LOADB                            R20 0
      457 NEWTABLE                         R21 0 1
      459 LOADK                            R23 K52 ["%*.%* has mesh data that is not centered. Please reimport this mesh with the roblox 3d importer, and ensure there is no loose geometry in the source file."]
      460 GETTABLEKS                       R25 R2 K27 ["fullName"]
      462 GETTABLEKS                       R26 R2 K47 ["fieldName"]
      464 NAMECALL                         R23 R23 K16 ["format"]
      466 CALL                             R23 3 1
      467 MOVE                             R22 R23
      468 SETLIST                          R21 R22 1 [1]
      470 RETURN                           R20 2
      471 LOADB                            R13 1
      472 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R4 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R5 R1 K11 ["flags"]
       24 GETTABLEKS                       R4 R5 K12 ["getFFlagUGCValidatePartSizeWithinRenderSizeLimits"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R6 R1 K11 ["flags"]
       31 GETTABLEKS                       R5 R6 K13 ["getFFlagUGCValidateMeshBBoxIsCentered"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R7 R1 K11 ["flags"]
       38 GETTABLEKS                       R6 R7 K14 ["getFFlagUGCValidateMeshBBoxMinSize"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R8 R1 K11 ["flags"]
       45 GETTABLEKS                       R7 R8 K15 ["getFFlagUGCValidateMeshMaxScale"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R9 R1 K11 ["flags"]
       52 GETTABLEKS                       R8 R9 K16 ["getFIntUGCValidateMeshCenteringHundredsThreshold"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K8 [require]
       57 GETTABLEKS                       R10 R1 K11 ["flags"]
       59 GETTABLEKS                       R9 R10 K17 ["getFIntUGCValidateMeshMinSizeHundredsThreshold"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K8 [require]
       64 GETTABLEKS                       R11 R1 K9 ["util"]
       66 GETTABLEKS                       R10 R11 K18 ["getMeshMinMax"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K8 [require]
       71 GETTABLEKS                       R11 R1 K19 ["Analytics"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K1 [game]
       76 LOADK                            R13 K20 ["UGCValidationScaleMinimumThousandths"]
       77 LOADN                            R14 10
       78 NAMECALL                         R11 R11 K21 ["DefineFastInt"]
       80 CALL                             R11 3 1
       81 GETIMPORT                        R12 K1 [game]
       83 LOADK                            R14 K22 ["FIntUGCValidationScaleMaximumThousandths"]
       84 LOADN                            R15 16
       85 NAMECALL                         R12 R12 K21 ["DefineFastInt"]
       87 CALL                             R12 3 1
       88 GETIMPORT                        R13 K1 [game]
       90 LOADK                            R15 K23 ["RenderBoundsCheckAttachmentOrientation"]
       91 LOADB                            R16 0
       92 NAMECALL                         R13 R13 K24 ["DefineFastFlag"]
       94 CALL                             R13 3 1
       95 DUPCLOSURE                       R14 K25 [PROTO_0]
       96 DUPCLOSURE                       R15 K26 [PROTO_1]
       97 DUPCLOSURE                       R16 K27 [PROTO_2]
       98 DUPCLOSURE                       R17 K28 [PROTO_3]
       99 DUPCLOSURE                       R18 K29 [PROTO_4]
      100 DUPCLOSURE                       R19 K30 [PROTO_6]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R7
      115 RETURN                           R19 1
