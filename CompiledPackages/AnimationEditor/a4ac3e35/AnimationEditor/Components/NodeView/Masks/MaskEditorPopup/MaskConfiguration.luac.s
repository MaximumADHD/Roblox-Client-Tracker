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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["useContext"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K4 ["Context"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K5 ["selectedMaskId"]
       24 JUMPIFNOT                        R3 ; [+4]
       25 GETTABLEKS                       R5 R1 K6 ["masks"]
       27 GETTABLE                         R4 R5 R3
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K7 ["useState"]
       33 LOADNIL                          R6
       34 CALL                             R5 1 2
       35 JUMPIFNOT                        R5 ; [+7]
       36 GETTABLEKS                       R8 R5 K8 ["maskId"]
       38 JUMPIFNOTEQ                      R8 R3 ; [+4]
       40 GETTABLEKS                       R7 R5 K9 ["input"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 NEWTABLE                         R10 0 2
       53 MOVE                             R11 R3
       54 GETTABLEKS                       R12 R1 K11 ["renameMaskAsync"]
       56 SETLIST                          R10 R11 2 [1]
       58 CALL                             R8 2 1
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       62 NEWCLOSURE                       R10 P1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 NEWTABLE                         R11 0 2
       67 MOVE                             R12 R3
       68 GETTABLEKS                       R13 R1 K12 ["pickRigAsync"]
       70 SETLIST                          R11 R12 2 [1]
       72 CALL                             R9 2 1
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       76 NEWCLOSURE                       R11 P2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R1
       79 NEWTABLE                         R12 0 2
       81 MOVE                             R13 R3
       82 GETTABLEKS                       R14 R1 K13 ["setRigTypeAsync"]
       84 SETLIST                          R12 R13 2 [1]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 1
       88 GETTABLEKS                       R11 R11 K14 ["useMemo"]
       90 NEWCLOSURE                       R12 P3
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 NEWTABLE                         R13 0 3
       96 MOVE                             R14 R7
       97 GETTABLEKS                       R15 R1 K6 ["masks"]
       99 MOVE                             R16 R4
      100 SETLIST                          R13 R14 3 [1]
      102 CALL                             R11 2 1
      103 JUMPIFNOTEQKNIL                  R4 ; [+3]
      105 LOADNIL                          R12
      106 RETURN                           R12 1
      107 JUMPIFNOTEQKNIL                  R3 ; [+2]
      109 LOADB                            R13 0 +1
      110 LOADB                            R13 1
      111 FASTCALL2K                       ASSERT R13 K15 ; [+4]
      113 LOADK                            R14 K15 ["Luau"]
      114 GETIMPORT                        R12 K17 [assert]
      116 CALL                             R12 2 0
      117 GETUPVAL                         R12 4
      118 GETTABLEKS                       R12 R12 K18 ["createNextOrder"]
      120 CALL                             R12 0 1
      121 GETUPVAL                         R13 1
      122 GETTABLEKS                       R13 R13 K19 ["createElement"]
      124 GETUPVAL                         R14 5
      125 GETTABLEKS                       R14 R14 K20 ["View"]
      127 DUPTABLE                         R15 K23 [{["tag"] = "col size-full"}]
      128 DUPTABLE                         R16 K26 [{"TopFields", "Joints"}]
      129 GETUPVAL                         R17 1
      130 GETTABLEKS                       R17 R17 K19 ["createElement"]
      132 GETUPVAL                         R18 5
      133 GETTABLEKS                       R18 R18 K20 ["View"]
      135 DUPTABLE                         R19 K29 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      136 MOVE                             R20 R12
      137 CALL                             R20 0 1
      138 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      140 DUPTABLE                         R20 K33 [{"Name", "Rig", "CustomRig"}]
      141 GETUPVAL                         R21 1
      142 GETTABLEKS                       R21 R21 K19 ["createElement"]
      144 GETUPVAL                         R22 5
      145 GETTABLEKS                       R22 R22 K20 ["View"]
      147 DUPTABLE                         R23 K35 [{["tag"] = "row align-y-center gap-small size-full-500", ["LayoutOrder"]}]
      148 MOVE                             R24 R12
      149 CALL                             R24 0 1
      150 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      152 DUPTABLE                         R24 K38 [{"Label", "Value"}]
      153 GETUPVAL                         R25 1
      154 GETTABLEKS                       R25 R25 K19 ["createElement"]
      156 GETUPVAL                         R26 5
      157 GETTABLEKS                       R26 R26 K39 ["Text"]
      159 DUPTABLE                         R27 K42 [{["LayoutOrder"], ["Text"], ["sizeConstraint"], ["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis"}]
      160 MOVE                             R28 R12
      161 CALL                             R28 0 1
      162 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      164 LOADK                            R30 K43 ["Common"]
      165 LOADK                            R31 K44 ["AnimationEditor"]
      166 LOADK                            R32 K45 ["MaskConfiguration"]
      167 LOADK                            R33 K30 ["Name"]
      168 NAMECALL                         R28 R0 K46 ["getExternalText"]
      170 CALL                             R28 5 1
      171 SETTABLEKS                       R28 R27 K39 ["Text"]
      173 DUPTABLE                         R28 K48 [{"MinSize"}]
      174 GETIMPORT                        R29 K51 [Vector2.new]
      176 LOADN                            R30 50
      177 LOADN                            R31 0
      178 CALL                             R29 2 1
      179 SETTABLEKS                       R29 R28 K47 ["MinSize"]
      181 SETTABLEKS                       R28 R27 K40 ["sizeConstraint"]
      183 CALL                             R25 2 1
      184 SETTABLEKS                       R25 R24 K36 ["Label"]
      186 GETUPVAL                         R25 1
      187 GETTABLEKS                       R25 R25 K19 ["createElement"]
      189 GETUPVAL                         R26 5
      190 GETTABLEKS                       R26 R26 K20 ["View"]
      192 DUPTABLE                         R27 K53 [{["LayoutOrder"], ["tag"] = "grow size-0-full"}]
      193 MOVE                             R28 R12
      194 CALL                             R28 0 1
      195 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      197 GETUPVAL                         R28 1
      198 GETTABLEKS                       R28 R28 K19 ["createElement"]
      200 GETUPVAL                         R29 5
      201 GETTABLEKS                       R29 R29 K54 ["TextInput"]
      203 DUPTABLE                         R30 K63 [{["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["hasError"], ["width"], ["size"]}]
      204 MOVE                             R31 R7
      205 JUMPIF                           R31 ; [+2]
      206 GETTABLEKS                       R31 R4 K64 ["name"]
      208 SETTABLEKS                       R31 R30 K57 ["text"]
      210 LOADK                            R33 K43 ["Common"]
      211 LOADK                            R34 K44 ["AnimationEditor"]
      212 LOADK                            R35 K45 ["MaskConfiguration"]
      213 LOADK                            R36 K30 ["Name"]
      214 NAMECALL                         R31 R0 K46 ["getExternalText"]
      216 CALL                             R31 5 1
      217 SETTABLEKS                       R31 R30 K58 ["placeholder"]
      219 SETTABLEKS                       R8 R30 K59 ["onChanged"]
      221 SETTABLEKS                       R11 R30 K60 ["hasError"]
      223 GETIMPORT                        R31 K66 [UDim.new]
      225 LOADN                            R32 1
      226 LOADN                            R33 0
      227 CALL                             R31 2 1
      228 SETTABLEKS                       R31 R30 K61 ["width"]
      230 GETUPVAL                         R31 5
      231 GETTABLEKS                       R31 R31 K67 ["Enums"]
      233 GETTABLEKS                       R31 R31 K68 ["InputSize"]
      235 GETTABLEKS                       R31 R31 K69 ["XSmall"]
      237 SETTABLEKS                       R31 R30 K62 ["size"]
      239 CALL                             R28 2 -1
      240 CALL                             R25 -1 1
      241 SETTABLEKS                       R25 R24 K37 ["Value"]
      243 CALL                             R21 3 1
      244 SETTABLEKS                       R21 R20 K30 ["Name"]
      246 GETUPVAL                         R21 1
      247 GETTABLEKS                       R21 R21 K19 ["createElement"]
      249 GETUPVAL                         R22 5
      250 GETTABLEKS                       R22 R22 K20 ["View"]
      252 DUPTABLE                         R23 K35 [{["tag"] = "row align-y-center gap-small size-full-500", ["LayoutOrder"]}]
      253 MOVE                             R24 R12
      254 CALL                             R24 0 1
      255 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      257 DUPTABLE                         R24 K38 [{"Label", "Value"}]
      258 GETUPVAL                         R25 1
      259 GETTABLEKS                       R25 R25 K19 ["createElement"]
      261 GETUPVAL                         R26 5
      262 GETTABLEKS                       R26 R26 K39 ["Text"]
      264 DUPTABLE                         R27 K42 [{["LayoutOrder"], ["Text"], ["sizeConstraint"], ["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis"}]
      265 MOVE                             R28 R12
      266 CALL                             R28 0 1
      267 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      269 LOADK                            R30 K43 ["Common"]
      270 LOADK                            R31 K44 ["AnimationEditor"]
      271 LOADK                            R32 K45 ["MaskConfiguration"]
      272 LOADK                            R33 K70 ["RigType"]
      273 NAMECALL                         R28 R0 K46 ["getExternalText"]
      275 CALL                             R28 5 1
      276 SETTABLEKS                       R28 R27 K39 ["Text"]
      278 DUPTABLE                         R28 K48 [{"MinSize"}]
      279 GETIMPORT                        R29 K51 [Vector2.new]
      281 LOADN                            R30 50
      282 LOADN                            R31 0
      283 CALL                             R29 2 1
      284 SETTABLEKS                       R29 R28 K47 ["MinSize"]
      286 SETTABLEKS                       R28 R27 K40 ["sizeConstraint"]
      288 CALL                             R25 2 1
      289 SETTABLEKS                       R25 R24 K36 ["Label"]
      291 GETUPVAL                         R25 1
      292 GETTABLEKS                       R25 R25 K19 ["createElement"]
      294 GETUPVAL                         R26 5
      295 GETTABLEKS                       R26 R26 K20 ["View"]
      297 DUPTABLE                         R27 K71 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      298 MOVE                             R28 R12
      299 CALL                             R28 0 1
      300 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      302 GETUPVAL                         R28 1
      303 GETTABLEKS                       R28 R28 K19 ["createElement"]
      305 GETUPVAL                         R29 5
      306 GETTABLEKS                       R29 R29 K20 ["View"]
      308 DUPTABLE                         R30 K73 [{["tag"] = "col gap-xsmall size-full-0", ["LayoutOrder"]}]
      309 MOVE                             R31 R12
      310 CALL                             R31 0 1
      311 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      313 DUPTABLE                         R31 K74 [{"RigType"}]
      314 GETUPVAL                         R32 1
      315 GETTABLEKS                       R32 R32 K19 ["createElement"]
      317 GETUPVAL                         R33 5
      318 GETTABLEKS                       R33 R33 K75 ["Dropdown"]
      320 GETTABLEKS                       R33 R33 K76 ["Root"]
      322 DUPTABLE                         R34 K80 [{["label"] = "", ["onItemChanged"], ["size"], ["width"], ["value"], ["items"]}]
      323 SETTABLEKS                       R10 R34 K77 ["onItemChanged"]
      325 GETUPVAL                         R35 5
      326 GETTABLEKS                       R35 R35 K67 ["Enums"]
      328 GETTABLEKS                       R35 R35 K68 ["InputSize"]
      330 GETTABLEKS                       R35 R35 K69 ["XSmall"]
      332 SETTABLEKS                       R35 R34 K62 ["size"]
      334 GETIMPORT                        R35 K66 [UDim.new]
      336 LOADN                            R36 1
      337 LOADN                            R37 0
      338 CALL                             R35 2 1
      339 SETTABLEKS                       R35 R34 K61 ["width"]
      341 GETTABLEKS                       R36 R4 K82 ["rigType"]
      343 ORK                              R35 R36 K81 ["HRD"]
      344 SETTABLEKS                       R35 R34 K78 ["value"]
      346 NEWTABLE                         R35 0 2
      348 DUPTABLE                         R36 K84 [{["id"] = "HRD", ["text"]}]
      349 LOADK                            R39 K43 ["Common"]
      350 LOADK                            R40 K44 ["AnimationEditor"]
      351 LOADK                            R41 K45 ["MaskConfiguration"]
      352 LOADK                            R42 K81 ["HRD"]
      353 NAMECALL                         R37 R0 K46 ["getExternalText"]
      355 CALL                             R37 5 1
      356 SETTABLEKS                       R37 R36 K57 ["text"]
      358 DUPTABLE                         R37 K86 [{["id"] = "Custom", ["text"]}]
      359 LOADK                            R40 K43 ["Common"]
      360 LOADK                            R41 K44 ["AnimationEditor"]
      361 LOADK                            R42 K45 ["MaskConfiguration"]
      362 LOADK                            R43 K85 ["Custom"]
      363 NAMECALL                         R38 R0 K46 ["getExternalText"]
      365 CALL                             R38 5 1
      366 SETTABLEKS                       R38 R37 K57 ["text"]
      368 SETLIST                          R35 R36 2 [1]
      370 SETTABLEKS                       R35 R34 K79 ["items"]
      372 CALL                             R32 2 1
      373 SETTABLEKS                       R32 R31 K70 ["RigType"]
      375 CALL                             R28 3 -1
      376 CALL                             R25 -1 1
      377 SETTABLEKS                       R25 R24 K37 ["Value"]
      379 CALL                             R21 3 1
      380 SETTABLEKS                       R21 R20 K31 ["Rig"]
      382 LOADB                            R21 0
      383 GETTABLEKS                       R22 R4 K82 ["rigType"]
      385 JUMPIFNOTEQKS                    R22 K85 ["Custom"] ; [+155]
      387 GETUPVAL                         R21 1
      388 GETTABLEKS                       R21 R21 K19 ["createElement"]
      390 GETUPVAL                         R22 5
      391 GETTABLEKS                       R22 R22 K20 ["View"]
      393 DUPTABLE                         R23 K35 [{["tag"] = "row align-y-center gap-small size-full-500", ["LayoutOrder"]}]
      394 MOVE                             R24 R12
      395 CALL                             R24 0 1
      396 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      398 DUPTABLE                         R24 K38 [{"Label", "Value"}]
      399 GETUPVAL                         R25 1
      400 GETTABLEKS                       R25 R25 K19 ["createElement"]
      402 GETUPVAL                         R26 5
      403 GETTABLEKS                       R26 R26 K39 ["Text"]
      405 DUPTABLE                         R27 K42 [{["LayoutOrder"], ["Text"], ["sizeConstraint"], ["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis"}]
      406 MOVE                             R28 R12
      407 CALL                             R28 0 1
      408 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      410 LOADK                            R30 K43 ["Common"]
      411 LOADK                            R31 K44 ["AnimationEditor"]
      412 LOADK                            R32 K45 ["MaskConfiguration"]
      413 LOADK                            R33 K31 ["Rig"]
      414 NAMECALL                         R28 R0 K46 ["getExternalText"]
      416 CALL                             R28 5 1
      417 SETTABLEKS                       R28 R27 K39 ["Text"]
      419 DUPTABLE                         R28 K48 [{"MinSize"}]
      420 GETIMPORT                        R29 K51 [Vector2.new]
      422 LOADN                            R30 50
      423 LOADN                            R31 0
      424 CALL                             R29 2 1
      425 SETTABLEKS                       R29 R28 K47 ["MinSize"]
      427 SETTABLEKS                       R28 R27 K40 ["sizeConstraint"]
      429 CALL                             R25 2 1
      430 SETTABLEKS                       R25 R24 K36 ["Label"]
      432 GETUPVAL                         R25 1
      433 GETTABLEKS                       R25 R25 K19 ["createElement"]
      435 GETUPVAL                         R26 5
      436 GETTABLEKS                       R26 R26 K20 ["View"]
      438 DUPTABLE                         R27 K88 [{["tag"] = "row align-y-center size-0-full", ["LayoutOrder"]}]
      439 MOVE                             R28 R12
      440 CALL                             R28 0 1
      441 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      443 DUPTABLE                         R28 K92 [{"CurrentName", "Spacer", "PickButton"}]
      444 GETUPVAL                         R29 1
      445 GETTABLEKS                       R29 R29 K19 ["createElement"]
      447 GETUPVAL                         R30 5
      448 GETTABLEKS                       R30 R30 K39 ["Text"]
      450 DUPTABLE                         R31 K93 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis"}]
      451 MOVE                             R32 R12
      452 CALL                             R32 0 1
      453 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      455 GETTABLEKS                       R33 R4 K94 ["rigName"]
      457 JUMPIFNOT                        R33 ; [+4]
      458 JUMPIFEQKS                       R33 K56 [""] ; [+3]
      460 MOVE                             R32 R33
      461 JUMP                             ; [+8]
      462 LOADK                            R36 K43 ["Common"]
      463 LOADK                            R37 K44 ["AnimationEditor"]
      464 LOADK                            R38 K45 ["MaskConfiguration"]
      465 LOADK                            R39 K95 ["NoRigSelected"]
      466 NAMECALL                         R34 R0 K46 ["getExternalText"]
      468 CALL                             R34 5 1
      469 MOVE                             R32 R34
      470 SETTABLEKS                       R32 R31 K39 ["Text"]
      472 CALL                             R29 2 1
      473 SETTABLEKS                       R29 R28 K89 ["CurrentName"]
      475 GETUPVAL                         R29 1
      476 GETTABLEKS                       R29 R29 K19 ["createElement"]
      478 GETUPVAL                         R30 5
      479 GETTABLEKS                       R30 R30 K20 ["View"]
      481 DUPTABLE                         R31 K97 [{["tag"] = "grow size-100-full", ["width"], ["LayoutOrder"]}]
      482 GETIMPORT                        R32 K66 [UDim.new]
      484 LOADN                            R33 20
      485 LOADN                            R34 20
      486 CALL                             R32 2 1
      487 SETTABLEKS                       R32 R31 K61 ["width"]
      489 MOVE                             R32 R12
      490 CALL                             R32 0 1
      491 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      493 CALL                             R29 2 1
      494 SETTABLEKS                       R29 R28 K90 ["Spacer"]
      496 GETUPVAL                         R29 1
      497 GETTABLEKS                       R29 R29 K19 ["createElement"]
      499 GETUPVAL                         R30 5
      500 GETTABLEKS                       R30 R30 K98 ["Button"]
      502 DUPTABLE                         R31 K100 [{["label"] = "", ["text"], ["onActivated"], ["size"], ["width"], ["LayoutOrder"]}]
      503 LOADK                            R34 K43 ["Common"]
      504 LOADK                            R35 K44 ["AnimationEditor"]
      505 LOADK                            R36 K45 ["MaskConfiguration"]
      506 LOADK                            R37 K101 ["PickRig"]
      507 NAMECALL                         R32 R0 K46 ["getExternalText"]
      509 CALL                             R32 5 1
      510 SETTABLEKS                       R32 R31 K57 ["text"]
      512 SETTABLEKS                       R9 R31 K99 ["onActivated"]
      514 GETUPVAL                         R32 5
      515 GETTABLEKS                       R32 R32 K67 ["Enums"]
      517 GETTABLEKS                       R32 R32 K68 ["InputSize"]
      519 GETTABLEKS                       R32 R32 K69 ["XSmall"]
      521 SETTABLEKS                       R32 R31 K62 ["size"]
      523 GETIMPORT                        R32 K66 [UDim.new]
      525 LOADN                            R33 0
      526 LOADN                            R34 70
      527 CALL                             R32 2 1
      528 SETTABLEKS                       R32 R31 K61 ["width"]
      530 MOVE                             R32 R12
      531 CALL                             R32 0 1
      532 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      534 CALL                             R29 2 1
      535 SETTABLEKS                       R29 R28 K91 ["PickButton"]
      537 CALL                             R25 3 1
      538 SETTABLEKS                       R25 R24 K37 ["Value"]
      540 CALL                             R21 3 1
      541 SETTABLEKS                       R21 R20 K32 ["CustomRig"]
      543 CALL                             R17 3 1
      544 SETTABLEKS                       R17 R16 K24 ["TopFields"]
      546 GETUPVAL                         R17 1
      547 GETTABLEKS                       R17 R17 K19 ["createElement"]
      549 GETUPVAL                         R18 5
      550 GETTABLEKS                       R18 R18 K20 ["View"]
      552 DUPTABLE                         R19 K103 [{["tag"] = "col grow size-full padding-top-medium", ["LayoutOrder"]}]
      553 MOVE                             R20 R12
      554 CALL                             R20 0 1
      555 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      557 DUPTABLE                         R20 K105 [{"List"}]
      558 GETUPVAL                         R21 1
      559 GETTABLEKS                       R21 R21 K19 ["createElement"]
      561 GETUPVAL                         R22 6
      562 DUPTABLE                         R23 K106 [{"maskId", "LayoutOrder"}]
      563 SETTABLEKS                       R3 R23 K8 ["maskId"]
      565 MOVE                             R24 R12
      566 CALL                             R24 0 1
      567 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      569 CALL                             R21 2 1
      570 SETTABLEKS                       R21 R20 K104 ["List"]
      572 CALL                             R17 3 1
      573 SETTABLEKS                       R17 R16 K25 ["Joints"]
      575 CALL                             R13 3 -1
      576 RETURN                           R13 -1

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
       58 DUPCLOSURE                       R8 K15 [PROTO_6]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 RETURN                           R8 1
