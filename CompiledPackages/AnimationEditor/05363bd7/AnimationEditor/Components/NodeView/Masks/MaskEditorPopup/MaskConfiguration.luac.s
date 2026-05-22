PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["renameMaskAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["selectedMaskId"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K5 [{"maskId", "input"}]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K6 ["selectedMaskId"]
       12 SETTABLEKS                       R3 R2 K3 ["maskId"]
       14 SETTABLEKS                       R0 R2 K4 ["input"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pickRigAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["selectedMaskId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Dropdown item should only be string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["setRigTypeAsync"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K7 ["selectedMaskId"]
       21 MOVE                             R3 R0
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["masks"]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       17 LOADK                            R7 K1 ["Luau"]
       18 GETIMPORT                        R5 K3 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R5 2
       22 JUMPIFEQ                         R4 R5 ; [+8]
       24 GETTABLEKS                       R5 R4 K4 ["name"]
       26 GETUPVAL                         R6 0
       27 JUMPIFNOTEQ                      R5 R6 ; [+3]
       29 LOADB                            R5 1
       30 RETURN                           R5 1
       31 FORGLOOP                         R0 2 ; [-21]
       33 LOADB                            R0 0
       34 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rigName"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 JUMPIFEQKS                       R0 K1 [""] ; [+2]
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K2 ["Common"]
        9 LOADK                            R4 K3 ["AnimationEditor"]
       10 LOADK                            R5 K4 ["MaskConfiguration"]
       11 LOADK                            R6 K5 ["NoRigSelected"]
       12 NAMECALL                         R1 R1 K6 ["getExternalText"]
       14 CALL                             R1 5 -1
       15 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R4 R2 K5 ["masks"]
       17 GETTABLEKS                       R5 R0 K6 ["selectedMaskId"]
       19 GETTABLE                         R3 R4 R5
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K7 ["useState"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 2
       25 JUMPIFNOT                        R4 ; [+9]
       26 GETTABLEKS                       R7 R4 K8 ["maskId"]
       28 GETTABLEKS                       R8 R0 K6 ["selectedMaskId"]
       30 JUMPIFNOTEQ                      R7 R8 ; [+4]
       32 GETTABLEKS                       R6 R4 K9 ["input"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       39 NEWCLOSURE                       R8 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R9 0 2
       45 GETTABLEKS                       R10 R0 K6 ["selectedMaskId"]
       47 GETTABLEKS                       R11 R2 K11 ["renameMaskAsync"]
       49 SETLIST                          R9 R10 2 [1]
       51 CALL                             R7 2 1
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       55 NEWCLOSURE                       R9 P1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R0
       58 NEWTABLE                         R10 0 2
       60 GETTABLEKS                       R11 R0 K6 ["selectedMaskId"]
       62 GETTABLEKS                       R12 R2 K12 ["pickRigAsync"]
       64 SETLIST                          R10 R11 2 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       70 NEWCLOSURE                       R10 P2
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R0
       73 NEWTABLE                         R11 0 2
       75 GETTABLEKS                       R12 R0 K6 ["selectedMaskId"]
       77 GETTABLEKS                       R13 R2 K13 ["setRigTypeAsync"]
       79 SETLIST                          R11 R12 2 [1]
       81 CALL                             R9 2 1
       82 GETUPVAL                         R10 1
       83 GETTABLEKS                       R10 R10 K14 ["useMemo"]
       85 NEWCLOSURE                       R11 P3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 NEWTABLE                         R12 0 3
       91 MOVE                             R13 R6
       92 GETTABLEKS                       R14 R2 K5 ["masks"]
       94 MOVE                             R15 R3
       95 SETLIST                          R12 R13 3 [1]
       97 CALL                             R10 2 1
       98 JUMPIFNOTEQKNIL                  R3 ; [+3]
      100 LOADNIL                          R11
      101 RETURN                           R11 1
      102 GETUPVAL                         R11 3
      103 GETTABLEKS                       R11 R11 K15 ["createNextOrder"]
      105 CALL                             R11 0 1
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K16 ["createElement"]
      109 GETUPVAL                         R13 4
      110 GETTABLEKS                       R13 R13 K17 ["View"]
      112 DUPTABLE                         R14 K19 [{"tag"}]
      113 LOADK                            R15 K20 ["col size-full"]
      114 SETTABLEKS                       R15 R14 K18 ["tag"]
      116 DUPTABLE                         R15 K23 [{"TopFields", "Joints"}]
      117 GETUPVAL                         R16 1
      118 GETTABLEKS                       R16 R16 K16 ["createElement"]
      120 GETUPVAL                         R17 4
      121 GETTABLEKS                       R17 R17 K17 ["View"]
      123 DUPTABLE                         R18 K25 [{"tag", "LayoutOrder"}]
      124 LOADK                            R19 K26 ["size-full-0 auto-y col gap-medium"]
      125 SETTABLEKS                       R19 R18 K18 ["tag"]
      127 MOVE                             R19 R11
      128 CALL                             R19 0 1
      129 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      131 DUPTABLE                         R19 K30 [{"Name", "Rig", "CustomRig"}]
      132 GETUPVAL                         R20 1
      133 GETTABLEKS                       R20 R20 K16 ["createElement"]
      135 GETUPVAL                         R21 4
      136 GETTABLEKS                       R21 R21 K17 ["View"]
      138 DUPTABLE                         R22 K25 [{"tag", "LayoutOrder"}]
      139 LOADK                            R23 K31 ["size-full-500 row gap-small align-y-center"]
      140 SETTABLEKS                       R23 R22 K18 ["tag"]
      142 MOVE                             R23 R11
      143 CALL                             R23 0 1
      144 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      146 DUPTABLE                         R23 K34 [{"Label", "Value"}]
      147 GETUPVAL                         R24 1
      148 GETTABLEKS                       R24 R24 K16 ["createElement"]
      150 GETUPVAL                         R25 4
      151 GETTABLEKS                       R25 R25 K35 ["Text"]
      153 DUPTABLE                         R26 K37 [{"LayoutOrder", "Text", "sizeConstraint", "tag"}]
      154 MOVE                             R27 R11
      155 CALL                             R27 0 1
      156 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      158 LOADK                            R29 K38 ["Common"]
      159 LOADK                            R30 K39 ["AnimationEditor"]
      160 LOADK                            R31 K40 ["MaskConfiguration"]
      161 LOADK                            R32 K27 ["Name"]
      162 NAMECALL                         R27 R1 K41 ["getExternalText"]
      164 CALL                             R27 5 1
      165 SETTABLEKS                       R27 R26 K35 ["Text"]
      167 DUPTABLE                         R27 K43 [{"MinSize"}]
      168 GETIMPORT                        R28 K46 [Vector2.new]
      170 LOADN                            R29 50
      171 LOADN                            R30 0
      172 CALL                             R28 2 1
      173 SETTABLEKS                       R28 R27 K42 ["MinSize"]
      175 SETTABLEKS                       R27 R26 K36 ["sizeConstraint"]
      177 LOADK                            R27 K47 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      178 SETTABLEKS                       R27 R26 K18 ["tag"]
      180 CALL                             R24 2 1
      181 SETTABLEKS                       R24 R23 K32 ["Label"]
      183 GETUPVAL                         R24 1
      184 GETTABLEKS                       R24 R24 K16 ["createElement"]
      186 GETUPVAL                         R25 4
      187 GETTABLEKS                       R25 R25 K17 ["View"]
      189 DUPTABLE                         R26 K48 [{"LayoutOrder", "tag"}]
      190 MOVE                             R27 R11
      191 CALL                             R27 0 1
      192 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      194 LOADK                            R27 K49 ["size-0-full grow"]
      195 SETTABLEKS                       R27 R26 K18 ["tag"]
      197 GETUPVAL                         R27 1
      198 GETTABLEKS                       R27 R27 K16 ["createElement"]
      200 GETUPVAL                         R28 4
      201 GETTABLEKS                       R28 R28 K50 ["TextInput"]
      203 DUPTABLE                         R29 K58 [{"label", "text", "placeholder", "onChanged", "hasError", "width", "size"}]
      204 LOADK                            R30 K59 [""]
      205 SETTABLEKS                       R30 R29 K51 ["label"]
      207 MOVE                             R30 R6
      208 JUMPIF                           R30 ; [+2]
      209 GETTABLEKS                       R30 R3 K60 ["name"]
      211 SETTABLEKS                       R30 R29 K52 ["text"]
      213 LOADK                            R32 K38 ["Common"]
      214 LOADK                            R33 K39 ["AnimationEditor"]
      215 LOADK                            R34 K40 ["MaskConfiguration"]
      216 LOADK                            R35 K27 ["Name"]
      217 NAMECALL                         R30 R1 K41 ["getExternalText"]
      219 CALL                             R30 5 1
      220 SETTABLEKS                       R30 R29 K53 ["placeholder"]
      222 SETTABLEKS                       R7 R29 K54 ["onChanged"]
      224 SETTABLEKS                       R10 R29 K55 ["hasError"]
      226 GETIMPORT                        R30 K62 [UDim.new]
      228 LOADN                            R31 1
      229 LOADN                            R32 0
      230 CALL                             R30 2 1
      231 SETTABLEKS                       R30 R29 K56 ["width"]
      233 GETUPVAL                         R30 4
      234 GETTABLEKS                       R30 R30 K63 ["Enums"]
      236 GETTABLEKS                       R30 R30 K64 ["InputSize"]
      238 GETTABLEKS                       R30 R30 K65 ["XSmall"]
      240 SETTABLEKS                       R30 R29 K57 ["size"]
      242 CALL                             R27 2 -1
      243 CALL                             R24 -1 1
      244 SETTABLEKS                       R24 R23 K33 ["Value"]
      246 CALL                             R20 3 1
      247 SETTABLEKS                       R20 R19 K27 ["Name"]
      249 GETUPVAL                         R20 1
      250 GETTABLEKS                       R20 R20 K16 ["createElement"]
      252 GETUPVAL                         R21 4
      253 GETTABLEKS                       R21 R21 K17 ["View"]
      255 DUPTABLE                         R22 K25 [{"tag", "LayoutOrder"}]
      256 LOADK                            R23 K31 ["size-full-500 row gap-small align-y-center"]
      257 SETTABLEKS                       R23 R22 K18 ["tag"]
      259 MOVE                             R23 R11
      260 CALL                             R23 0 1
      261 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      263 DUPTABLE                         R23 K34 [{"Label", "Value"}]
      264 GETUPVAL                         R24 1
      265 GETTABLEKS                       R24 R24 K16 ["createElement"]
      267 GETUPVAL                         R25 4
      268 GETTABLEKS                       R25 R25 K35 ["Text"]
      270 DUPTABLE                         R26 K37 [{"LayoutOrder", "Text", "sizeConstraint", "tag"}]
      271 MOVE                             R27 R11
      272 CALL                             R27 0 1
      273 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      275 LOADK                            R29 K38 ["Common"]
      276 LOADK                            R30 K39 ["AnimationEditor"]
      277 LOADK                            R31 K40 ["MaskConfiguration"]
      278 LOADK                            R32 K66 ["RigType"]
      279 NAMECALL                         R27 R1 K41 ["getExternalText"]
      281 CALL                             R27 5 1
      282 SETTABLEKS                       R27 R26 K35 ["Text"]
      284 DUPTABLE                         R27 K43 [{"MinSize"}]
      285 GETIMPORT                        R28 K46 [Vector2.new]
      287 LOADN                            R29 50
      288 LOADN                            R30 0
      289 CALL                             R28 2 1
      290 SETTABLEKS                       R28 R27 K42 ["MinSize"]
      292 SETTABLEKS                       R27 R26 K36 ["sizeConstraint"]
      294 LOADK                            R27 K47 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      295 SETTABLEKS                       R27 R26 K18 ["tag"]
      297 CALL                             R24 2 1
      298 SETTABLEKS                       R24 R23 K32 ["Label"]
      300 GETUPVAL                         R24 1
      301 GETTABLEKS                       R24 R24 K16 ["createElement"]
      303 GETUPVAL                         R25 4
      304 GETTABLEKS                       R25 R25 K17 ["View"]
      306 DUPTABLE                         R26 K25 [{"tag", "LayoutOrder"}]
      307 LOADK                            R27 K49 ["size-0-full grow"]
      308 SETTABLEKS                       R27 R26 K18 ["tag"]
      310 MOVE                             R27 R11
      311 CALL                             R27 0 1
      312 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      314 GETUPVAL                         R27 1
      315 GETTABLEKS                       R27 R27 K16 ["createElement"]
      317 GETUPVAL                         R28 4
      318 GETTABLEKS                       R28 R28 K17 ["View"]
      320 DUPTABLE                         R29 K25 [{"tag", "LayoutOrder"}]
      321 LOADK                            R30 K67 ["col gap-xsmall size-full-0"]
      322 SETTABLEKS                       R30 R29 K18 ["tag"]
      324 MOVE                             R30 R11
      325 CALL                             R30 0 1
      326 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      328 DUPTABLE                         R30 K68 [{"RigType"}]
      329 GETUPVAL                         R31 1
      330 GETTABLEKS                       R31 R31 K16 ["createElement"]
      332 GETUPVAL                         R32 4
      333 GETTABLEKS                       R32 R32 K69 ["Dropdown"]
      335 GETTABLEKS                       R32 R32 K70 ["Root"]
      337 DUPTABLE                         R33 K74 [{"label", "onItemChanged", "size", "width", "value", "items"}]
      338 LOADK                            R34 K59 [""]
      339 SETTABLEKS                       R34 R33 K51 ["label"]
      341 SETTABLEKS                       R9 R33 K71 ["onItemChanged"]
      343 GETUPVAL                         R34 4
      344 GETTABLEKS                       R34 R34 K63 ["Enums"]
      346 GETTABLEKS                       R34 R34 K64 ["InputSize"]
      348 GETTABLEKS                       R34 R34 K65 ["XSmall"]
      350 SETTABLEKS                       R34 R33 K57 ["size"]
      352 GETIMPORT                        R34 K62 [UDim.new]
      354 LOADN                            R35 1
      355 LOADN                            R36 0
      356 CALL                             R34 2 1
      357 SETTABLEKS                       R34 R33 K56 ["width"]
      359 GETTABLEKS                       R35 R3 K76 ["rigType"]
      361 ORK                              R34 R35 K75 ["HRD"]
      362 SETTABLEKS                       R34 R33 K72 ["value"]
      364 NEWTABLE                         R34 0 2
      366 DUPTABLE                         R35 K78 [{"id", "text"}]
      367 LOADK                            R36 K75 ["HRD"]
      368 SETTABLEKS                       R36 R35 K77 ["id"]
      370 LOADK                            R38 K38 ["Common"]
      371 LOADK                            R39 K39 ["AnimationEditor"]
      372 LOADK                            R40 K40 ["MaskConfiguration"]
      373 LOADK                            R41 K75 ["HRD"]
      374 NAMECALL                         R36 R1 K41 ["getExternalText"]
      376 CALL                             R36 5 1
      377 SETTABLEKS                       R36 R35 K52 ["text"]
      379 DUPTABLE                         R36 K78 [{"id", "text"}]
      380 LOADK                            R37 K79 ["Custom"]
      381 SETTABLEKS                       R37 R36 K77 ["id"]
      383 LOADK                            R39 K38 ["Common"]
      384 LOADK                            R40 K39 ["AnimationEditor"]
      385 LOADK                            R41 K40 ["MaskConfiguration"]
      386 LOADK                            R42 K79 ["Custom"]
      387 NAMECALL                         R37 R1 K41 ["getExternalText"]
      389 CALL                             R37 5 1
      390 SETTABLEKS                       R37 R36 K52 ["text"]
      392 SETLIST                          R34 R35 2 [1]
      394 SETTABLEKS                       R34 R33 K73 ["items"]
      396 CALL                             R31 2 1
      397 SETTABLEKS                       R31 R30 K66 ["RigType"]
      399 CALL                             R27 3 -1
      400 CALL                             R24 -1 1
      401 SETTABLEKS                       R24 R23 K33 ["Value"]
      403 CALL                             R20 3 1
      404 SETTABLEKS                       R20 R19 K28 ["Rig"]
      406 LOADB                            R20 0
      407 GETTABLEKS                       R21 R3 K76 ["rigType"]
      409 JUMPIFNOTEQKS                    R21 K79 ["Custom"] ; [+173]
      411 GETUPVAL                         R20 1
      412 GETTABLEKS                       R20 R20 K16 ["createElement"]
      414 GETUPVAL                         R21 4
      415 GETTABLEKS                       R21 R21 K17 ["View"]
      417 DUPTABLE                         R22 K25 [{"tag", "LayoutOrder"}]
      418 LOADK                            R23 K31 ["size-full-500 row gap-small align-y-center"]
      419 SETTABLEKS                       R23 R22 K18 ["tag"]
      421 MOVE                             R23 R11
      422 CALL                             R23 0 1
      423 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      425 DUPTABLE                         R23 K34 [{"Label", "Value"}]
      426 GETUPVAL                         R24 1
      427 GETTABLEKS                       R24 R24 K16 ["createElement"]
      429 GETUPVAL                         R25 4
      430 GETTABLEKS                       R25 R25 K35 ["Text"]
      432 DUPTABLE                         R26 K37 [{"LayoutOrder", "Text", "sizeConstraint", "tag"}]
      433 MOVE                             R27 R11
      434 CALL                             R27 0 1
      435 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      437 LOADK                            R29 K38 ["Common"]
      438 LOADK                            R30 K39 ["AnimationEditor"]
      439 LOADK                            R31 K40 ["MaskConfiguration"]
      440 LOADK                            R32 K28 ["Rig"]
      441 NAMECALL                         R27 R1 K41 ["getExternalText"]
      443 CALL                             R27 5 1
      444 SETTABLEKS                       R27 R26 K35 ["Text"]
      446 DUPTABLE                         R27 K43 [{"MinSize"}]
      447 GETIMPORT                        R28 K46 [Vector2.new]
      449 LOADN                            R29 50
      450 LOADN                            R30 0
      451 CALL                             R28 2 1
      452 SETTABLEKS                       R28 R27 K42 ["MinSize"]
      454 SETTABLEKS                       R27 R26 K36 ["sizeConstraint"]
      456 LOADK                            R27 K47 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      457 SETTABLEKS                       R27 R26 K18 ["tag"]
      459 CALL                             R24 2 1
      460 SETTABLEKS                       R24 R23 K32 ["Label"]
      462 GETUPVAL                         R24 1
      463 GETTABLEKS                       R24 R24 K16 ["createElement"]
      465 GETUPVAL                         R25 4
      466 GETTABLEKS                       R25 R25 K17 ["View"]
      468 DUPTABLE                         R26 K25 [{"tag", "LayoutOrder"}]
      469 LOADK                            R27 K80 ["row size-0-full align-y-center"]
      470 SETTABLEKS                       R27 R26 K18 ["tag"]
      472 MOVE                             R27 R11
      473 CALL                             R27 0 1
      474 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      476 DUPTABLE                         R27 K84 [{"CurrentName", "Spacer", "PickButton"}]
      477 GETUPVAL                         R28 1
      478 GETTABLEKS                       R28 R28 K16 ["createElement"]
      480 GETUPVAL                         R29 4
      481 GETTABLEKS                       R29 R29 K35 ["Text"]
      483 DUPTABLE                         R30 K85 [{"LayoutOrder", "Text", "tag"}]
      484 MOVE                             R31 R11
      485 CALL                             R31 0 1
      486 SETTABLEKS                       R31 R30 K24 ["LayoutOrder"]
      488 GETTABLEKS                       R32 R3 K86 ["rigName"]
      490 JUMPIFNOT                        R32 ; [+4]
      491 JUMPIFEQKS                       R32 K59 [""] ; [+3]
      493 MOVE                             R31 R32
      494 JUMP                             ; [+8]
      495 LOADK                            R35 K38 ["Common"]
      496 LOADK                            R36 K39 ["AnimationEditor"]
      497 LOADK                            R37 K40 ["MaskConfiguration"]
      498 LOADK                            R38 K87 ["NoRigSelected"]
      499 NAMECALL                         R33 R1 K41 ["getExternalText"]
      501 CALL                             R33 5 1
      502 MOVE                             R31 R33
      503 SETTABLEKS                       R31 R30 K35 ["Text"]
      505 LOADK                            R31 K47 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      506 SETTABLEKS                       R31 R30 K18 ["tag"]
      508 CALL                             R28 2 1
      509 SETTABLEKS                       R28 R27 K81 ["CurrentName"]
      511 GETUPVAL                         R28 1
      512 GETTABLEKS                       R28 R28 K16 ["createElement"]
      514 GETUPVAL                         R29 4
      515 GETTABLEKS                       R29 R29 K17 ["View"]
      517 DUPTABLE                         R30 K88 [{"tag", "width", "LayoutOrder"}]
      518 LOADK                            R31 K89 ["size-100-full grow"]
      519 SETTABLEKS                       R31 R30 K18 ["tag"]
      521 GETIMPORT                        R31 K62 [UDim.new]
      523 LOADN                            R32 20
      524 LOADN                            R33 20
      525 CALL                             R31 2 1
      526 SETTABLEKS                       R31 R30 K56 ["width"]
      528 MOVE                             R31 R11
      529 CALL                             R31 0 1
      530 SETTABLEKS                       R31 R30 K24 ["LayoutOrder"]
      532 CALL                             R28 2 1
      533 SETTABLEKS                       R28 R27 K82 ["Spacer"]
      535 GETUPVAL                         R28 1
      536 GETTABLEKS                       R28 R28 K16 ["createElement"]
      538 GETUPVAL                         R29 4
      539 GETTABLEKS                       R29 R29 K90 ["Button"]
      541 DUPTABLE                         R30 K92 [{"label", "text", "onActivated", "size", "width", "LayoutOrder"}]
      542 LOADK                            R31 K59 [""]
      543 SETTABLEKS                       R31 R30 K51 ["label"]
      545 LOADK                            R33 K38 ["Common"]
      546 LOADK                            R34 K39 ["AnimationEditor"]
      547 LOADK                            R35 K40 ["MaskConfiguration"]
      548 LOADK                            R36 K93 ["PickRig"]
      549 NAMECALL                         R31 R1 K41 ["getExternalText"]
      551 CALL                             R31 5 1
      552 SETTABLEKS                       R31 R30 K52 ["text"]
      554 SETTABLEKS                       R8 R30 K91 ["onActivated"]
      556 GETUPVAL                         R31 4
      557 GETTABLEKS                       R31 R31 K63 ["Enums"]
      559 GETTABLEKS                       R31 R31 K64 ["InputSize"]
      561 GETTABLEKS                       R31 R31 K65 ["XSmall"]
      563 SETTABLEKS                       R31 R30 K57 ["size"]
      565 GETIMPORT                        R31 K62 [UDim.new]
      567 LOADN                            R32 0
      568 LOADN                            R33 70
      569 CALL                             R31 2 1
      570 SETTABLEKS                       R31 R30 K56 ["width"]
      572 MOVE                             R31 R11
      573 CALL                             R31 0 1
      574 SETTABLEKS                       R31 R30 K24 ["LayoutOrder"]
      576 CALL                             R28 2 1
      577 SETTABLEKS                       R28 R27 K83 ["PickButton"]
      579 CALL                             R24 3 1
      580 SETTABLEKS                       R24 R23 K33 ["Value"]
      582 CALL                             R20 3 1
      583 SETTABLEKS                       R20 R19 K29 ["CustomRig"]
      585 CALL                             R16 3 1
      586 SETTABLEKS                       R16 R15 K21 ["TopFields"]
      588 GETUPVAL                         R16 1
      589 GETTABLEKS                       R16 R16 K16 ["createElement"]
      591 GETUPVAL                         R17 4
      592 GETTABLEKS                       R17 R17 K17 ["View"]
      594 DUPTABLE                         R18 K25 [{"tag", "LayoutOrder"}]
      595 LOADK                            R19 K94 ["size-full grow col padding-top-medium"]
      596 SETTABLEKS                       R19 R18 K18 ["tag"]
      598 MOVE                             R19 R11
      599 CALL                             R19 0 1
      600 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      602 DUPTABLE                         R19 K96 [{"List"}]
      603 GETUPVAL                         R20 1
      604 GETTABLEKS                       R20 R20 K16 ["createElement"]
      606 GETUPVAL                         R21 5
      607 DUPTABLE                         R22 K97 [{"maskId", "LayoutOrder"}]
      608 GETTABLEKS                       R23 R0 K6 ["selectedMaskId"]
      610 SETTABLEKS                       R23 R22 K8 ["maskId"]
      612 MOVE                             R23 R11
      613 CALL                             R23 0 1
      614 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      616 CALL                             R20 2 1
      617 SETTABLEKS                       R20 R19 K95 ["List"]
      619 CALL                             R16 3 1
      620 SETTABLEKS                       R16 R15 K22 ["Joints"]
      622 CALL                             R12 3 -1
      623 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["MaskEditorContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["MaskWeightEditors"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K14 [PROTO_6]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 RETURN                           R7 1
