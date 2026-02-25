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
       17 JUMPIFNOT                        R12 ; [+35]
       18 GETIMPORT                        R12 K4 [table.find]
       20 GETUPVAL                         R14 0
       21 GETTABLEKS                       R13 R14 K5 ["LIMBS"]
       23 GETTABLEKS                       R14 R11 K6 ["Name"]
       25 CALL                             R12 2 1
       26 JUMPIFNOTEQKNIL                  R12 ; [+26]
       28 GETTABLEKS                       R12 R11 K7 ["Parent"]
       30 JUMPIFEQKNIL                     R12 ; [+207]
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R13 R11 K7 ["Parent"]
       35 CALL                             R12 1 1
       36 JUMPIFNOT                        R12 ; [+201]
       37 GETUPVAL                         R12 2
       38 CALL                             R12 0 1
       39 JUMPIFNOT                        R12 ; [+7]
       40 GETIMPORT                        R12 K9 [string.find]
       42 GETTABLEKS                       R13 R11 K6 ["Name"]
       44 LOADK                            R14 K10 ["_Att"]
       45 CALL                             R12 2 1
       46 JUMPIF                           R12 ; [+191]
       47 GETUPVAL                         R13 3
       48 GETTABLEKS                       R12 R13 K11 ["addLoneMeshPart"]
       50 MOVE                             R13 R11
       51 CALL                             R12 1 0
       52 JUMP                             ; [+185]
       53 NEWTABLE                         R12 0 0
       55 LOADN                            R13 0
       56 GETUPVAL                         R14 4
       57 LOADNIL                          R15
       58 LOADNIL                          R16
       59 FORGPREP                         R14
       60 MOVE                             R19 R18
       61 LOADNIL                          R20
       62 LOADNIL                          R21
       63 FORGPREP                         R19
       64 GETTABLEKS                       R24 R23 K12 ["CreateCustomInstanceFromSelection"]
       66 MOVE                             R25 R11
       67 CALL                             R24 1 1
       68 JUMPIFEQKNIL                     R24 ; [+70]
       70 JUMPIFNOTEQKNIL                  R24 ; [+2]
       72 LOADB                            R26 0 +1
       73 LOADB                            R26 1
       74 GETUPVAL                         R28 0
       75 GETTABLEKS                       R27 R28 K13 ["LUAU_ANALYZE_ERROR"]
       77 FASTCALL2                        ASSERT R26 R27 ; [+3]
       79 GETIMPORT                        R25 K15 [assert]
       81 CALL                             R25 2 0
       82 FASTCALL1                        TYPEOF R24 ; [+3]
       83 MOVE                             R26 R24
       84 GETIMPORT                        R25 K17 [typeof]
       86 CALL                             R25 1 1
       87 JUMPIFNOTEQKS                    R25 K8 ["string"] ; [+3]
       89 SETTABLE                         R24 R4 R11
       90 JUMP                             ; [+48]
       91 JUMPIFNOTEQ                      R24 R11 ; [+2]
       93 LOADB                            R26 0 +1
       94 LOADB                            R26 1
       95 FASTCALL2K                       ASSERT R26 K18 ; [+4]
       97 LOADK                            R27 K18 ["CreateCustomInstanceFromSelection should always give a new instance"]
       98 GETIMPORT                        R25 K15 [assert]
      100 CALL                             R25 2 0
      101 GETTABLEKS                       R27 R24 K7 ["Parent"]
      103 JUMPIFEQKNIL                     R27 ; [+2]
      105 LOADB                            R26 0 +1
      106 LOADB                            R26 1
      107 FASTCALL2K                       ASSERT R26 K19 ; [+4]
      109 LOADK                            R27 K19 ["CreateCustomInstanceFromSelection should give an isolated instance"]
      110 GETIMPORT                        R25 K15 [assert]
      112 CALL                             R25 2 0
      113 GETUPVAL                         R25 5
      114 MOVE                             R26 R24
      115 NEWTABLE                         R27 0 1
      117 LOADK                            R28 K20 ["Handle"]
      118 SETLIST                          R27 R28 1 [1]
      120 CALL                             R25 2 0
      121 LOADB                            R25 0
      122 MOVE                             R26 R12
      123 LOADNIL                          R27
      124 LOADNIL                          R28
      125 FORGPREP                         R26
      126 GETTABLEKS                       R31 R29 K21 ["Key"]
      128 GETTABLEKS                       R32 R23 K21 ["Key"]
      130 JUMPIFNOTEQ                      R31 R32 ; [+3]
      132 LOADB                            R25 1
      133 JUMP                             ; [+2]
      134 FORGLOOP                         R26 1 ; [-9]
      136 JUMPIF                           R25 ; [+2]
      137 ADDK                             R13 R13 K22 [1]
      138 SETTABLE                         R24 R12 R23
      139 FORGLOOP                         R19 2 ; [-76]
      141 FORGLOOP                         R14 2 ; [-82]
      143 JUMPIFNOTEQKN                    R13 K23 [0] ; [+9]
      145 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
      147 MOVE                             R15 R2
      148 MOVE                             R16 R11
      149 GETIMPORT                        R14 K25 [table.insert]
      151 CALL                             R14 2 0
      152 JUMP                             ; [+85]
      153 LOADN                            R14 1
      154 JUMPIFNOTLT                      R14 R13 ; [+22]
      156 NAMECALL                         R14 R11 K26 ["Clone"]
      158 CALL                             R14 1 1
      159 GETUPVAL                         R15 5
      160 MOVE                             R16 R14
      161 NEWTABLE                         R17 0 1
      163 LOADK                            R18 K20 ["Handle"]
      164 SETLIST                          R17 R18 1 [1]
      166 CALL                             R15 2 0
      167 GETUPVAL                         R16 3
      168 GETTABLEKS                       R15 R16 K27 ["addAmbiguousAsset"]
      170 DUPTABLE                         R16 K30 [{"worldModel", "instances"}]
      171 SETTABLEKS                       R14 R16 K28 ["worldModel"]
      173 SETTABLEKS                       R12 R16 K29 ["instances"]
      175 CALL                             R15 1 0
      176 JUMP                             ; [+61]
      177 GETIMPORT                        R14 K32 [next]
      179 MOVE                             R15 R12
      180 CALL                             R14 1 2
      181 LOADB                            R17 0
      182 JUMPIFEQKNIL                     R14 ; [+5]
      184 JUMPIFNOTEQKNIL                  R15 ; [+2]
      186 LOADB                            R17 0 +1
      187 LOADB                            R17 1
      188 GETUPVAL                         R19 0
      189 GETTABLEKS                       R18 R19 K13 ["LUAU_ANALYZE_ERROR"]
      191 FASTCALL2                        ASSERT R17 R18 ; [+3]
      193 GETIMPORT                        R16 K15 [assert]
      195 CALL                             R16 2 0
      196 GETTABLEKS                       R16 R14 K21 ["Key"]
      198 JUMPIFNOTEQKS                    R16 K33 ["Shoes"] ; [+4]
      200 SETTABLE                         R14 R3 R11
      201 ADDK                             R5 R5 K22 [1]
      202 JUMP                             ; [+35]
      203 MOVE                             R16 R6
      204 JUMPIF                           R16 ; [+7]
      205 GETUPVAL                         R16 6
      206 GETUPVAL                         R19 0
      207 GETTABLEKS                       R18 R19 K34 ["WAYPOINT_NAME_ADD_ITEMS"]
      209 NAMECALL                         R16 R16 K35 ["TryBeginRecording"]
      211 CALL                             R16 2 1
      212 MOVE                             R6 R16
      213 GETUPVAL                         R17 7
      214 GETTABLEKS                       R16 R17 K36 ["addNewItem"]
      216 MOVE                             R17 R15
      217 MOVE                             R18 R14
      218 MOVE                             R19 R11
      219 CALL                             R16 3 0
      220 GETUPVAL                         R17 8
      221 GETTABLEKS                       R16 R17 K37 ["addEquippedItem"]
      223 DUPTABLE                         R17 K40 [{"palette", "item"}]
      224 SETTABLEKS                       R14 R17 K38 ["palette"]
      226 DUPTABLE                         R18 K43 [{"source", "instance"}]
      227 GETUPVAL                         R20 0
      228 GETTABLEKS                       R19 R20 K44 ["SOURCE_INSTANCE"]
      230 SETTABLEKS                       R19 R18 K41 ["source"]
      232 SETTABLEKS                       R15 R18 K42 ["instance"]
      234 SETTABLEKS                       R18 R17 K39 ["item"]
      236 CALL                             R16 1 0
      237 MOVE                             R1 R14
      238 FORGLOOP                         R7 2 ; [-226]
      240 JUMPIFNOTEQKN                    R5 K45 [2] ; [+138]
      242 GETIMPORT                        R7 K48 [Instance.new]
      244 LOADK                            R8 K49 ["Folder"]
      245 CALL                             R7 1 1
      246 LOADNIL                          R8
      247 LOADNIL                          R9
      248 MOVE                             R10 R3
      249 LOADNIL                          R11
      250 LOADNIL                          R12
      251 FORGPREP                         R10
      252 JUMPIFNOTEQKNIL                  R9 ; [+3]
      254 MOVE                             R9 R14
      255 JUMP                             ; [+6]
      256 JUMPIFEQ                         R14 R9 ; [+5]
      258 GETIMPORT                        R15 K51 [warn]
      260 LOADK                            R16 K52 ["Shoes palette mismatch found!"]
      261 CALL                             R15 1 0
      262 LOADNIL                          R15
      263 LOADK                            R18 K49 ["Folder"]
      264 NAMECALL                         R16 R13 K1 ["IsA"]
      266 CALL                             R16 2 1
      267 JUMPIFNOT                        R16 ; [+12]
      268 NAMECALL                         R17 R13 K53 ["GetChildren"]
      270 CALL                             R17 1 1
      271 LENGTH                           R16 R17
      272 LOADN                            R17 1
      273 JUMPIFLT                         R17 R16 ; [+31]
      275 NAMECALL                         R16 R13 K53 ["GetChildren"]
      277 CALL                             R16 1 1
      278 GETTABLEN                        R15 R16 1
      279 JUMP                             ; [+1]
      280 MOVE                             R15 R13
      281 NAMECALL                         R16 R15 K26 ["Clone"]
      283 CALL                             R16 1 1
      284 LOADK                            R19 K20 ["Handle"]
      285 NAMECALL                         R17 R16 K54 ["FindFirstChild"]
      287 CALL                             R17 2 1
      288 LOADK                            R20 K55 ["Accessory"]
      289 NAMECALL                         R18 R16 K1 ["IsA"]
      291 CALL                             R18 2 1
      292 JUMPIFNOT                        R18 ; [+10]
      293 JUMPIFEQKNIL                     R17 ; [+9]
      295 SETTABLEKS                       R7 R16 K7 ["Parent"]
      297 LOADK                            R20 K56 ["LeftFootAttachment"]
      298 NAMECALL                         R18 R17 K54 ["FindFirstChild"]
      300 CALL                             R18 2 1
      301 JUMPIFNOT                        R18 ; [+1]
      302 MOVE                             R8 R15
      303 FORGLOOP                         R10 2 ; [-52]
      305 GETTABLEKS                       R10 R9 K12 ["CreateCustomInstanceFromSelection"]
      307 MOVE                             R11 R7
      308 CALL                             R10 1 1
      309 JUMPIFEQKNIL                     R10 ; [+41]
      311 FASTCALL1                        TYPEOF R10 ; [+3]
      312 MOVE                             R12 R10
      313 GETIMPORT                        R11 K17 [typeof]
      315 CALL                             R11 1 1
      316 JUMPIFEQKS                       R11 K8 ["string"] ; [+34]
      318 LOADK                            R13 K46 ["Instance"]
      319 NAMECALL                         R11 R10 K1 ["IsA"]
      321 CALL                             R11 2 1
      322 JUMPIFNOT                        R11 ; [+28]
      323 JUMPIFEQKNIL                     R8 ; [+27]
      325 GETUPVAL                         R12 7
      326 GETTABLEKS                       R11 R12 K36 ["addNewItem"]
      328 MOVE                             R12 R10
      329 MOVE                             R13 R9
      330 MOVE                             R14 R8
      331 CALL                             R11 3 0
      332 GETUPVAL                         R12 8
      333 GETTABLEKS                       R11 R12 K37 ["addEquippedItem"]
      335 DUPTABLE                         R12 K40 [{"palette", "item"}]
      336 SETTABLEKS                       R9 R12 K38 ["palette"]
      338 DUPTABLE                         R13 K43 [{"source", "instance"}]
      339 GETUPVAL                         R15 0
      340 GETTABLEKS                       R14 R15 K44 ["SOURCE_INSTANCE"]
      342 SETTABLEKS                       R14 R13 K41 ["source"]
      344 SETTABLEKS                       R10 R13 K42 ["instance"]
      346 SETTABLEKS                       R13 R12 K39 ["item"]
      348 CALL                             R11 1 0
      349 MOVE                             R1 R9
      350 JUMP                             ; [+143]
      351 FASTCALL1                        TYPEOF R10 ; [+3]
      352 MOVE                             R12 R10
      353 GETIMPORT                        R11 K17 [typeof]
      355 CALL                             R11 1 1
      356 JUMPIFNOTEQKS                    R11 K8 ["string"] ; [+8]
      358 GETIMPORT                        R11 K32 [next]
      360 MOVE                             R12 R3
      361 CALL                             R11 1 2
      362 JUMPIFEQKNIL                     R11 ; [+2]
      364 SETTABLE                         R10 R4 R11
      365 MOVE                             R11 R3
      366 LOADNIL                          R12
      367 LOADNIL                          R13
      368 FORGPREP                         R11
      369 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
      371 MOVE                             R17 R2
      372 MOVE                             R18 R14
      373 GETIMPORT                        R16 K25 [table.insert]
      375 CALL                             R16 2 0
      376 FORGLOOP                         R11 2 ; [-8]
      378 JUMP                             ; [+115]
      379 JUMPIFNOTEQKN                    R5 K22 [1] ; [+90]
      381 GETIMPORT                        R7 K32 [next]
      383 MOVE                             R8 R3
      384 CALL                             R7 1 2
      385 GETTABLEKS                       R9 R8 K12 ["CreateCustomInstanceFromSelection"]
      387 MOVE                             R10 R7
      388 CALL                             R9 1 1
      389 JUMPIFEQKNIL                     R7 ; [+104]
      391 JUMPIFNOT                        R9 ; [+15]
      392 FASTCALL1                        TYPEOF R9 ; [+3]
      393 MOVE                             R11 R9
      394 GETIMPORT                        R10 K17 [typeof]
      396 CALL                             R10 1 1
      397 JUMPIFNOTEQKS                    R10 K8 ["string"] ; [+9]
      399 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      401 MOVE                             R11 R2
      402 MOVE                             R12 R7
      403 GETIMPORT                        R10 K25 [table.insert]
      405 CALL                             R10 2 0
      406 JUMP                             ; [+87]
      407 JUMPIFNOT                        R9 ; [+86]
      408 LOADK                            R12 K46 ["Instance"]
      409 NAMECALL                         R10 R9 K1 ["IsA"]
      411 CALL                             R10 2 1
      412 JUMPIFNOT                        R10 ; [+81]
      413 LOADK                            R12 K49 ["Folder"]
      414 NAMECALL                         R10 R7 K1 ["IsA"]
      416 CALL                             R10 2 1
      417 JUMPIFNOT                        R10 ; [+12]
      418 NAMECALL                         R11 R7 K53 ["GetChildren"]
      420 CALL                             R11 1 1
      421 GETTABLEN                        R10 R11 1
      422 GETUPVAL                         R12 7
      423 GETTABLEKS                       R11 R12 K36 ["addNewItem"]
      425 MOVE                             R12 R9
      426 MOVE                             R13 R8
      427 OR                               R14 R10 R7
      428 CALL                             R11 3 0
      429 JUMP                             ; [+7]
      430 GETUPVAL                         R11 7
      431 GETTABLEKS                       R10 R11 K36 ["addNewItem"]
      433 MOVE                             R11 R9
      434 MOVE                             R12 R8
      435 MOVE                             R13 R7
      436 CALL                             R10 3 0
      437 GETUPVAL                         R11 8
      438 GETTABLEKS                       R10 R11 K37 ["addEquippedItem"]
      440 DUPTABLE                         R11 K40 [{"palette", "item"}]
      441 SETTABLEKS                       R8 R11 K38 ["palette"]
      443 DUPTABLE                         R12 K43 [{"source", "instance"}]
      444 GETUPVAL                         R14 0
      445 GETTABLEKS                       R13 R14 K44 ["SOURCE_INSTANCE"]
      447 SETTABLEKS                       R13 R12 K41 ["source"]
      449 SETTABLEKS                       R9 R12 K42 ["instance"]
      451 SETTABLEKS                       R12 R11 K39 ["item"]
      453 CALL                             R10 1 0
      454 LOADK                            R12 K55 ["Accessory"]
      455 NAMECALL                         R10 R9 K1 ["IsA"]
      457 CALL                             R10 2 1
      458 JUMPIFNOT                        R10 ; [+9]
      459 LOADK                            R10 K57 ["OnlyOneShoe"]
      460 SETTABLE                         R10 R4 R7
      461 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      463 MOVE                             R11 R2
      464 MOVE                             R12 R7
      465 GETIMPORT                        R10 K25 [table.insert]
      467 CALL                             R10 2 0
      468 MOVE                             R1 R8
      469 JUMP                             ; [+24]
      470 LOADN                            R7 2
      471 JUMPIFNOTLT                      R7 R5 ; [+22]
      473 GETIMPORT                        R7 K32 [next]
      475 MOVE                             R8 R3
      476 CALL                             R7 1 2
      477 JUMPIFEQKNIL                     R7 ; [+3]
      479 LOADK                            R9 K58 ["NeedTwoShoes"]
      480 SETTABLE                         R9 R4 R7
      481 MOVE                             R9 R3
      482 LOADNIL                          R10
      483 LOADNIL                          R11
      484 FORGPREP                         R9
      485 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
      487 MOVE                             R15 R2
      488 MOVE                             R16 R12
      489 GETIMPORT                        R14 K25 [table.insert]
      491 CALL                             R14 2 0
      492 FORGLOOP                         R9 2 ; [-8]
      494 JUMPIFNOT                        R6 ; [+7]
      495 GETUPVAL                         R7 6
      496 MOVE                             R9 R6
      497 GETIMPORT                        R10 K62 [Enum.FinishRecordingOperation.Commit]
      499 NAMECALL                         R7 R7 K63 ["FinishRecording"]
      501 CALL                             R7 3 0
      502 DUPTABLE                         R7 K67 [{"activePalette", "invalidInstances", "extraErrors"}]
      503 SETTABLEKS                       R1 R7 K64 ["activePalette"]
      505 SETTABLEKS                       R2 R7 K65 ["invalidInstances"]
      507 SETTABLEKS                       R4 R7 K66 ["extraErrors"]
      509 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 CALL                             R1 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["useContext"]
       15 GETUPVAL                         R3 3
       16 CALL                             R2 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R5 0 4
       32 GETTABLEKS                       R6 R0 K3 ["addAmbiguousAsset"]
       34 GETTABLEKS                       R7 R0 K4 ["addLoneMeshPart"]
       36 GETTABLEKS                       R8 R1 K5 ["addEquippedItem"]
       38 GETTABLEKS                       R9 R2 K6 ["addNewItem"]
       40 SETLIST                          R5 R6 4 [1]
       42 CALL                             R3 2 -1
       43 RETURN                           R3 -1

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
       15 GETTABLEKS                       R5 R0 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Resources"]
       19 GETTABLEKS                       R3 R4 K12 ["CatalogItems"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K13 ["Util"]
       28 GETTABLEKS                       R4 R5 K14 ["Constants"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Src"]
       35 GETTABLEKS                       R6 R7 K15 ["Components"]
       37 GETTABLEKS                       R5 R6 K16 ["DisambiguationMenuContext"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R8 R0 K10 ["Src"]
       44 GETTABLEKS                       R7 R8 K13 ["Util"]
       46 GETTABLEKS                       R6 R7 K17 ["EquipmentStateContext"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R8 R0 K18 ["Packages"]
       53 GETTABLEKS                       R7 R8 K19 ["React"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R9 R0 K10 ["Src"]
       60 GETTABLEKS                       R8 R9 K20 ["Types"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Src"]
       67 GETTABLEKS                       R10 R11 K13 ["Util"]
       69 GETTABLEKS                       R9 R10 K21 ["UserCatalogContext"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Src"]
       76 GETTABLEKS                       R11 R12 K13 ["Util"]
       78 GETTABLEKS                       R10 R11 K22 ["filterDescendants"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Src"]
       85 GETTABLEKS                       R12 R13 K23 ["Flags"]
       87 GETTABLEKS                       R11 R12 K24 ["getFFlagFixLayeredClothingAssignment"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R14 R0 K10 ["Src"]
       94 GETTABLEKS                       R13 R14 K13 ["Util"]
       96 GETTABLEKS                       R12 R13 K25 ["isAvatar"]
       98 CALL                             R11 1 1
       99 DUPCLOSURE                       R12 K26 [PROTO_1]
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R1
      110 RETURN                           R12 1
