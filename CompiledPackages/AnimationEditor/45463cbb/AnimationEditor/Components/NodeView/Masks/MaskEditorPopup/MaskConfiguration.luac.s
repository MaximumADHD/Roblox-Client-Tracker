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
      133 DUPTABLE                         R16 K22 [{"tag"}]
      134 LOADK                            R17 K23 ["col size-full"]
      135 SETTABLEKS                       R17 R16 K21 ["tag"]
      137 DUPTABLE                         R17 K26 [{"TopFields", "Joints"}]
      138 GETUPVAL                         R18 1
      139 GETTABLEKS                       R18 R18 K19 ["createElement"]
      141 GETUPVAL                         R19 6
      142 GETTABLEKS                       R19 R19 K20 ["View"]
      144 DUPTABLE                         R20 K28 [{"tag", "LayoutOrder"}]
      145 LOADK                            R21 K29 ["size-full-0 auto-y col gap-medium"]
      146 SETTABLEKS                       R21 R20 K21 ["tag"]
      148 MOVE                             R21 R13
      149 CALL                             R21 0 1
      150 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      152 DUPTABLE                         R21 K33 [{"Name", "Rig", "CustomRig"}]
      153 GETUPVAL                         R22 1
      154 GETTABLEKS                       R22 R22 K19 ["createElement"]
      156 GETUPVAL                         R23 6
      157 GETTABLEKS                       R23 R23 K20 ["View"]
      159 DUPTABLE                         R24 K28 [{"tag", "LayoutOrder"}]
      160 LOADK                            R25 K34 ["size-full-500 row gap-small align-y-center"]
      161 SETTABLEKS                       R25 R24 K21 ["tag"]
      163 MOVE                             R25 R13
      164 CALL                             R25 0 1
      165 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      167 DUPTABLE                         R25 K37 [{"Label", "Value"}]
      168 GETUPVAL                         R26 1
      169 GETTABLEKS                       R26 R26 K19 ["createElement"]
      171 GETUPVAL                         R27 6
      172 GETTABLEKS                       R27 R27 K38 ["Text"]
      174 DUPTABLE                         R28 K40 [{"LayoutOrder", "Text", "sizeConstraint", "tag"}]
      175 MOVE                             R29 R13
      176 CALL                             R29 0 1
      177 SETTABLEKS                       R29 R28 K27 ["LayoutOrder"]
      179 LOADK                            R31 K41 ["Common"]
      180 LOADK                            R32 K42 ["AnimationEditor"]
      181 LOADK                            R33 K43 ["MaskConfiguration"]
      182 LOADK                            R34 K30 ["Name"]
      183 NAMECALL                         R29 R1 K44 ["getExternalText"]
      185 CALL                             R29 5 1
      186 SETTABLEKS                       R29 R28 K38 ["Text"]
      188 DUPTABLE                         R29 K46 [{"MinSize"}]
      189 GETIMPORT                        R30 K49 [Vector2.new]
      191 LOADN                            R31 50
      192 LOADN                            R32 0
      193 CALL                             R30 2 1
      194 SETTABLEKS                       R30 R29 K45 ["MinSize"]
      196 SETTABLEKS                       R29 R28 K39 ["sizeConstraint"]
      198 LOADK                            R29 K50 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      199 SETTABLEKS                       R29 R28 K21 ["tag"]
      201 CALL                             R26 2 1
      202 SETTABLEKS                       R26 R25 K35 ["Label"]
      204 GETUPVAL                         R26 1
      205 GETTABLEKS                       R26 R26 K19 ["createElement"]
      207 GETUPVAL                         R27 6
      208 GETTABLEKS                       R27 R27 K20 ["View"]
      210 DUPTABLE                         R28 K51 [{"LayoutOrder", "tag"}]
      211 MOVE                             R29 R13
      212 CALL                             R29 0 1
      213 SETTABLEKS                       R29 R28 K27 ["LayoutOrder"]
      215 LOADK                            R29 K52 ["size-0-full grow"]
      216 SETTABLEKS                       R29 R28 K21 ["tag"]
      218 GETUPVAL                         R29 1
      219 GETTABLEKS                       R29 R29 K19 ["createElement"]
      221 GETUPVAL                         R30 6
      222 GETTABLEKS                       R30 R30 K53 ["TextInput"]
      224 DUPTABLE                         R31 K61 [{"label", "text", "placeholder", "onChanged", "hasError", "width", "size"}]
      225 LOADK                            R32 K62 [""]
      226 SETTABLEKS                       R32 R31 K54 ["label"]
      228 MOVE                             R32 R8
      229 JUMPIF                           R32 ; [+2]
      230 GETTABLEKS                       R32 R5 K63 ["name"]
      232 SETTABLEKS                       R32 R31 K55 ["text"]
      234 LOADK                            R34 K41 ["Common"]
      235 LOADK                            R35 K42 ["AnimationEditor"]
      236 LOADK                            R36 K43 ["MaskConfiguration"]
      237 LOADK                            R37 K30 ["Name"]
      238 NAMECALL                         R32 R1 K44 ["getExternalText"]
      240 CALL                             R32 5 1
      241 SETTABLEKS                       R32 R31 K56 ["placeholder"]
      243 SETTABLEKS                       R9 R31 K57 ["onChanged"]
      245 SETTABLEKS                       R12 R31 K58 ["hasError"]
      247 GETIMPORT                        R32 K65 [UDim.new]
      249 LOADN                            R33 1
      250 LOADN                            R34 0
      251 CALL                             R32 2 1
      252 SETTABLEKS                       R32 R31 K59 ["width"]
      254 GETUPVAL                         R32 6
      255 GETTABLEKS                       R32 R32 K66 ["Enums"]
      257 GETTABLEKS                       R32 R32 K67 ["InputSize"]
      259 GETTABLEKS                       R32 R32 K68 ["XSmall"]
      261 SETTABLEKS                       R32 R31 K60 ["size"]
      263 CALL                             R29 2 -1
      264 CALL                             R26 -1 1
      265 SETTABLEKS                       R26 R25 K36 ["Value"]
      267 CALL                             R22 3 1
      268 SETTABLEKS                       R22 R21 K30 ["Name"]
      270 GETUPVAL                         R22 1
      271 GETTABLEKS                       R22 R22 K19 ["createElement"]
      273 GETUPVAL                         R23 6
      274 GETTABLEKS                       R23 R23 K20 ["View"]
      276 DUPTABLE                         R24 K28 [{"tag", "LayoutOrder"}]
      277 LOADK                            R25 K34 ["size-full-500 row gap-small align-y-center"]
      278 SETTABLEKS                       R25 R24 K21 ["tag"]
      280 MOVE                             R25 R13
      281 CALL                             R25 0 1
      282 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      284 DUPTABLE                         R25 K37 [{"Label", "Value"}]
      285 GETUPVAL                         R26 1
      286 GETTABLEKS                       R26 R26 K19 ["createElement"]
      288 GETUPVAL                         R27 6
      289 GETTABLEKS                       R27 R27 K38 ["Text"]
      291 DUPTABLE                         R28 K40 [{"LayoutOrder", "Text", "sizeConstraint", "tag"}]
      292 MOVE                             R29 R13
      293 CALL                             R29 0 1
      294 SETTABLEKS                       R29 R28 K27 ["LayoutOrder"]
      296 LOADK                            R31 K41 ["Common"]
      297 LOADK                            R32 K42 ["AnimationEditor"]
      298 LOADK                            R33 K43 ["MaskConfiguration"]
      299 LOADK                            R34 K69 ["RigType"]
      300 NAMECALL                         R29 R1 K44 ["getExternalText"]
      302 CALL                             R29 5 1
      303 SETTABLEKS                       R29 R28 K38 ["Text"]
      305 DUPTABLE                         R29 K46 [{"MinSize"}]
      306 GETIMPORT                        R30 K49 [Vector2.new]
      308 LOADN                            R31 50
      309 LOADN                            R32 0
      310 CALL                             R30 2 1
      311 SETTABLEKS                       R30 R29 K45 ["MinSize"]
      313 SETTABLEKS                       R29 R28 K39 ["sizeConstraint"]
      315 LOADK                            R29 K50 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      316 SETTABLEKS                       R29 R28 K21 ["tag"]
      318 CALL                             R26 2 1
      319 SETTABLEKS                       R26 R25 K35 ["Label"]
      321 GETUPVAL                         R26 1
      322 GETTABLEKS                       R26 R26 K19 ["createElement"]
      324 GETUPVAL                         R27 6
      325 GETTABLEKS                       R27 R27 K20 ["View"]
      327 DUPTABLE                         R28 K28 [{"tag", "LayoutOrder"}]
      328 LOADK                            R29 K52 ["size-0-full grow"]
      329 SETTABLEKS                       R29 R28 K21 ["tag"]
      331 MOVE                             R29 R13
      332 CALL                             R29 0 1
      333 SETTABLEKS                       R29 R28 K27 ["LayoutOrder"]
      335 GETUPVAL                         R29 1
      336 GETTABLEKS                       R29 R29 K19 ["createElement"]
      338 GETUPVAL                         R30 6
      339 GETTABLEKS                       R30 R30 K20 ["View"]
      341 DUPTABLE                         R31 K28 [{"tag", "LayoutOrder"}]
      342 LOADK                            R32 K70 ["col gap-xsmall size-full-0"]
      343 SETTABLEKS                       R32 R31 K21 ["tag"]
      345 MOVE                             R32 R13
      346 CALL                             R32 0 1
      347 SETTABLEKS                       R32 R31 K27 ["LayoutOrder"]
      349 DUPTABLE                         R32 K71 [{"RigType"}]
      350 GETUPVAL                         R33 1
      351 GETTABLEKS                       R33 R33 K19 ["createElement"]
      353 GETUPVAL                         R34 6
      354 GETTABLEKS                       R34 R34 K72 ["Dropdown"]
      356 GETTABLEKS                       R34 R34 K73 ["Root"]
      358 DUPTABLE                         R35 K77 [{"label", "onItemChanged", "size", "width", "value", "items"}]
      359 LOADK                            R36 K62 [""]
      360 SETTABLEKS                       R36 R35 K54 ["label"]
      362 SETTABLEKS                       R11 R35 K74 ["onItemChanged"]
      364 GETUPVAL                         R36 6
      365 GETTABLEKS                       R36 R36 K66 ["Enums"]
      367 GETTABLEKS                       R36 R36 K67 ["InputSize"]
      369 GETTABLEKS                       R36 R36 K68 ["XSmall"]
      371 SETTABLEKS                       R36 R35 K60 ["size"]
      373 GETIMPORT                        R36 K65 [UDim.new]
      375 LOADN                            R37 1
      376 LOADN                            R38 0
      377 CALL                             R36 2 1
      378 SETTABLEKS                       R36 R35 K59 ["width"]
      380 GETTABLEKS                       R37 R5 K79 ["rigType"]
      382 ORK                              R36 R37 K78 ["HRD"]
      383 SETTABLEKS                       R36 R35 K75 ["value"]
      385 NEWTABLE                         R36 0 2
      387 DUPTABLE                         R37 K81 [{"id", "text"}]
      388 LOADK                            R38 K78 ["HRD"]
      389 SETTABLEKS                       R38 R37 K80 ["id"]
      391 LOADK                            R40 K41 ["Common"]
      392 LOADK                            R41 K42 ["AnimationEditor"]
      393 LOADK                            R42 K43 ["MaskConfiguration"]
      394 LOADK                            R43 K78 ["HRD"]
      395 NAMECALL                         R38 R1 K44 ["getExternalText"]
      397 CALL                             R38 5 1
      398 SETTABLEKS                       R38 R37 K55 ["text"]
      400 DUPTABLE                         R38 K81 [{"id", "text"}]
      401 LOADK                            R39 K82 ["Custom"]
      402 SETTABLEKS                       R39 R38 K80 ["id"]
      404 LOADK                            R41 K41 ["Common"]
      405 LOADK                            R42 K42 ["AnimationEditor"]
      406 LOADK                            R43 K43 ["MaskConfiguration"]
      407 LOADK                            R44 K82 ["Custom"]
      408 NAMECALL                         R39 R1 K44 ["getExternalText"]
      410 CALL                             R39 5 1
      411 SETTABLEKS                       R39 R38 K55 ["text"]
      413 SETLIST                          R36 R37 2 [1]
      415 SETTABLEKS                       R36 R35 K76 ["items"]
      417 CALL                             R33 2 1
      418 SETTABLEKS                       R33 R32 K69 ["RigType"]
      420 CALL                             R29 3 -1
      421 CALL                             R26 -1 1
      422 SETTABLEKS                       R26 R25 K36 ["Value"]
      424 CALL                             R22 3 1
      425 SETTABLEKS                       R22 R21 K31 ["Rig"]
      427 LOADB                            R22 0
      428 GETTABLEKS                       R23 R5 K79 ["rigType"]
      430 JUMPIFNOTEQKS                    R23 K82 ["Custom"] ; [+173]
      432 GETUPVAL                         R22 1
      433 GETTABLEKS                       R22 R22 K19 ["createElement"]
      435 GETUPVAL                         R23 6
      436 GETTABLEKS                       R23 R23 K20 ["View"]
      438 DUPTABLE                         R24 K28 [{"tag", "LayoutOrder"}]
      439 LOADK                            R25 K34 ["size-full-500 row gap-small align-y-center"]
      440 SETTABLEKS                       R25 R24 K21 ["tag"]
      442 MOVE                             R25 R13
      443 CALL                             R25 0 1
      444 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      446 DUPTABLE                         R25 K37 [{"Label", "Value"}]
      447 GETUPVAL                         R26 1
      448 GETTABLEKS                       R26 R26 K19 ["createElement"]
      450 GETUPVAL                         R27 6
      451 GETTABLEKS                       R27 R27 K38 ["Text"]
      453 DUPTABLE                         R28 K40 [{"LayoutOrder", "Text", "sizeConstraint", "tag"}]
      454 MOVE                             R29 R13
      455 CALL                             R29 0 1
      456 SETTABLEKS                       R29 R28 K27 ["LayoutOrder"]
      458 LOADK                            R31 K41 ["Common"]
      459 LOADK                            R32 K42 ["AnimationEditor"]
      460 LOADK                            R33 K43 ["MaskConfiguration"]
      461 LOADK                            R34 K31 ["Rig"]
      462 NAMECALL                         R29 R1 K44 ["getExternalText"]
      464 CALL                             R29 5 1
      465 SETTABLEKS                       R29 R28 K38 ["Text"]
      467 DUPTABLE                         R29 K46 [{"MinSize"}]
      468 GETIMPORT                        R30 K49 [Vector2.new]
      470 LOADN                            R31 50
      471 LOADN                            R32 0
      472 CALL                             R30 2 1
      473 SETTABLEKS                       R30 R29 K45 ["MinSize"]
      475 SETTABLEKS                       R29 R28 K39 ["sizeConstraint"]
      477 LOADK                            R29 K50 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      478 SETTABLEKS                       R29 R28 K21 ["tag"]
      480 CALL                             R26 2 1
      481 SETTABLEKS                       R26 R25 K35 ["Label"]
      483 GETUPVAL                         R26 1
      484 GETTABLEKS                       R26 R26 K19 ["createElement"]
      486 GETUPVAL                         R27 6
      487 GETTABLEKS                       R27 R27 K20 ["View"]
      489 DUPTABLE                         R28 K28 [{"tag", "LayoutOrder"}]
      490 LOADK                            R29 K83 ["row size-0-full align-y-center"]
      491 SETTABLEKS                       R29 R28 K21 ["tag"]
      493 MOVE                             R29 R13
      494 CALL                             R29 0 1
      495 SETTABLEKS                       R29 R28 K27 ["LayoutOrder"]
      497 DUPTABLE                         R29 K87 [{"CurrentName", "Spacer", "PickButton"}]
      498 GETUPVAL                         R30 1
      499 GETTABLEKS                       R30 R30 K19 ["createElement"]
      501 GETUPVAL                         R31 6
      502 GETTABLEKS                       R31 R31 K38 ["Text"]
      504 DUPTABLE                         R32 K88 [{"LayoutOrder", "Text", "tag"}]
      505 MOVE                             R33 R13
      506 CALL                             R33 0 1
      507 SETTABLEKS                       R33 R32 K27 ["LayoutOrder"]
      509 GETTABLEKS                       R34 R5 K89 ["rigName"]
      511 JUMPIFNOT                        R34 ; [+4]
      512 JUMPIFEQKS                       R34 K62 [""] ; [+3]
      514 MOVE                             R33 R34
      515 JUMP                             ; [+8]
      516 LOADK                            R37 K41 ["Common"]
      517 LOADK                            R38 K42 ["AnimationEditor"]
      518 LOADK                            R39 K43 ["MaskConfiguration"]
      519 LOADK                            R40 K90 ["NoRigSelected"]
      520 NAMECALL                         R35 R1 K44 ["getExternalText"]
      522 CALL                             R35 5 1
      523 MOVE                             R33 R35
      524 SETTABLEKS                       R33 R32 K38 ["Text"]
      526 LOADK                            R33 K50 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      527 SETTABLEKS                       R33 R32 K21 ["tag"]
      529 CALL                             R30 2 1
      530 SETTABLEKS                       R30 R29 K84 ["CurrentName"]
      532 GETUPVAL                         R30 1
      533 GETTABLEKS                       R30 R30 K19 ["createElement"]
      535 GETUPVAL                         R31 6
      536 GETTABLEKS                       R31 R31 K20 ["View"]
      538 DUPTABLE                         R32 K91 [{"tag", "width", "LayoutOrder"}]
      539 LOADK                            R33 K92 ["size-100-full grow"]
      540 SETTABLEKS                       R33 R32 K21 ["tag"]
      542 GETIMPORT                        R33 K65 [UDim.new]
      544 LOADN                            R34 20
      545 LOADN                            R35 20
      546 CALL                             R33 2 1
      547 SETTABLEKS                       R33 R32 K59 ["width"]
      549 MOVE                             R33 R13
      550 CALL                             R33 0 1
      551 SETTABLEKS                       R33 R32 K27 ["LayoutOrder"]
      553 CALL                             R30 2 1
      554 SETTABLEKS                       R30 R29 K85 ["Spacer"]
      556 GETUPVAL                         R30 1
      557 GETTABLEKS                       R30 R30 K19 ["createElement"]
      559 GETUPVAL                         R31 6
      560 GETTABLEKS                       R31 R31 K93 ["Button"]
      562 DUPTABLE                         R32 K95 [{"label", "text", "onActivated", "size", "width", "LayoutOrder"}]
      563 LOADK                            R33 K62 [""]
      564 SETTABLEKS                       R33 R32 K54 ["label"]
      566 LOADK                            R35 K41 ["Common"]
      567 LOADK                            R36 K42 ["AnimationEditor"]
      568 LOADK                            R37 K43 ["MaskConfiguration"]
      569 LOADK                            R38 K96 ["PickRig"]
      570 NAMECALL                         R33 R1 K44 ["getExternalText"]
      572 CALL                             R33 5 1
      573 SETTABLEKS                       R33 R32 K55 ["text"]
      575 SETTABLEKS                       R10 R32 K94 ["onActivated"]
      577 GETUPVAL                         R33 6
      578 GETTABLEKS                       R33 R33 K66 ["Enums"]
      580 GETTABLEKS                       R33 R33 K67 ["InputSize"]
      582 GETTABLEKS                       R33 R33 K68 ["XSmall"]
      584 SETTABLEKS                       R33 R32 K60 ["size"]
      586 GETIMPORT                        R33 K65 [UDim.new]
      588 LOADN                            R34 0
      589 LOADN                            R35 70
      590 CALL                             R33 2 1
      591 SETTABLEKS                       R33 R32 K59 ["width"]
      593 MOVE                             R33 R13
      594 CALL                             R33 0 1
      595 SETTABLEKS                       R33 R32 K27 ["LayoutOrder"]
      597 CALL                             R30 2 1
      598 SETTABLEKS                       R30 R29 K86 ["PickButton"]
      600 CALL                             R26 3 1
      601 SETTABLEKS                       R26 R25 K36 ["Value"]
      603 CALL                             R22 3 1
      604 SETTABLEKS                       R22 R21 K32 ["CustomRig"]
      606 CALL                             R18 3 1
      607 SETTABLEKS                       R18 R17 K24 ["TopFields"]
      609 GETUPVAL                         R18 1
      610 GETTABLEKS                       R18 R18 K19 ["createElement"]
      612 GETUPVAL                         R19 6
      613 GETTABLEKS                       R19 R19 K20 ["View"]
      615 DUPTABLE                         R20 K28 [{"tag", "LayoutOrder"}]
      616 LOADK                            R21 K97 ["size-full grow col padding-top-medium"]
      617 SETTABLEKS                       R21 R20 K21 ["tag"]
      619 MOVE                             R21 R13
      620 CALL                             R21 0 1
      621 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      623 DUPTABLE                         R21 K99 [{"List"}]
      624 GETUPVAL                         R22 1
      625 GETTABLEKS                       R22 R22 K19 ["createElement"]
      627 GETUPVAL                         R23 7
      628 DUPTABLE                         R24 K100 [{"maskId", "LayoutOrder"}]
      629 SETTABLEKS                       R4 R24 K8 ["maskId"]
      631 MOVE                             R25 R13
      632 CALL                             R25 0 1
      633 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      635 CALL                             R22 2 1
      636 SETTABLEKS                       R22 R21 K98 ["List"]
      638 CALL                             R18 3 1
      639 SETTABLEKS                       R18 R17 K25 ["Joints"]
      641 CALL                             R14 3 -1
      642 RETURN                           R14 -1

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
