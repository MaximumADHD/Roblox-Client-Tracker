PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["renameMaskAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["No mask selected"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETIMPORT                        R1 K5 [task.spawn]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 2
       19 DUPTABLE                         R2 K8 [{"maskId", "input"}]
       20 GETUPVAL                         R3 0
       21 SETTABLEKS                       R3 R2 K6 ["maskId"]
       23 SETTABLEKS                       R0 R2 K7 ["input"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["No mask selected"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K3 ["pickRigAsync"]
       14 GETUPVAL                         R1 0
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

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
       15 GETUPVAL                         R3 0
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       22 LOADK                            R3 K6 ["No mask selected"]
       23 GETIMPORT                        R1 K5 [assert]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K7 ["setRigTypeAsync"]
       29 GETUPVAL                         R2 0
       30 MOVE                             R3 R0
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

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
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 4
       23 CALL                             R5 0 1
       24 JUMPIFNOT                        R5 ; [+3]
       25 GETTABLEKS                       R4 R3 K5 ["selectedMaskId"]
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R4 R0 K5 ["selectedMaskId"]
       30 JUMPIFNOT                        R4 ; [+4]
       31 GETTABLEKS                       R6 R2 K6 ["masks"]
       33 GETTABLE                         R5 R6 R4
       34 JUMP                             ; [+1]
       35 LOADNIL                          R5
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K7 ["useState"]
       39 LOADNIL                          R7
       40 CALL                             R6 1 2
       41 JUMPIFNOT                        R6 ; [+7]
       42 GETTABLEKS                       R9 R6 K8 ["maskId"]
       44 JUMPIFNOTEQ                      R9 R4 ; [+4]
       46 GETTABLEKS                       R8 R6 K9 ["input"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R8
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       53 NEWCLOSURE                       R10 P0
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 NEWTABLE                         R11 0 2
       59 MOVE                             R12 R4
       60 GETTABLEKS                       R13 R2 K11 ["renameMaskAsync"]
       62 SETLIST                          R11 R12 2 [1]
       64 CALL                             R9 2 1
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       68 NEWCLOSURE                       R11 P1
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R2
       71 NEWTABLE                         R12 0 2
       73 MOVE                             R13 R4
       74 GETTABLEKS                       R14 R2 K12 ["pickRigAsync"]
       76 SETLIST                          R12 R13 2 [1]
       78 CALL                             R10 2 1
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       82 NEWCLOSURE                       R12 P2
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R2
       85 NEWTABLE                         R13 0 2
       87 MOVE                             R14 R4
       88 GETTABLEKS                       R15 R2 K13 ["setRigTypeAsync"]
       90 SETLIST                          R13 R14 2 [1]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R12 R12 K14 ["useMemo"]
       96 NEWCLOSURE                       R13 P3
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R5
      100 NEWTABLE                         R14 0 3
      102 MOVE                             R15 R8
      103 GETTABLEKS                       R16 R2 K6 ["masks"]
      105 MOVE                             R17 R5
      106 SETLIST                          R14 R15 3 [1]
      108 CALL                             R12 2 1
      109 JUMPIFNOTEQKNIL                  R5 ; [+3]
      111 LOADNIL                          R13
      112 RETURN                           R13 1
      113 JUMPIFNOTEQKNIL                  R4 ; [+2]
      115 LOADB                            R14 0 +1
      116 LOADB                            R14 1
      117 FASTCALL2K                       ASSERT R14 K15 ; [+4]
      119 LOADK                            R15 K15 ["Luau"]
      120 GETIMPORT                        R13 K17 [assert]
      122 CALL                             R13 2 0
      123 GETUPVAL                         R13 5
      124 GETTABLEKS                       R13 R13 K18 ["createNextOrder"]
      126 CALL                             R13 0 1
      127 GETUPVAL                         R14 1
      128 GETTABLEKS                       R14 R14 K19 ["createElement"]
      130 GETUPVAL                         R15 6
      131 GETTABLEKS                       R15 R15 K20 ["View"]
      133 DUPTABLE                         R16 K23 [{["tag"] = "col size-full"}]
      134 DUPTABLE                         R17 K26 [{"TopFields", "Joints"}]
      135 GETUPVAL                         R18 1
      136 GETTABLEKS                       R18 R18 K19 ["createElement"]
      138 GETUPVAL                         R19 6
      139 GETTABLEKS                       R19 R19 K20 ["View"]
      141 DUPTABLE                         R20 K29 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      142 MOVE                             R21 R13
      143 CALL                             R21 0 1
      144 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      146 DUPTABLE                         R21 K33 [{"Name", "Rig", "CustomRig"}]
      147 GETUPVAL                         R22 1
      148 GETTABLEKS                       R22 R22 K19 ["createElement"]
      150 GETUPVAL                         R23 6
      151 GETTABLEKS                       R23 R23 K20 ["View"]
      153 DUPTABLE                         R24 K35 [{["tag"] = "row align-y-center gap-small size-full-500", ["LayoutOrder"]}]
      154 MOVE                             R25 R13
      155 CALL                             R25 0 1
      156 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      158 DUPTABLE                         R25 K38 [{"Label", "Value"}]
      159 GETUPVAL                         R26 1
      160 GETTABLEKS                       R26 R26 K19 ["createElement"]
      162 GETUPVAL                         R27 6
      163 GETTABLEKS                       R27 R27 K39 ["Text"]
      165 DUPTABLE                         R28 K42 [{["LayoutOrder"], ["Text"], ["sizeConstraint"], ["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis"}]
      166 MOVE                             R29 R13
      167 CALL                             R29 0 1
      168 SETTABLEKS                       R29 R28 K28 ["LayoutOrder"]
      170 LOADK                            R31 K43 ["Common"]
      171 LOADK                            R32 K44 ["AnimationEditor"]
      172 LOADK                            R33 K45 ["MaskConfiguration"]
      173 LOADK                            R34 K30 ["Name"]
      174 NAMECALL                         R29 R1 K46 ["getExternalText"]
      176 CALL                             R29 5 1
      177 SETTABLEKS                       R29 R28 K39 ["Text"]
      179 DUPTABLE                         R29 K48 [{"MinSize"}]
      180 GETIMPORT                        R30 K51 [Vector2.new]
      182 LOADN                            R31 50
      183 LOADN                            R32 0
      184 CALL                             R30 2 1
      185 SETTABLEKS                       R30 R29 K47 ["MinSize"]
      187 SETTABLEKS                       R29 R28 K40 ["sizeConstraint"]
      189 CALL                             R26 2 1
      190 SETTABLEKS                       R26 R25 K36 ["Label"]
      192 GETUPVAL                         R26 1
      193 GETTABLEKS                       R26 R26 K19 ["createElement"]
      195 GETUPVAL                         R27 6
      196 GETTABLEKS                       R27 R27 K20 ["View"]
      198 DUPTABLE                         R28 K53 [{["LayoutOrder"], ["tag"] = "grow size-0-full"}]
      199 MOVE                             R29 R13
      200 CALL                             R29 0 1
      201 SETTABLEKS                       R29 R28 K28 ["LayoutOrder"]
      203 GETUPVAL                         R29 1
      204 GETTABLEKS                       R29 R29 K19 ["createElement"]
      206 GETUPVAL                         R30 6
      207 GETTABLEKS                       R30 R30 K54 ["TextInput"]
      209 DUPTABLE                         R31 K63 [{["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["hasError"], ["width"], ["size"]}]
      210 MOVE                             R32 R8
      211 JUMPIF                           R32 ; [+2]
      212 GETTABLEKS                       R32 R5 K64 ["name"]
      214 SETTABLEKS                       R32 R31 K57 ["text"]
      216 LOADK                            R34 K43 ["Common"]
      217 LOADK                            R35 K44 ["AnimationEditor"]
      218 LOADK                            R36 K45 ["MaskConfiguration"]
      219 LOADK                            R37 K30 ["Name"]
      220 NAMECALL                         R32 R1 K46 ["getExternalText"]
      222 CALL                             R32 5 1
      223 SETTABLEKS                       R32 R31 K58 ["placeholder"]
      225 SETTABLEKS                       R9 R31 K59 ["onChanged"]
      227 SETTABLEKS                       R12 R31 K60 ["hasError"]
      229 GETIMPORT                        R32 K66 [UDim.new]
      231 LOADN                            R33 1
      232 LOADN                            R34 0
      233 CALL                             R32 2 1
      234 SETTABLEKS                       R32 R31 K61 ["width"]
      236 GETUPVAL                         R32 6
      237 GETTABLEKS                       R32 R32 K67 ["Enums"]
      239 GETTABLEKS                       R32 R32 K68 ["InputSize"]
      241 GETTABLEKS                       R32 R32 K69 ["XSmall"]
      243 SETTABLEKS                       R32 R31 K62 ["size"]
      245 CALL                             R29 2 -1
      246 CALL                             R26 -1 1
      247 SETTABLEKS                       R26 R25 K37 ["Value"]
      249 CALL                             R22 3 1
      250 SETTABLEKS                       R22 R21 K30 ["Name"]
      252 GETUPVAL                         R22 1
      253 GETTABLEKS                       R22 R22 K19 ["createElement"]
      255 GETUPVAL                         R23 6
      256 GETTABLEKS                       R23 R23 K20 ["View"]
      258 DUPTABLE                         R24 K35 [{["tag"] = "row align-y-center gap-small size-full-500", ["LayoutOrder"]}]
      259 MOVE                             R25 R13
      260 CALL                             R25 0 1
      261 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      263 DUPTABLE                         R25 K38 [{"Label", "Value"}]
      264 GETUPVAL                         R26 1
      265 GETTABLEKS                       R26 R26 K19 ["createElement"]
      267 GETUPVAL                         R27 6
      268 GETTABLEKS                       R27 R27 K39 ["Text"]
      270 DUPTABLE                         R28 K42 [{["LayoutOrder"], ["Text"], ["sizeConstraint"], ["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis"}]
      271 MOVE                             R29 R13
      272 CALL                             R29 0 1
      273 SETTABLEKS                       R29 R28 K28 ["LayoutOrder"]
      275 LOADK                            R31 K43 ["Common"]
      276 LOADK                            R32 K44 ["AnimationEditor"]
      277 LOADK                            R33 K45 ["MaskConfiguration"]
      278 LOADK                            R34 K70 ["RigType"]
      279 NAMECALL                         R29 R1 K46 ["getExternalText"]
      281 CALL                             R29 5 1
      282 SETTABLEKS                       R29 R28 K39 ["Text"]
      284 DUPTABLE                         R29 K48 [{"MinSize"}]
      285 GETIMPORT                        R30 K51 [Vector2.new]
      287 LOADN                            R31 50
      288 LOADN                            R32 0
      289 CALL                             R30 2 1
      290 SETTABLEKS                       R30 R29 K47 ["MinSize"]
      292 SETTABLEKS                       R29 R28 K40 ["sizeConstraint"]
      294 CALL                             R26 2 1
      295 SETTABLEKS                       R26 R25 K36 ["Label"]
      297 GETUPVAL                         R26 1
      298 GETTABLEKS                       R26 R26 K19 ["createElement"]
      300 GETUPVAL                         R27 6
      301 GETTABLEKS                       R27 R27 K20 ["View"]
      303 DUPTABLE                         R28 K71 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      304 MOVE                             R29 R13
      305 CALL                             R29 0 1
      306 SETTABLEKS                       R29 R28 K28 ["LayoutOrder"]
      308 GETUPVAL                         R29 1
      309 GETTABLEKS                       R29 R29 K19 ["createElement"]
      311 GETUPVAL                         R30 6
      312 GETTABLEKS                       R30 R30 K20 ["View"]
      314 DUPTABLE                         R31 K73 [{["tag"] = "col gap-xsmall size-full-0", ["LayoutOrder"]}]
      315 MOVE                             R32 R13
      316 CALL                             R32 0 1
      317 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      319 DUPTABLE                         R32 K74 [{"RigType"}]
      320 GETUPVAL                         R33 1
      321 GETTABLEKS                       R33 R33 K19 ["createElement"]
      323 GETUPVAL                         R34 6
      324 GETTABLEKS                       R34 R34 K75 ["Dropdown"]
      326 GETTABLEKS                       R34 R34 K76 ["Root"]
      328 DUPTABLE                         R35 K80 [{["label"] = "", ["onItemChanged"], ["size"], ["width"], ["value"], ["items"]}]
      329 SETTABLEKS                       R11 R35 K77 ["onItemChanged"]
      331 GETUPVAL                         R36 6
      332 GETTABLEKS                       R36 R36 K67 ["Enums"]
      334 GETTABLEKS                       R36 R36 K68 ["InputSize"]
      336 GETTABLEKS                       R36 R36 K69 ["XSmall"]
      338 SETTABLEKS                       R36 R35 K62 ["size"]
      340 GETIMPORT                        R36 K66 [UDim.new]
      342 LOADN                            R37 1
      343 LOADN                            R38 0
      344 CALL                             R36 2 1
      345 SETTABLEKS                       R36 R35 K61 ["width"]
      347 GETTABLEKS                       R37 R5 K82 ["rigType"]
      349 ORK                              R36 R37 K81 ["HRD"]
      350 SETTABLEKS                       R36 R35 K78 ["value"]
      352 NEWTABLE                         R36 0 2
      354 DUPTABLE                         R37 K84 [{["id"] = "HRD", ["text"]}]
      355 LOADK                            R40 K43 ["Common"]
      356 LOADK                            R41 K44 ["AnimationEditor"]
      357 LOADK                            R42 K45 ["MaskConfiguration"]
      358 LOADK                            R43 K81 ["HRD"]
      359 NAMECALL                         R38 R1 K46 ["getExternalText"]
      361 CALL                             R38 5 1
      362 SETTABLEKS                       R38 R37 K57 ["text"]
      364 DUPTABLE                         R38 K86 [{["id"] = "Custom", ["text"]}]
      365 LOADK                            R41 K43 ["Common"]
      366 LOADK                            R42 K44 ["AnimationEditor"]
      367 LOADK                            R43 K45 ["MaskConfiguration"]
      368 LOADK                            R44 K85 ["Custom"]
      369 NAMECALL                         R39 R1 K46 ["getExternalText"]
      371 CALL                             R39 5 1
      372 SETTABLEKS                       R39 R38 K57 ["text"]
      374 SETLIST                          R36 R37 2 [1]
      376 SETTABLEKS                       R36 R35 K79 ["items"]
      378 CALL                             R33 2 1
      379 SETTABLEKS                       R33 R32 K70 ["RigType"]
      381 CALL                             R29 3 -1
      382 CALL                             R26 -1 1
      383 SETTABLEKS                       R26 R25 K37 ["Value"]
      385 CALL                             R22 3 1
      386 SETTABLEKS                       R22 R21 K31 ["Rig"]
      388 LOADB                            R22 0
      389 GETTABLEKS                       R23 R5 K82 ["rigType"]
      391 JUMPIFNOTEQKS                    R23 K85 ["Custom"] ; [+155]
      393 GETUPVAL                         R22 1
      394 GETTABLEKS                       R22 R22 K19 ["createElement"]
      396 GETUPVAL                         R23 6
      397 GETTABLEKS                       R23 R23 K20 ["View"]
      399 DUPTABLE                         R24 K35 [{["tag"] = "row align-y-center gap-small size-full-500", ["LayoutOrder"]}]
      400 MOVE                             R25 R13
      401 CALL                             R25 0 1
      402 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      404 DUPTABLE                         R25 K38 [{"Label", "Value"}]
      405 GETUPVAL                         R26 1
      406 GETTABLEKS                       R26 R26 K19 ["createElement"]
      408 GETUPVAL                         R27 6
      409 GETTABLEKS                       R27 R27 K39 ["Text"]
      411 DUPTABLE                         R28 K42 [{["LayoutOrder"], ["Text"], ["sizeConstraint"], ["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis"}]
      412 MOVE                             R29 R13
      413 CALL                             R29 0 1
      414 SETTABLEKS                       R29 R28 K28 ["LayoutOrder"]
      416 LOADK                            R31 K43 ["Common"]
      417 LOADK                            R32 K44 ["AnimationEditor"]
      418 LOADK                            R33 K45 ["MaskConfiguration"]
      419 LOADK                            R34 K31 ["Rig"]
      420 NAMECALL                         R29 R1 K46 ["getExternalText"]
      422 CALL                             R29 5 1
      423 SETTABLEKS                       R29 R28 K39 ["Text"]
      425 DUPTABLE                         R29 K48 [{"MinSize"}]
      426 GETIMPORT                        R30 K51 [Vector2.new]
      428 LOADN                            R31 50
      429 LOADN                            R32 0
      430 CALL                             R30 2 1
      431 SETTABLEKS                       R30 R29 K47 ["MinSize"]
      433 SETTABLEKS                       R29 R28 K40 ["sizeConstraint"]
      435 CALL                             R26 2 1
      436 SETTABLEKS                       R26 R25 K36 ["Label"]
      438 GETUPVAL                         R26 1
      439 GETTABLEKS                       R26 R26 K19 ["createElement"]
      441 GETUPVAL                         R27 6
      442 GETTABLEKS                       R27 R27 K20 ["View"]
      444 DUPTABLE                         R28 K88 [{["tag"] = "row align-y-center size-0-full", ["LayoutOrder"]}]
      445 MOVE                             R29 R13
      446 CALL                             R29 0 1
      447 SETTABLEKS                       R29 R28 K28 ["LayoutOrder"]
      449 DUPTABLE                         R29 K92 [{"CurrentName", "Spacer", "PickButton"}]
      450 GETUPVAL                         R30 1
      451 GETTABLEKS                       R30 R30 K19 ["createElement"]
      453 GETUPVAL                         R31 6
      454 GETTABLEKS                       R31 R31 K39 ["Text"]
      456 DUPTABLE                         R32 K93 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis"}]
      457 MOVE                             R33 R13
      458 CALL                             R33 0 1
      459 SETTABLEKS                       R33 R32 K28 ["LayoutOrder"]
      461 GETTABLEKS                       R34 R5 K94 ["rigName"]
      463 JUMPIFNOT                        R34 ; [+4]
      464 JUMPIFEQKS                       R34 K56 [""] ; [+3]
      466 MOVE                             R33 R34
      467 JUMP                             ; [+8]
      468 LOADK                            R37 K43 ["Common"]
      469 LOADK                            R38 K44 ["AnimationEditor"]
      470 LOADK                            R39 K45 ["MaskConfiguration"]
      471 LOADK                            R40 K95 ["NoRigSelected"]
      472 NAMECALL                         R35 R1 K46 ["getExternalText"]
      474 CALL                             R35 5 1
      475 MOVE                             R33 R35
      476 SETTABLEKS                       R33 R32 K39 ["Text"]
      478 CALL                             R30 2 1
      479 SETTABLEKS                       R30 R29 K89 ["CurrentName"]
      481 GETUPVAL                         R30 1
      482 GETTABLEKS                       R30 R30 K19 ["createElement"]
      484 GETUPVAL                         R31 6
      485 GETTABLEKS                       R31 R31 K20 ["View"]
      487 DUPTABLE                         R32 K97 [{["tag"] = "grow size-100-full", ["width"], ["LayoutOrder"]}]
      488 GETIMPORT                        R33 K66 [UDim.new]
      490 LOADN                            R34 20
      491 LOADN                            R35 20
      492 CALL                             R33 2 1
      493 SETTABLEKS                       R33 R32 K61 ["width"]
      495 MOVE                             R33 R13
      496 CALL                             R33 0 1
      497 SETTABLEKS                       R33 R32 K28 ["LayoutOrder"]
      499 CALL                             R30 2 1
      500 SETTABLEKS                       R30 R29 K90 ["Spacer"]
      502 GETUPVAL                         R30 1
      503 GETTABLEKS                       R30 R30 K19 ["createElement"]
      505 GETUPVAL                         R31 6
      506 GETTABLEKS                       R31 R31 K98 ["Button"]
      508 DUPTABLE                         R32 K100 [{["label"] = "", ["text"], ["onActivated"], ["size"], ["width"], ["LayoutOrder"]}]
      509 LOADK                            R35 K43 ["Common"]
      510 LOADK                            R36 K44 ["AnimationEditor"]
      511 LOADK                            R37 K45 ["MaskConfiguration"]
      512 LOADK                            R38 K101 ["PickRig"]
      513 NAMECALL                         R33 R1 K46 ["getExternalText"]
      515 CALL                             R33 5 1
      516 SETTABLEKS                       R33 R32 K57 ["text"]
      518 SETTABLEKS                       R10 R32 K99 ["onActivated"]
      520 GETUPVAL                         R33 6
      521 GETTABLEKS                       R33 R33 K67 ["Enums"]
      523 GETTABLEKS                       R33 R33 K68 ["InputSize"]
      525 GETTABLEKS                       R33 R33 K69 ["XSmall"]
      527 SETTABLEKS                       R33 R32 K62 ["size"]
      529 GETIMPORT                        R33 K66 [UDim.new]
      531 LOADN                            R34 0
      532 LOADN                            R35 70
      533 CALL                             R33 2 1
      534 SETTABLEKS                       R33 R32 K61 ["width"]
      536 MOVE                             R33 R13
      537 CALL                             R33 0 1
      538 SETTABLEKS                       R33 R32 K28 ["LayoutOrder"]
      540 CALL                             R30 2 1
      541 SETTABLEKS                       R30 R29 K91 ["PickButton"]
      543 CALL                             R26 3 1
      544 SETTABLEKS                       R26 R25 K37 ["Value"]
      546 CALL                             R22 3 1
      547 SETTABLEKS                       R22 R21 K32 ["CustomRig"]
      549 CALL                             R18 3 1
      550 SETTABLEKS                       R18 R17 K24 ["TopFields"]
      552 GETUPVAL                         R18 1
      553 GETTABLEKS                       R18 R18 K19 ["createElement"]
      555 GETUPVAL                         R19 6
      556 GETTABLEKS                       R19 R19 K20 ["View"]
      558 DUPTABLE                         R20 K103 [{["tag"] = "col grow size-full padding-top-medium", ["LayoutOrder"]}]
      559 MOVE                             R21 R13
      560 CALL                             R21 0 1
      561 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      563 DUPTABLE                         R21 K105 [{"List"}]
      564 GETUPVAL                         R22 1
      565 GETTABLEKS                       R22 R22 K19 ["createElement"]
      567 GETUPVAL                         R23 7
      568 DUPTABLE                         R24 K106 [{"maskId", "LayoutOrder"}]
      569 SETTABLEKS                       R4 R24 K8 ["maskId"]
      571 MOVE                             R25 R13
      572 CALL                             R25 0 1
      573 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      575 CALL                             R22 2 1
      576 SETTABLEKS                       R22 R21 K104 ["List"]
      578 CALL                             R18 3 1
      579 SETTABLEKS                       R18 R17 K25 ["Joints"]
      581 CALL                             R14 3 -1
      582 RETURN                           R14 -1

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
       30 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["MaskEditorVisibilityContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["MaskWeightEditors"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K13 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Parent"]
       55 GETTABLEKS                       R8 R8 K14 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K15 ["Flags"]
       62 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUIMaskMenu"]
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K17 [PROTO_6]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 RETURN                           R9 1
