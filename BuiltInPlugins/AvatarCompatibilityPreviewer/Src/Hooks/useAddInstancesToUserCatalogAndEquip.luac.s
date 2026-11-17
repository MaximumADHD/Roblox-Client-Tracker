PROTO_0:
        0 LOADNIL                          R1
        1 NEWTABLE                         R2 0 0
        3 NEWTABLE                         R3 0 0
        5 NEWTABLE                         R4 0 0
        7 LOADN                            R5 0
        8 LOADNIL                          R6
        9 MOVE                             R7 R0
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 LOADK                            R14 K0 ["MeshPart"]
       14 NAMECALL                         R12 R11 K1 ["IsA"]
       16 CALL                             R12 2 1
       17 JUMPIFNOT                        R12 ; [+32]
       18 GETIMPORT                        R12 K4 [table.find]
       20 GETUPVAL                         R13 0
       21 GETTABLEKS                       R13 R13 K5 ["LIMBS"]
       23 GETTABLEKS                       R14 R11 K6 ["Name"]
       25 CALL                             R12 2 1
       26 JUMPIFNOTEQKNIL                  R12 ; [+23]
       28 GETTABLEKS                       R12 R11 K7 ["Parent"]
       30 JUMPIFEQKNIL                     R12 ; [+204]
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R13 R11 K7 ["Parent"]
       35 CALL                             R12 1 1
       36 JUMPIFNOT                        R12 ; [+198]
       37 GETIMPORT                        R12 K9 [string.find]
       39 GETTABLEKS                       R13 R11 K6 ["Name"]
       41 LOADK                            R14 K10 ["_Att"]
       42 CALL                             R12 2 1
       43 JUMPIF                           R12 ; [+191]
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R12 R12 K11 ["addLoneMeshPart"]
       47 MOVE                             R13 R11
       48 CALL                             R12 1 0
       49 JUMP                             ; [+185]
       50 NEWTABLE                         R12 0 0
       52 LOADN                            R13 0
       53 GETUPVAL                         R14 3
       54 LOADNIL                          R15
       55 LOADNIL                          R16
       56 FORGPREP                         R14
       57 MOVE                             R19 R18
       58 LOADNIL                          R20
       59 LOADNIL                          R21
       60 FORGPREP                         R19
       61 GETTABLEKS                       R24 R23 K12 ["CreateCustomInstanceFromSelection"]
       63 MOVE                             R25 R11
       64 CALL                             R24 1 1
       65 JUMPIFEQKNIL                     R24 ; [+70]
       67 JUMPIFNOTEQKNIL                  R24 ; [+2]
       69 LOADB                            R26 0 +1
       70 LOADB                            R26 1
       71 GETUPVAL                         R27 0
       72 GETTABLEKS                       R27 R27 K13 ["LUAU_ANALYZE_ERROR"]
       74 FASTCALL2                        ASSERT R26 R27 ; [+3]
       76 GETIMPORT                        R25 K15 [assert]
       78 CALL                             R25 2 0
       79 FASTCALL1                        TYPEOF R24 ; [+3]
       80 MOVE                             R26 R24
       81 GETIMPORT                        R25 K17 [typeof]
       83 CALL                             R25 1 1
       84 JUMPIFNOTEQKS                    R25 K8 ["string"] ; [+3]
       86 SETTABLE                         R24 R4 R11
       87 JUMP                             ; [+48]
       88 JUMPIFNOTEQ                      R24 R11 ; [+2]
       90 LOADB                            R26 0 +1
       91 LOADB                            R26 1
       92 FASTCALL2K                       ASSERT R26 K18 ; [+4]
       94 LOADK                            R27 K18 ["CreateCustomInstanceFromSelection should always give a new instance"]
       95 GETIMPORT                        R25 K15 [assert]
       97 CALL                             R25 2 0
       98 GETTABLEKS                       R27 R24 K7 ["Parent"]
      100 JUMPIFEQKNIL                     R27 ; [+2]
      102 LOADB                            R26 0 +1
      103 LOADB                            R26 1
      104 FASTCALL2K                       ASSERT R26 K19 ; [+4]
      106 LOADK                            R27 K19 ["CreateCustomInstanceFromSelection should give an isolated instance"]
      107 GETIMPORT                        R25 K15 [assert]
      109 CALL                             R25 2 0
      110 GETUPVAL                         R25 4
      111 MOVE                             R26 R24
      112 NEWTABLE                         R27 0 1
      114 LOADK                            R28 K20 ["Handle"]
      115 SETLIST                          R27 R28 1 [1]
      117 CALL                             R25 2 0
      118 LOADB                            R25 0
      119 MOVE                             R26 R12
      120 LOADNIL                          R27
      121 LOADNIL                          R28
      122 FORGPREP                         R26
      123 GETTABLEKS                       R31 R29 K21 ["Key"]
      125 GETTABLEKS                       R32 R23 K21 ["Key"]
      127 JUMPIFNOTEQ                      R31 R32 ; [+3]
      129 LOADB                            R25 1
      130 JUMP                             ; [+2]
      131 FORGLOOP                         R26 1 ; [-9]
      133 JUMPIF                           R25 ; [+2]
      134 ADDK                             R13 R13 K22 [1]
      135 SETTABLE                         R24 R12 R23
      136 FORGLOOP                         R19 2 ; [-76]
      138 FORGLOOP                         R14 2 ; [-82]
      140 JUMPIFNOTEQKN                    R13 K23 [0] ; [+9]
      142 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
      144 MOVE                             R15 R2
      145 MOVE                             R16 R11
      146 GETIMPORT                        R14 K25 [table.insert]
      148 CALL                             R14 2 0
      149 JUMP                             ; [+85]
      150 LOADN                            R14 1
      151 JUMPIFNOTLT                      R14 R13 ; [+22]
      153 NAMECALL                         R14 R11 K26 ["Clone"]
      155 CALL                             R14 1 1
      156 GETUPVAL                         R15 4
      157 MOVE                             R16 R14
      158 NEWTABLE                         R17 0 1
      160 LOADK                            R18 K20 ["Handle"]
      161 SETLIST                          R17 R18 1 [1]
      163 CALL                             R15 2 0
      164 GETUPVAL                         R15 2
      165 GETTABLEKS                       R15 R15 K27 ["addAmbiguousAsset"]
      167 DUPTABLE                         R16 K30 [{"worldModel", "instances"}]
      168 SETTABLEKS                       R14 R16 K28 ["worldModel"]
      170 SETTABLEKS                       R12 R16 K29 ["instances"]
      172 CALL                             R15 1 0
      173 JUMP                             ; [+61]
      174 GETIMPORT                        R14 K32 [next]
      176 MOVE                             R15 R12
      177 CALL                             R14 1 2
      178 LOADB                            R17 0
      179 JUMPIFEQKNIL                     R14 ; [+5]
      181 JUMPIFNOTEQKNIL                  R15 ; [+2]
      183 LOADB                            R17 0 +1
      184 LOADB                            R17 1
      185 GETUPVAL                         R18 0
      186 GETTABLEKS                       R18 R18 K13 ["LUAU_ANALYZE_ERROR"]
      188 FASTCALL2                        ASSERT R17 R18 ; [+3]
      190 GETIMPORT                        R16 K15 [assert]
      192 CALL                             R16 2 0
      193 GETTABLEKS                       R16 R14 K21 ["Key"]
      195 JUMPIFNOTEQKS                    R16 K33 ["Shoes"] ; [+4]
      197 SETTABLE                         R14 R3 R11
      198 ADDK                             R5 R5 K22 [1]
      199 JUMP                             ; [+35]
      200 MOVE                             R16 R6
      201 JUMPIF                           R16 ; [+7]
      202 GETUPVAL                         R16 5
      203 GETUPVAL                         R18 0
      204 GETTABLEKS                       R18 R18 K34 ["WAYPOINT_NAME_ADD_ITEMS"]
      206 NAMECALL                         R16 R16 K35 ["TryBeginRecording"]
      208 CALL                             R16 2 1
      209 MOVE                             R6 R16
      210 GETUPVAL                         R16 6
      211 GETTABLEKS                       R16 R16 K36 ["addNewItem"]
      213 MOVE                             R17 R15
      214 MOVE                             R18 R14
      215 MOVE                             R19 R11
      216 CALL                             R16 3 0
      217 GETUPVAL                         R16 7
      218 GETTABLEKS                       R16 R16 K37 ["addEquippedItem"]
      220 DUPTABLE                         R17 K40 [{"palette", "item"}]
      221 SETTABLEKS                       R14 R17 K38 ["palette"]
      223 DUPTABLE                         R18 K43 [{"source", "instance"}]
      224 GETUPVAL                         R19 0
      225 GETTABLEKS                       R19 R19 K44 ["SOURCE_INSTANCE"]
      227 SETTABLEKS                       R19 R18 K41 ["source"]
      229 SETTABLEKS                       R15 R18 K42 ["instance"]
      231 SETTABLEKS                       R18 R17 K39 ["item"]
      233 CALL                             R16 1 0
      234 MOVE                             R1 R14
      235 FORGLOOP                         R7 2 ; [-223]
      237 JUMPIFNOTEQKN                    R5 K45 [2] ; [+138]
      239 GETIMPORT                        R7 K48 [Instance.new]
      241 LOADK                            R8 K49 ["Folder"]
      242 CALL                             R7 1 1
      243 LOADNIL                          R8
      244 LOADNIL                          R9
      245 MOVE                             R10 R3
      246 LOADNIL                          R11
      247 LOADNIL                          R12
      248 FORGPREP                         R10
      249 JUMPIFNOTEQKNIL                  R9 ; [+3]
      251 MOVE                             R9 R14
      252 JUMP                             ; [+6]
      253 JUMPIFEQ                         R14 R9 ; [+5]
      255 GETIMPORT                        R15 K51 [warn]
      257 LOADK                            R16 K52 ["Shoes palette mismatch found!"]
      258 CALL                             R15 1 0
      259 LOADNIL                          R15
      260 LOADK                            R18 K49 ["Folder"]
      261 NAMECALL                         R16 R13 K1 ["IsA"]
      263 CALL                             R16 2 1
      264 JUMPIFNOT                        R16 ; [+12]
      265 NAMECALL                         R17 R13 K53 ["GetChildren"]
      267 CALL                             R17 1 1
      268 LENGTH                           R16 R17
      269 LOADN                            R17 1
      270 JUMPIFLT                         R17 R16 ; [+31]
      272 NAMECALL                         R16 R13 K53 ["GetChildren"]
      274 CALL                             R16 1 1
      275 GETTABLEN                        R15 R16 1
      276 JUMP                             ; [+1]
      277 MOVE                             R15 R13
      278 NAMECALL                         R16 R15 K26 ["Clone"]
      280 CALL                             R16 1 1
      281 LOADK                            R19 K20 ["Handle"]
      282 NAMECALL                         R17 R16 K54 ["FindFirstChild"]
      284 CALL                             R17 2 1
      285 LOADK                            R20 K55 ["Accessory"]
      286 NAMECALL                         R18 R16 K1 ["IsA"]
      288 CALL                             R18 2 1
      289 JUMPIFNOT                        R18 ; [+10]
      290 JUMPIFEQKNIL                     R17 ; [+9]
      292 SETTABLEKS                       R7 R16 K7 ["Parent"]
      294 LOADK                            R20 K56 ["LeftFootAttachment"]
      295 NAMECALL                         R18 R17 K54 ["FindFirstChild"]
      297 CALL                             R18 2 1
      298 JUMPIFNOT                        R18 ; [+1]
      299 MOVE                             R8 R15
      300 FORGLOOP                         R10 2 ; [-52]
      302 GETTABLEKS                       R10 R9 K12 ["CreateCustomInstanceFromSelection"]
      304 MOVE                             R11 R7
      305 CALL                             R10 1 1
      306 JUMPIFEQKNIL                     R10 ; [+41]
      308 FASTCALL1                        TYPEOF R10 ; [+3]
      309 MOVE                             R12 R10
      310 GETIMPORT                        R11 K17 [typeof]
      312 CALL                             R11 1 1
      313 JUMPIFEQKS                       R11 K8 ["string"] ; [+34]
      315 LOADK                            R13 K46 ["Instance"]
      316 NAMECALL                         R11 R10 K1 ["IsA"]
      318 CALL                             R11 2 1
      319 JUMPIFNOT                        R11 ; [+28]
      320 JUMPIFEQKNIL                     R8 ; [+27]
      322 GETUPVAL                         R11 6
      323 GETTABLEKS                       R11 R11 K36 ["addNewItem"]
      325 MOVE                             R12 R10
      326 MOVE                             R13 R9
      327 MOVE                             R14 R8
      328 CALL                             R11 3 0
      329 GETUPVAL                         R11 7
      330 GETTABLEKS                       R11 R11 K37 ["addEquippedItem"]
      332 DUPTABLE                         R12 K40 [{"palette", "item"}]
      333 SETTABLEKS                       R9 R12 K38 ["palette"]
      335 DUPTABLE                         R13 K43 [{"source", "instance"}]
      336 GETUPVAL                         R14 0
      337 GETTABLEKS                       R14 R14 K44 ["SOURCE_INSTANCE"]
      339 SETTABLEKS                       R14 R13 K41 ["source"]
      341 SETTABLEKS                       R10 R13 K42 ["instance"]
      343 SETTABLEKS                       R13 R12 K39 ["item"]
      345 CALL                             R11 1 0
      346 MOVE                             R1 R9
      347 JUMP                             ; [+143]
      348 FASTCALL1                        TYPEOF R10 ; [+3]
      349 MOVE                             R12 R10
      350 GETIMPORT                        R11 K17 [typeof]
      352 CALL                             R11 1 1
      353 JUMPIFNOTEQKS                    R11 K8 ["string"] ; [+8]
      355 GETIMPORT                        R11 K32 [next]
      357 MOVE                             R12 R3
      358 CALL                             R11 1 2
      359 JUMPIFEQKNIL                     R11 ; [+2]
      361 SETTABLE                         R10 R4 R11
      362 MOVE                             R11 R3
      363 LOADNIL                          R12
      364 LOADNIL                          R13
      365 FORGPREP                         R11
      366 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
      368 MOVE                             R17 R2
      369 MOVE                             R18 R14
      370 GETIMPORT                        R16 K25 [table.insert]
      372 CALL                             R16 2 0
      373 FORGLOOP                         R11 2 ; [-8]
      375 JUMP                             ; [+115]
      376 JUMPIFNOTEQKN                    R5 K22 [1] ; [+90]
      378 GETIMPORT                        R7 K32 [next]
      380 MOVE                             R8 R3
      381 CALL                             R7 1 2
      382 GETTABLEKS                       R9 R8 K12 ["CreateCustomInstanceFromSelection"]
      384 MOVE                             R10 R7
      385 CALL                             R9 1 1
      386 JUMPIFEQKNIL                     R7 ; [+104]
      388 JUMPIFNOT                        R9 ; [+15]
      389 FASTCALL1                        TYPEOF R9 ; [+3]
      390 MOVE                             R11 R9
      391 GETIMPORT                        R10 K17 [typeof]
      393 CALL                             R10 1 1
      394 JUMPIFNOTEQKS                    R10 K8 ["string"] ; [+9]
      396 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      398 MOVE                             R11 R2
      399 MOVE                             R12 R7
      400 GETIMPORT                        R10 K25 [table.insert]
      402 CALL                             R10 2 0
      403 JUMP                             ; [+87]
      404 JUMPIFNOT                        R9 ; [+86]
      405 LOADK                            R12 K46 ["Instance"]
      406 NAMECALL                         R10 R9 K1 ["IsA"]
      408 CALL                             R10 2 1
      409 JUMPIFNOT                        R10 ; [+81]
      410 LOADK                            R12 K49 ["Folder"]
      411 NAMECALL                         R10 R7 K1 ["IsA"]
      413 CALL                             R10 2 1
      414 JUMPIFNOT                        R10 ; [+12]
      415 NAMECALL                         R11 R7 K53 ["GetChildren"]
      417 CALL                             R11 1 1
      418 GETTABLEN                        R10 R11 1
      419 GETUPVAL                         R11 6
      420 GETTABLEKS                       R11 R11 K36 ["addNewItem"]
      422 MOVE                             R12 R9
      423 MOVE                             R13 R8
      424 OR                               R14 R10 R7
      425 CALL                             R11 3 0
      426 JUMP                             ; [+7]
      427 GETUPVAL                         R10 6
      428 GETTABLEKS                       R10 R10 K36 ["addNewItem"]
      430 MOVE                             R11 R9
      431 MOVE                             R12 R8
      432 MOVE                             R13 R7
      433 CALL                             R10 3 0
      434 GETUPVAL                         R10 7
      435 GETTABLEKS                       R10 R10 K37 ["addEquippedItem"]
      437 DUPTABLE                         R11 K40 [{"palette", "item"}]
      438 SETTABLEKS                       R8 R11 K38 ["palette"]
      440 DUPTABLE                         R12 K43 [{"source", "instance"}]
      441 GETUPVAL                         R13 0
      442 GETTABLEKS                       R13 R13 K44 ["SOURCE_INSTANCE"]
      444 SETTABLEKS                       R13 R12 K41 ["source"]
      446 SETTABLEKS                       R9 R12 K42 ["instance"]
      448 SETTABLEKS                       R12 R11 K39 ["item"]
      450 CALL                             R10 1 0
      451 LOADK                            R12 K55 ["Accessory"]
      452 NAMECALL                         R10 R9 K1 ["IsA"]
      454 CALL                             R10 2 1
      455 JUMPIFNOT                        R10 ; [+9]
      456 LOADK                            R10 K57 ["OnlyOneShoe"]
      457 SETTABLE                         R10 R4 R7
      458 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      460 MOVE                             R11 R2
      461 MOVE                             R12 R7
      462 GETIMPORT                        R10 K25 [table.insert]
      464 CALL                             R10 2 0
      465 MOVE                             R1 R8
      466 JUMP                             ; [+24]
      467 LOADN                            R7 2
      468 JUMPIFNOTLT                      R7 R5 ; [+22]
      470 GETIMPORT                        R7 K32 [next]
      472 MOVE                             R8 R3
      473 CALL                             R7 1 2
      474 JUMPIFEQKNIL                     R7 ; [+3]
      476 LOADK                            R9 K58 ["NeedTwoShoes"]
      477 SETTABLE                         R9 R4 R7
      478 MOVE                             R9 R3
      479 LOADNIL                          R10
      480 LOADNIL                          R11
      481 FORGPREP                         R9
      482 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
      484 MOVE                             R15 R2
      485 MOVE                             R16 R12
      486 GETIMPORT                        R14 K25 [table.insert]
      488 CALL                             R14 2 0
      489 FORGLOOP                         R9 2 ; [-8]
      491 JUMPIFNOT                        R6 ; [+7]
      492 GETUPVAL                         R7 5
      493 MOVE                             R9 R6
      494 GETIMPORT                        R10 K62 [Enum.FinishRecordingOperation.Commit]
      496 NAMECALL                         R7 R7 K63 ["FinishRecording"]
      498 CALL                             R7 3 0
      499 DUPTABLE                         R7 K67 [{"activePalette", "invalidInstances", "extraErrors"}]
      500 SETTABLEKS                       R1 R7 K64 ["activePalette"]
      502 SETTABLEKS                       R2 R7 K65 ["invalidInstances"]
      504 SETTABLEKS                       R4 R7 K66 ["extraErrors"]
      506 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["useContext"]
       15 GETUPVAL                         R3 3
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R5 0 4
       31 GETTABLEKS                       R6 R0 K3 ["addAmbiguousAsset"]
       33 GETTABLEKS                       R7 R0 K4 ["addLoneMeshPart"]
       35 GETTABLEKS                       R8 R1 K5 ["addEquippedItem"]
       37 GETTABLEKS                       R9 R2 K6 ["addNewItem"]
       39 SETLIST                          R5 R6 4 [1]
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Resources"]
       19 GETTABLEKS                       R3 R3 K12 ["CatalogItems"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K13 ["Util"]
       28 GETTABLEKS                       R4 R4 K14 ["Constants"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K15 ["Components"]
       37 GETTABLEKS                       R5 R5 K16 ["DisambiguationMenuContext"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R0 K10 ["Src"]
       44 GETTABLEKS                       R6 R6 K13 ["Util"]
       46 GETTABLEKS                       R6 R6 K17 ["EquipmentStateContext"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R0 K18 ["Packages"]
       53 GETTABLEKS                       R7 R7 K19 ["React"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R0 K10 ["Src"]
       60 GETTABLEKS                       R8 R8 K20 ["Types"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R0 K10 ["Src"]
       67 GETTABLEKS                       R9 R9 K13 ["Util"]
       69 GETTABLEKS                       R9 R9 K21 ["UserCatalogContext"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R0 K10 ["Src"]
       76 GETTABLEKS                       R10 R10 K13 ["Util"]
       78 GETTABLEKS                       R10 R10 K22 ["filterDescendants"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R0 K10 ["Src"]
       85 GETTABLEKS                       R11 R11 K13 ["Util"]
       87 GETTABLEKS                       R11 R11 K23 ["isAvatar"]
       89 CALL                             R10 1 1
       90 DUPCLOSURE                       R11 K24 [PROTO_1]
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R1
      100 RETURN                           R11 1
