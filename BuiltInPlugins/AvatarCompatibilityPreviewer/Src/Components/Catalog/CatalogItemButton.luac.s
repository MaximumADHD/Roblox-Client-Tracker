PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"palette", "item"}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["palette"]
        5 SETTABLEKS                       R4 R3 K0 ["palette"]
        7 DUPTABLE                         R4 K5 [{"source", "builtinItem"}]
        8 LOADK                            R5 K6 ["builtin"]
        9 SETTABLEKS                       R5 R4 K3 ["source"]
       11 SETTABLEKS                       R0 R4 K4 ["builtinItem"]
       13 SETTABLEKS                       R4 R3 K1 ["item"]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K7 ["layered"] ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["palette"]
        2 GETTABLEKS                       R2 R3 K1 ["Items"]
        4 LENGTH                           R1 R2
        5 JUMPIFNOTEQKN                    R1 K2 [1] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 MOVE                             R2 R1
       13 GETTABLEKS                       R5 R0 K0 ["palette"]
       15 GETTABLEKS                       R4 R5 K1 ["Items"]
       17 GETTABLEN                        R3 R4 1
       18 CALL                             R2 1 1
       19 LOADB                            R3 0
       20 LOADN                            R6 2
       21 GETTABLEKS                       R8 R0 K0 ["palette"]
       23 GETTABLEKS                       R7 R8 K1 ["Items"]
       25 LENGTH                           R4 R7
       26 LOADN                            R5 1
       27 FORNPREP                         R4
       28 MOVE                             R7 R1
       29 GETTABLEKS                       R10 R0 K0 ["palette"]
       31 GETTABLEKS                       R9 R10 K1 ["Items"]
       33 GETTABLE                         R8 R9 R6
       34 CALL                             R7 1 1
       35 JUMPIFEQ                         R7 R2 ; [+3]
       37 LOADB                            R3 1
       38 JUMP                             ; [+1]
       39 FORNLOOP                         R4
       40 JUMPIF                           R3 ; [+2]
       41 LOADNIL                          R4
       42 RETURN                           R4 1
       43 GETUPVAL                         R4 0
       44 MOVE                             R5 R0
       45 CALL                             R4 1 -1
       46 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["equipItem"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["ItemData"]
        5 NAMECALL                         R0 R0 K2 ["report"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K3 ["addEquippedItem"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K1 ["ItemData"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["unequipItem"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["ItemData"]
        5 NAMECALL                         R0 R0 K2 ["report"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K3 ["removeEquippedItem"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K1 ["ItemData"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["ItemData"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["find"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["equippedItems"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["IsUserProvided"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton2]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K5 ["Parent"]
       15 NEWTABLE                         R4 0 2
       17 DUPTABLE                         R5 K8 [{"Text", "OnItemClicked"}]
       18 GETUPVAL                         R6 3
       19 LOADK                            R8 K9 ["CatalogContextMenu"]
       20 LOADK                            R9 K10 ["DeleteItem"]
       21 NAMECALL                         R6 R6 K11 ["getText"]
       23 CALL                             R6 3 1
       24 SETTABLEKS                       R6 R5 K6 ["Text"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K12 ["Delete"]
       29 SETTABLEKS                       R6 R5 K7 ["OnItemClicked"]
       31 DUPTABLE                         R6 K8 [{"Text", "OnItemClicked"}]
       32 GETUPVAL                         R7 3
       33 LOADK                            R9 K9 ["CatalogContextMenu"]
       34 LOADK                            R10 K13 ["DeleteAllItems"]
       35 NAMECALL                         R7 R7 K11 ["getText"]
       37 CALL                             R7 3 1
       38 SETTABLEKS                       R7 R6 K6 ["Text"]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K14 ["DeleteAll"]
       43 SETTABLEKS                       R7 R6 K7 ["OnItemClicked"]
       45 SETLIST                          R4 R5 2 [1]
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["ItemData"]
        5 GETTABLEKS                       R4 R5 K2 ["item"]
        7 GETTABLEKS                       R3 R4 K3 ["builtinItem"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["CatalogItemButton"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 JUMPIFNOT                        R4 ; [+8]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R3 R4 K2 ["useContext"]
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R4 R5 K3 ["Context"]
       17 CALL                             R3 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R4 R5 K2 ["useContext"]
       23 GETUPVAL                         R5 5
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 6
       26 NAMECALL                         R5 R5 K0 ["use"]
       28 CALL                             R5 1 1
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R8 0 2
       38 GETTABLEKS                       R9 R4 K5 ["addEquippedItem"]
       40 GETTABLEKS                       R10 R0 K6 ["ItemData"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R9 0 2
       54 GETTABLEKS                       R10 R4 K7 ["removeEquippedItem"]
       56 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R8 R9 K8 ["useMemo"]
       64 NEWCLOSURE                       R9 P2
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R10 0 2
       71 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       73 GETTABLEKS                       R12 R4 K9 ["equippedItems"]
       75 SETLIST                          R10 R11 2 [1]
       77 CALL                             R8 2 1
       78 GETUPVAL                         R9 9
       79 GETTABLEKS                       R10 R0 K6 ["ItemData"]
       81 CALL                             R9 1 1
       82 GETUPVAL                         R10 10
       83 LOADB                            R11 0
       84 CALL                             R10 1 1
       85 LOADB                            R11 1
       86 GETTABLEKS                       R14 R0 K6 ["ItemData"]
       88 GETTABLEKS                       R13 R14 K10 ["palette"]
       90 GETTABLEKS                       R12 R13 K11 ["Key"]
       92 JUMPIFEQKS                       R12 K12 ["BodyRangeOfMotion"] ; [+20]
       94 LOADB                            R11 1
       95 GETTABLEKS                       R14 R0 K6 ["ItemData"]
       97 GETTABLEKS                       R13 R14 K10 ["palette"]
       99 GETTABLEKS                       R12 R13 K11 ["Key"]
      101 JUMPIFEQKS                       R12 K13 ["Movement"] ; [+11]
      103 GETTABLEKS                       R14 R0 K6 ["ItemData"]
      105 GETTABLEKS                       R13 R14 K10 ["palette"]
      107 GETTABLEKS                       R12 R13 K11 ["Key"]
      109 JUMPIFEQKS                       R12 K14 ["BodyEmotes"] ; [+2]
      111 LOADB                            R11 0 +1
      112 LOADB                            R11 1
      113 GETUPVAL                         R12 11
      114 GETTABLEKS                       R13 R0 K6 ["ItemData"]
      116 CALL                             R12 1 1
      117 GETUPVAL                         R14 3
      118 GETTABLEKS                       R13 R14 K4 ["useCallback"]
      120 NEWCLOSURE                       R14 P3
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          UPVAL U13
      124 CAPTURE                          VAL R5
      125 NEWTABLE                         R15 0 1
      127 GETTABLEKS                       R16 R0 K6 ["ItemData"]
      129 SETLIST                          R15 R16 1 [1]
      131 CALL                             R13 2 1
      132 LOADB                            R14 0
      133 GETUPVAL                         R15 2
      134 JUMPIFNOT                        R15 ; [+52]
      135 GETTABLEKS                       R16 R3 K15 ["focusedAttachments"]
      137 LENGTH                           R15 R16
      138 JUMPIFEQKNIL                     R15 ; [+48]
      140 GETTABLEKS                       R17 R0 K6 ["ItemData"]
      142 GETTABLEKS                       R16 R17 K16 ["item"]
      144 GETTABLEKS                       R15 R16 K17 ["source"]
      146 JUMPIFNOTEQKS                    R15 K18 ["builtin"] ; [+40]
      148 GETTABLEKS                       R18 R0 K6 ["ItemData"]
      150 GETTABLEKS                       R17 R18 K16 ["item"]
      152 GETTABLEKS                       R16 R17 K19 ["builtinItem"]
      154 FASTCALL1                        TYPEOF R16 ; [+2]
      155 GETIMPORT                        R15 K21 [typeof]
      157 CALL                             R15 1 1
      158 JUMPIFNOTEQKS                    R15 K22 ["number"] ; [+28]
      160 GETUPVAL                         R15 14
      161 GETUPVAL                         R17 15
      162 GETTABLEKS                       R16 R17 K23 ["allItems"]
      164 NEWCLOSURE                       R17 P4
      165 CAPTURE                          VAL R0
      166 CALL                             R15 2 1
      167 LOADB                            R16 0
      168 JUMPIFEQKNIL                     R15 ; [+17]
      170 LOADB                            R16 0
      171 GETTABLEKS                       R17 R15 K24 ["attachment"]
      173 JUMPIFEQKNIL                     R17 ; [+12]
      175 GETIMPORT                        R17 K27 [table.find]
      177 GETTABLEKS                       R18 R3 K15 ["focusedAttachments"]
      179 GETTABLEKS                       R19 R15 K24 ["attachment"]
      181 CALL                             R17 2 1
      182 JUMPIFNOTEQKNIL                  R17 ; [+2]
      184 LOADB                            R16 0 +1
      185 LOADB                            R16 1
      186 MOVE                             R14 R16
      187 GETUPVAL                         R16 3
      188 GETTABLEKS                       R15 R16 K28 ["createElement"]
      190 GETUPVAL                         R16 16
      191 DUPTABLE                         R17 K34 [{"LayoutOrder", "Size", "OnClick", "Style", "Tooltip"}]
      192 GETTABLEKS                       R18 R0 K29 ["LayoutOrder"]
      194 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      196 GETTABLEKS                       R18 R0 K30 ["Size"]
      198 SETTABLEKS                       R18 R17 K30 ["Size"]
      200 JUMPIFNOT                        R8 ; [+2]
      201 MOVE                             R18 R7
      202 JUMP                             ; [+1]
      203 MOVE                             R18 R6
      204 SETTABLEKS                       R18 R17 K31 ["OnClick"]
      206 JUMPIFNOT                        R8 ; [+2]
      207 LOADK                            R18 K35 ["RoundActive"]
      208 JUMP                             ; [+4]
      209 JUMPIFNOT                        R14 ; [+2]
      210 LOADK                            R18 K36 ["RoundHighlighted"]
      211 JUMP                             ; [+1]
      212 LOADK                            R18 K37 ["Round"]
      213 SETTABLEKS                       R18 R17 K32 ["Style"]
      215 JUMPIF                           R11 ; [+2]
      216 MOVE                             R18 R9
      217 JUMP                             ; [+1]
      218 LOADNIL                          R18
      219 SETTABLEKS                       R18 R17 K33 ["Tooltip"]
      221 DUPTABLE                         R18 K40 [{"Contents", "ItemName"}]
      222 GETUPVAL                         R20 3
      223 GETTABLEKS                       R19 R20 K28 ["createElement"]
      225 GETUPVAL                         R20 17
      226 NEWTABLE                         R21 4 0
      228 GETUPVAL                         R24 3
      229 GETTABLEKS                       R23 R24 K41 ["Event"]
      231 GETTABLEKS                       R22 R23 K42 ["InputBegan"]
      233 SETTABLE                         R13 R21 R22
      234 GETUPVAL                         R24 3
      235 GETTABLEKS                       R23 R24 K41 ["Event"]
      237 GETTABLEKS                       R22 R23 K43 ["MouseEnter"]
      239 GETTABLEKS                       R23 R10 K44 ["enable"]
      241 SETTABLE                         R23 R21 R22
      242 GETUPVAL                         R24 3
      243 GETTABLEKS                       R23 R24 K41 ["Event"]
      245 GETTABLEKS                       R22 R23 K45 ["MouseLeave"]
      247 GETTABLEKS                       R23 R10 K46 ["disable"]
      249 SETTABLE                         R23 R21 R22
      250 GETTABLEKS                       R22 R2 K47 ["Padding"]
      252 SETTABLEKS                       R22 R21 K47 ["Padding"]
      254 DUPTABLE                         R22 K52 [{"Preview", "HoverX", "AccessoryTypeImage", "UserImage"}]
      255 GETUPVAL                         R24 3
      256 GETTABLEKS                       R23 R24 K28 ["createElement"]
      258 GETUPVAL                         R24 18
      259 DUPTABLE                         R25 K54 [{"ItemData", "Selected"}]
      260 GETTABLEKS                       R26 R0 K6 ["ItemData"]
      262 SETTABLEKS                       R26 R25 K6 ["ItemData"]
      264 SETTABLEKS                       R8 R25 K53 ["Selected"]
      266 CALL                             R23 2 1
      267 SETTABLEKS                       R23 R22 K48 ["Preview"]
      269 LOADB                            R23 0
      270 GETTABLEKS                       R24 R0 K55 ["Delete"]
      272 JUMPIFEQKNIL                     R24 ; [+68]
      274 GETTABLEKS                       R23 R10 K56 ["enabled"]
      276 JUMPIFNOT                        R23 ; [+64]
      277 GETUPVAL                         R24 3
      278 GETTABLEKS                       R23 R24 K28 ["createElement"]
      280 GETUPVAL                         R24 17
      281 DUPTABLE                         R25 K59 [{"AnchorPoint", "Position", "Size"}]
      282 GETTABLEKS                       R27 R2 K49 ["HoverX"]
      284 GETTABLEKS                       R26 R27 K57 ["AnchorPoint"]
      286 SETTABLEKS                       R26 R25 K57 ["AnchorPoint"]
      288 GETTABLEKS                       R27 R2 K49 ["HoverX"]
      290 GETTABLEKS                       R26 R27 K58 ["Position"]
      292 SETTABLEKS                       R26 R25 K58 ["Position"]
      294 GETTABLEKS                       R27 R2 K49 ["HoverX"]
      296 GETTABLEKS                       R26 R27 K30 ["Size"]
      298 SETTABLEKS                       R26 R25 K30 ["Size"]
      300 DUPTABLE                         R26 K61 [{"RemoveButton"}]
      301 GETUPVAL                         R28 3
      302 GETTABLEKS                       R27 R28 K28 ["createElement"]
      304 GETUPVAL                         R28 16
      305 DUPTABLE                         R29 K63 [{"StyleModifier", "OnClick"}]
      306 GETUPVAL                         R31 19
      307 GETTABLEKS                       R30 R31 K64 ["Hover"]
      309 SETTABLEKS                       R30 R29 K62 ["StyleModifier"]
      311 GETTABLEKS                       R30 R0 K55 ["Delete"]
      313 SETTABLEKS                       R30 R29 K31 ["OnClick"]
      315 DUPTABLE                         R30 K65 [{"HoverX"}]
      316 GETUPVAL                         R32 3
      317 GETTABLEKS                       R31 R32 K28 ["createElement"]
      319 GETUPVAL                         R32 20
      320 DUPTABLE                         R33 K67 [{"Image", "Size"}]
      321 GETTABLEKS                       R35 R2 K49 ["HoverX"]
      323 GETTABLEKS                       R34 R35 K66 ["Image"]
      325 SETTABLEKS                       R34 R33 K66 ["Image"]
      327 GETIMPORT                        R34 K70 [UDim2.fromScale]
      329 LOADN                            R35 1
      330 LOADN                            R36 1
      331 CALL                             R34 2 1
      332 SETTABLEKS                       R34 R33 K30 ["Size"]
      334 CALL                             R31 2 1
      335 SETTABLEKS                       R31 R30 K49 ["HoverX"]
      337 CALL                             R27 3 1
      338 SETTABLEKS                       R27 R26 K60 ["RemoveButton"]
      340 CALL                             R23 3 1
      341 SETTABLEKS                       R23 R22 K49 ["HoverX"]
      343 LOADB                            R23 0
      344 JUMPIFEQKNIL                     R12 ; [+60]
      346 GETUPVAL                         R24 3
      347 GETTABLEKS                       R23 R24 K28 ["createElement"]
      349 GETUPVAL                         R24 17
      350 DUPTABLE                         R25 K59 [{"AnchorPoint", "Position", "Size"}]
      351 GETTABLEKS                       R27 R2 K50 ["AccessoryTypeImage"]
      353 GETTABLEKS                       R26 R27 K57 ["AnchorPoint"]
      355 SETTABLEKS                       R26 R25 K57 ["AnchorPoint"]
      357 GETTABLEKS                       R27 R2 K50 ["AccessoryTypeImage"]
      359 GETTABLEKS                       R26 R27 K58 ["Position"]
      361 SETTABLEKS                       R26 R25 K58 ["Position"]
      363 GETTABLEKS                       R27 R2 K50 ["AccessoryTypeImage"]
      365 GETTABLEKS                       R26 R27 K30 ["Size"]
      367 SETTABLEKS                       R26 R25 K30 ["Size"]
      369 DUPTABLE                         R26 K71 [{"Image"}]
      370 GETUPVAL                         R28 3
      371 GETTABLEKS                       R27 R28 K28 ["createElement"]
      373 GETUPVAL                         R28 20
      374 DUPTABLE                         R29 K73 [{"Image", "ImageColor3", "Size"}]
      375 JUMPIFNOTEQKS                    R12 K74 ["layered"] ; [+6]
      377 GETTABLEKS                       R31 R2 K50 ["AccessoryTypeImage"]
      379 GETTABLEKS                       R30 R31 K75 ["LayeredImage"]
      381 JUMP                             ; [+4]
      382 GETTABLEKS                       R31 R2 K50 ["AccessoryTypeImage"]
      384 GETTABLEKS                       R30 R31 K76 ["RigidImage"]
      386 SETTABLEKS                       R30 R29 K66 ["Image"]
      388 GETTABLEKS                       R31 R2 K50 ["AccessoryTypeImage"]
      390 GETTABLEKS                       R30 R31 K77 ["Color"]
      392 SETTABLEKS                       R30 R29 K72 ["ImageColor3"]
      394 GETIMPORT                        R30 K70 [UDim2.fromScale]
      396 LOADN                            R31 1
      397 LOADN                            R32 1
      398 CALL                             R30 2 1
      399 SETTABLEKS                       R30 R29 K30 ["Size"]
      401 CALL                             R27 2 1
      402 SETTABLEKS                       R27 R26 K66 ["Image"]
      404 CALL                             R23 3 1
      405 SETTABLEKS                       R23 R22 K50 ["AccessoryTypeImage"]
      407 GETTABLEKS                       R23 R0 K78 ["IsUserProvided"]
      409 JUMPIFNOT                        R23 ; [+52]
      410 GETUPVAL                         R24 3
      411 GETTABLEKS                       R23 R24 K28 ["createElement"]
      413 GETUPVAL                         R24 17
      414 DUPTABLE                         R25 K59 [{"AnchorPoint", "Position", "Size"}]
      415 GETTABLEKS                       R27 R2 K51 ["UserImage"]
      417 GETTABLEKS                       R26 R27 K57 ["AnchorPoint"]
      419 SETTABLEKS                       R26 R25 K57 ["AnchorPoint"]
      421 GETTABLEKS                       R27 R2 K51 ["UserImage"]
      423 GETTABLEKS                       R26 R27 K58 ["Position"]
      425 SETTABLEKS                       R26 R25 K58 ["Position"]
      427 GETTABLEKS                       R27 R2 K51 ["UserImage"]
      429 GETTABLEKS                       R26 R27 K30 ["Size"]
      431 SETTABLEKS                       R26 R25 K30 ["Size"]
      433 DUPTABLE                         R26 K79 [{"UserImage"}]
      434 GETUPVAL                         R28 3
      435 GETTABLEKS                       R27 R28 K28 ["createElement"]
      437 GETUPVAL                         R28 20
      438 DUPTABLE                         R29 K73 [{"Image", "ImageColor3", "Size"}]
      439 GETTABLEKS                       R31 R2 K51 ["UserImage"]
      441 GETTABLEKS                       R30 R31 K66 ["Image"]
      443 SETTABLEKS                       R30 R29 K66 ["Image"]
      445 GETTABLEKS                       R31 R2 K51 ["UserImage"]
      447 GETTABLEKS                       R30 R31 K77 ["Color"]
      449 SETTABLEKS                       R30 R29 K72 ["ImageColor3"]
      451 GETIMPORT                        R30 K70 [UDim2.fromScale]
      453 LOADN                            R31 1
      454 LOADN                            R32 1
      455 CALL                             R30 2 1
      456 SETTABLEKS                       R30 R29 K30 ["Size"]
      458 CALL                             R27 2 1
      459 SETTABLEKS                       R27 R26 K51 ["UserImage"]
      461 CALL                             R23 3 1
      462 SETTABLEKS                       R23 R22 K51 ["UserImage"]
      464 CALL                             R19 3 1
      465 SETTABLEKS                       R19 R18 K38 ["Contents"]
      467 JUMPIFNOT                        R9 ; [+49]
      468 JUMPIFNOT                        R11 ; [+48]
      469 GETUPVAL                         R20 3
      470 GETTABLEKS                       R19 R20 K28 ["createElement"]
      472 GETUPVAL                         R20 21
      473 DUPTABLE                         R21 K85 [{"Text", "TextWrapped", "TextXAlignment", "TextYAlignment", "ZIndex"}]
      474 SETTABLEKS                       R9 R21 K80 ["Text"]
      476 LOADB                            R22 1
      477 SETTABLEKS                       R22 R21 K81 ["TextWrapped"]
      479 GETIMPORT                        R22 K88 [Enum.TextXAlignment.Left]
      481 SETTABLEKS                       R22 R21 K82 ["TextXAlignment"]
      483 GETIMPORT                        R22 K90 [Enum.TextYAlignment.Bottom]
      485 SETTABLEKS                       R22 R21 K83 ["TextYAlignment"]
      487 LOADN                            R22 2
      488 SETTABLEKS                       R22 R21 K84 ["ZIndex"]
      490 DUPTABLE                         R22 K91 [{"Padding"}]
      491 GETUPVAL                         R24 3
      492 GETTABLEKS                       R23 R24 K28 ["createElement"]
      494 LOADK                            R24 K92 ["UIPadding"]
      495 DUPTABLE                         R25 K97 [{"PaddingLeft", "PaddingBottom", "PaddingRight", "PaddingTop"}]
      496 GETTABLEKS                       R26 R2 K98 ["TextLabelPadding"]
      498 SETTABLEKS                       R26 R25 K93 ["PaddingLeft"]
      500 GETTABLEKS                       R26 R2 K98 ["TextLabelPadding"]
      502 SETTABLEKS                       R26 R25 K94 ["PaddingBottom"]
      504 GETTABLEKS                       R26 R2 K98 ["TextLabelPadding"]
      506 SETTABLEKS                       R26 R25 K95 ["PaddingRight"]
      508 GETTABLEKS                       R26 R2 K98 ["TextLabelPadding"]
      510 SETTABLEKS                       R26 R25 K96 ["PaddingTop"]
      512 CALL                             R23 2 1
      513 SETTABLEKS                       R23 R22 K47 ["Padding"]
      515 CALL                             R19 3 1
      516 JUMP                             ; [+1]
      517 LOADNIL                          R19
      518 SETTABLEKS                       R19 R18 K39 ["ItemName"]
      520 CALL                             R15 3 -1
      521 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["AvatarScreenContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Resources"]
       43 GETTABLEKS                       R6 R7 K14 ["BuiltinItems"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Src"]
       50 GETTABLEKS                       R8 R9 K11 ["Components"]
       52 GETTABLEKS                       R7 R8 K15 ["ItemDataPreview"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K10 ["Src"]
       59 GETTABLEKS                       R9 R10 K16 ["Util"]
       61 GETTABLEKS                       R8 R9 K17 ["EquipmentStateContext"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R11 R0 K10 ["Src"]
       68 GETTABLEKS                       R10 R11 K16 ["Util"]
       70 GETTABLEKS                       R9 R10 K18 ["equippedItemDataEquals"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R12 R0 K10 ["Src"]
       77 GETTABLEKS                       R11 R12 K16 ["Util"]
       79 GETTABLEKS                       R10 R11 K19 ["find"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R13 R0 K10 ["Src"]
       86 GETTABLEKS                       R12 R13 K16 ["Util"]
       88 GETTABLEKS                       R11 R12 K20 ["getItemAccessoryType"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R14 R0 K10 ["Src"]
       95 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       97 GETTABLEKS                       R12 R13 K22 ["useItemName"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R15 R0 K10 ["Src"]
      104 GETTABLEKS                       R14 R15 K21 ["Hooks"]
      106 GETTABLEKS                       R13 R14 K23 ["useToggleState"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R16 R0 K10 ["Src"]
      113 GETTABLEKS                       R15 R16 K24 ["Flags"]
      115 GETTABLEKS                       R14 R15 K25 ["getFFlagAvatarPreviewerEditingTools"]
      117 CALL                             R13 1 1
      118 MOVE                             R14 R13
      119 CALL                             R14 0 1
      120 GETIMPORT                        R15 K5 [require]
      122 GETTABLEKS                       R18 R0 K10 ["Src"]
      124 GETTABLEKS                       R17 R18 K13 ["Resources"]
      126 GETTABLEKS                       R16 R17 K26 ["Theme"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K5 [require]
      131 GETTABLEKS                       R18 R0 K10 ["Src"]
      133 GETTABLEKS                       R17 R18 K27 ["Types"]
      135 CALL                             R16 1 1
      136 GETTABLEKS                       R17 R2 K28 ["UI"]
      138 GETTABLEKS                       R18 R17 K29 ["Button"]
      140 GETTABLEKS                       R19 R17 K30 ["Image"]
      142 GETTABLEKS                       R20 R17 K31 ["TextLabel"]
      144 GETTABLEKS                       R21 R17 K32 ["Pane"]
      146 GETTABLEKS                       R22 R17 K33 ["showContextMenu"]
      148 GETTABLEKS                       R24 R2 K34 ["ContextServices"]
      150 GETTABLEKS                       R23 R24 K35 ["Analytics"]
      152 GETTABLEKS                       R25 R2 K34 ["ContextServices"]
      154 GETTABLEKS                       R24 R25 K36 ["Localization"]
      156 GETTABLEKS                       R26 R2 K16 ["Util"]
      158 GETTABLEKS                       R25 R26 K37 ["StyleModifier"]
      160 GETTABLEKS                       R27 R2 K34 ["ContextServices"]
      162 GETTABLEKS                       R26 R27 K38 ["Stylizer"]
      164 DUPCLOSURE                       R27 K39 [PROTO_1]
      165 CAPTURE                          VAL R10
      166 DUPCLOSURE                       R28 K40 [PROTO_8]
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R26
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R27
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R0
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R20
      189 RETURN                           R28 1
