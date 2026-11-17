PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"palette", "item"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["palette"]
        5 SETTABLEKS                       R4 R3 K0 ["palette"]
        7 DUPTABLE                         R4 K6 [{["source"] = "builtin", ["builtinItem"]}]
        8 SETTABLEKS                       R0 R4 K5 ["builtinItem"]
       10 SETTABLEKS                       R4 R3 K1 ["item"]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K7 ["layered"] ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["palette"]
        2 GETTABLEKS                       R2 R2 K1 ["Items"]
        4 LENGTH                           R1 R2
        5 JUMPIFNOTEQKN                    R1 K2 [1] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 MOVE                             R2 R1
       13 GETTABLEKS                       R4 R0 K0 ["palette"]
       15 GETTABLEKS                       R4 R4 K1 ["Items"]
       17 GETTABLEN                        R3 R4 1
       18 CALL                             R2 1 1
       19 LOADB                            R3 0
       20 LOADN                            R6 2
       21 GETTABLEKS                       R7 R0 K0 ["palette"]
       23 GETTABLEKS                       R7 R7 K1 ["Items"]
       25 LENGTH                           R4 R7
       26 LOADN                            R5 1
       27 FORNPREP                         R4
       28 MOVE                             R7 R1
       29 GETTABLEKS                       R9 R0 K0 ["palette"]
       31 GETTABLEKS                       R9 R9 K1 ["Items"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["ItemData"]
        5 NAMECALL                         R0 R0 K2 ["report"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K3 ["addEquippedItem"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["ItemData"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["unequipItem"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["ItemData"]
        5 NAMECALL                         R0 R0 K2 ["report"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K3 ["removeEquippedItem"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["ItemData"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["ItemData"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["find"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["equippedItems"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["IsUserProvided"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton2]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+54]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["ItemData"]
       18 GETTABLEKS                       R3 R3 K6 ["item"]
       20 GETTABLEKS                       R3 R3 K7 ["source"]
       22 JUMPIFNOTEQKS                    R3 K8 ["marketplace"] ; [+46]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K5 ["ItemData"]
       27 GETTABLEKS                       R5 R5 K6 ["item"]
       29 GETTABLEKS                       R5 R5 K9 ["marketplaceItem"]
       31 FASTCALL1                        TYPEOF R5 ; [+2]
       32 GETIMPORT                        R4 K11 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFNOTEQKS                    R4 K12 ["number"] ; [+9]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K5 ["ItemData"]
       40 GETTABLEKS                       R3 R3 K6 ["item"]
       42 GETTABLEKS                       R3 R3 K9 ["marketplaceItem"]
       44 JUMP                             ; [+9]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K5 ["ItemData"]
       48 GETTABLEKS                       R3 R3 K6 ["item"]
       50 GETTABLEKS                       R3 R3 K9 ["marketplaceItem"]
       52 GETTABLEKS                       R3 R3 K13 ["uniqueId"]
       54 DUPTABLE                         R4 K16 [{"Text", "OnItemClicked"}]
       55 GETUPVAL                         R5 2
       56 LOADK                            R7 K17 ["CatalogItemButton"]
       57 LOADK                            R8 K18 ["CopyAssetId"]
       58 NAMECALL                         R5 R5 K19 ["getText"]
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R4 K14 ["Text"]
       63 NEWCLOSURE                       R5 P0
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R5 R4 K15 ["OnItemClicked"]
       68 MOVE                             R2 R4
       69 GETUPVAL                         R3 4
       70 GETUPVAL                         R4 5
       71 GETTABLEKS                       R4 R4 K20 ["Parent"]
       73 NEWTABLE                         R5 0 3
       75 DUPTABLE                         R6 K16 [{"Text", "OnItemClicked"}]
       76 GETUPVAL                         R7 2
       77 LOADK                            R9 K21 ["CatalogContextMenu"]
       78 LOADK                            R10 K22 ["DeleteItem"]
       79 NAMECALL                         R7 R7 K19 ["getText"]
       81 CALL                             R7 3 1
       82 SETTABLEKS                       R7 R6 K14 ["Text"]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K23 ["Delete"]
       87 SETTABLEKS                       R7 R6 K15 ["OnItemClicked"]
       89 DUPTABLE                         R7 K16 [{"Text", "OnItemClicked"}]
       90 GETUPVAL                         R8 2
       91 LOADK                            R10 K21 ["CatalogContextMenu"]
       92 LOADK                            R11 K24 ["DeleteAllItems"]
       93 NAMECALL                         R8 R8 K19 ["getText"]
       95 CALL                             R8 3 1
       96 SETTABLEKS                       R8 R7 K14 ["Text"]
       98 GETUPVAL                         R8 0
       99 GETTABLEKS                       R8 R8 K25 ["DeleteAll"]
      101 SETTABLEKS                       R8 R7 K15 ["OnItemClicked"]
      103 MOVE                             R8 R2
      104 SETLIST                          R5 R6 3 [1]
      106 CALL                             R3 2 0
      107 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["ItemData"]
        5 GETTABLEKS                       R3 R3 K2 ["item"]
        7 GETTABLEKS                       R3 R3 K3 ["builtinItem"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["CatalogItemButton"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useContext"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["Context"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K2 ["useContext"]
       19 GETUPVAL                         R5 4
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 5
       22 NAMECALL                         R5 R5 K0 ["use"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R4 K5 ["addEquippedItem"]
       36 GETTABLEKS                       R10 R0 K6 ["ItemData"]
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       44 NEWCLOSURE                       R8 P1
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R9 0 2
       50 GETTABLEKS                       R10 R4 K7 ["removeEquippedItem"]
       52 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       54 SETLIST                          R9 R10 2 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       60 NEWCLOSURE                       R9 P2
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R10 0 2
       67 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       69 GETTABLEKS                       R12 R4 K9 ["equippedItems"]
       71 SETLIST                          R10 R11 2 [1]
       73 CALL                             R8 2 1
       74 GETUPVAL                         R9 8
       75 GETTABLEKS                       R10 R0 K6 ["ItemData"]
       77 CALL                             R9 1 1
       78 GETUPVAL                         R11 9
       79 CALL                             R11 0 1
       80 JUMPIFNOT                        R11 ; [+5]
       81 GETUPVAL                         R10 10
       82 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       84 CALL                             R10 1 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R10
       87 GETUPVAL                         R12 9
       88 CALL                             R12 0 1
       89 JUMPIFNOT                        R12 ; [+5]
       90 GETUPVAL                         R11 11
       91 GETTABLEKS                       R12 R0 K6 ["ItemData"]
       93 CALL                             R11 1 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R11
       96 GETUPVAL                         R12 12
       97 LOADB                            R13 0
       98 CALL                             R12 1 1
       99 GETUPVAL                         R14 9
      100 CALL                             R14 0 1
      101 JUMPIFNOT                        R14 ; [+3]
      102 GETUPVAL                         R13 13
      103 CALL                             R13 0 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R13
      106 LOADB                            R14 1
      107 GETTABLEKS                       R15 R0 K6 ["ItemData"]
      109 GETTABLEKS                       R15 R15 K10 ["palette"]
      111 GETTABLEKS                       R15 R15 K11 ["Key"]
      113 JUMPIFEQKS                       R15 K12 ["BodyRangeOfMotion"] ; [+20]
      115 LOADB                            R14 1
      116 GETTABLEKS                       R15 R0 K6 ["ItemData"]
      118 GETTABLEKS                       R15 R15 K10 ["palette"]
      120 GETTABLEKS                       R15 R15 K11 ["Key"]
      122 JUMPIFEQKS                       R15 K13 ["Movement"] ; [+11]
      124 GETTABLEKS                       R15 R0 K6 ["ItemData"]
      126 GETTABLEKS                       R15 R15 K10 ["palette"]
      128 GETTABLEKS                       R15 R15 K11 ["Key"]
      130 JUMPIFEQKS                       R15 K14 ["BodyEmotes"] ; [+2]
      132 LOADB                            R14 0 +1
      133 LOADB                            R14 1
      134 GETUPVAL                         R15 14
      135 GETTABLEKS                       R16 R0 K6 ["ItemData"]
      137 CALL                             R15 1 1
      138 GETUPVAL                         R16 2
      139 GETTABLEKS                       R16 R16 K4 ["useCallback"]
      141 NEWCLOSURE                       R17 P3
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U9
      144 CAPTURE                          VAL R5
      145 CAPTURE                          UPVAL U15
      146 CAPTURE                          UPVAL U16
      147 CAPTURE                          UPVAL U17
      148 NEWTABLE                         R18 0 1
      150 GETTABLEKS                       R19 R0 K6 ["ItemData"]
      152 SETLIST                          R18 R19 1 [1]
      154 CALL                             R16 2 1
      155 LOADB                            R17 0
      156 GETTABLEKS                       R19 R3 K15 ["focusedAttachments"]
      158 LENGTH                           R18 R19
      159 JUMPIFEQKNIL                     R18 ; [+48]
      161 GETTABLEKS                       R18 R0 K6 ["ItemData"]
      163 GETTABLEKS                       R18 R18 K16 ["item"]
      165 GETTABLEKS                       R18 R18 K17 ["source"]
      167 JUMPIFNOTEQKS                    R18 K18 ["builtin"] ; [+40]
      169 GETTABLEKS                       R19 R0 K6 ["ItemData"]
      171 GETTABLEKS                       R19 R19 K16 ["item"]
      173 GETTABLEKS                       R19 R19 K19 ["builtinItem"]
      175 FASTCALL1                        TYPEOF R19 ; [+2]
      176 GETIMPORT                        R18 K21 [typeof]
      178 CALL                             R18 1 1
      179 JUMPIFNOTEQKS                    R18 K22 ["number"] ; [+28]
      181 GETUPVAL                         R18 18
      182 GETUPVAL                         R19 19
      183 GETTABLEKS                       R19 R19 K23 ["allItems"]
      185 NEWCLOSURE                       R20 P4
      186 CAPTURE                          VAL R0
      187 CALL                             R18 2 1
      188 LOADB                            R19 0
      189 JUMPIFEQKNIL                     R18 ; [+17]
      191 LOADB                            R19 0
      192 GETTABLEKS                       R20 R18 K24 ["attachment"]
      194 JUMPIFEQKNIL                     R20 ; [+12]
      196 GETIMPORT                        R20 K27 [table.find]
      198 GETTABLEKS                       R21 R3 K15 ["focusedAttachments"]
      200 GETTABLEKS                       R22 R18 K24 ["attachment"]
      202 CALL                             R20 2 1
      203 JUMPIFNOTEQKNIL                  R20 ; [+2]
      205 LOADB                            R19 0 +1
      206 LOADB                            R19 1
      207 MOVE                             R17 R19
      208 GETUPVAL                         R19 9
      209 CALL                             R19 0 1
      210 JUMPIFNOT                        R19 ; [+12]
      211 GETTABLEKS                       R18 R12 K28 ["enabled"]
      213 JUMPIFNOT                        R18 ; [+10]
      214 GETTABLEKS                       R19 R3 K29 ["foundationMenuOpen"]
      216 NOT                              R18 R19
      217 JUMPIFNOT                        R18 ; [+6]
      218 LOADB                            R18 0
      219 JUMPIFEQKNIL                     R9 ; [+4]
      221 NOT                              R18 R14
      222 JUMP                             ; [+1]
      223 LOADNIL                          R18
      224 GETUPVAL                         R20 9
      225 CALL                             R20 0 1
      226 JUMPIFNOT                        R20 ; [+6]
      227 GETUPVAL                         R19 2
      228 GETTABLEKS                       R19 R19 K30 ["useRef"]
      230 LOADNIL                          R20
      231 CALL                             R19 1 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R19
      234 GETUPVAL                         R20 2
      235 GETTABLEKS                       R20 R20 K31 ["createElement"]
      237 GETUPVAL                         R21 20
      238 DUPTABLE                         R22 K38 [{"LayoutOrder", "Size", "OnClick", "Style", "Tooltip", "ref"}]
      239 GETTABLEKS                       R23 R0 K32 ["LayoutOrder"]
      241 SETTABLEKS                       R23 R22 K32 ["LayoutOrder"]
      243 GETTABLEKS                       R23 R0 K33 ["Size"]
      245 SETTABLEKS                       R23 R22 K33 ["Size"]
      247 JUMPIFNOT                        R8 ; [+2]
      248 MOVE                             R23 R7
      249 JUMP                             ; [+1]
      250 MOVE                             R23 R6
      251 SETTABLEKS                       R23 R22 K34 ["OnClick"]
      253 JUMPIFNOT                        R8 ; [+2]
      254 LOADK                            R23 K39 ["RoundActive"]
      255 JUMP                             ; [+4]
      256 JUMPIFNOT                        R17 ; [+2]
      257 LOADK                            R23 K40 ["RoundHighlighted"]
      258 JUMP                             ; [+1]
      259 LOADK                            R23 K41 ["Round"]
      260 SETTABLEKS                       R23 R22 K35 ["Style"]
      262 GETUPVAL                         R24 9
      263 CALL                             R24 0 1
      264 JUMPIFNOT                        R24 ; [+2]
      265 LOADNIL                          R23
      266 JUMP                             ; [+4]
      267 JUMPIF                           R14 ; [+2]
      268 MOVE                             R23 R9
      269 JUMP                             ; [+1]
      270 LOADNIL                          R23
      271 SETTABLEKS                       R23 R22 K36 ["Tooltip"]
      273 GETUPVAL                         R24 9
      274 CALL                             R24 0 1
      275 JUMPIFNOT                        R24 ; [+2]
      276 MOVE                             R23 R19
      277 JUMP                             ; [+1]
      278 LOADNIL                          R23
      279 SETTABLEKS                       R23 R22 K37 ["ref"]
      281 DUPTABLE                         R23 K45 [{"Contents", "ItemName", "PopoverTooltip"}]
      282 GETUPVAL                         R24 2
      283 GETTABLEKS                       R24 R24 K31 ["createElement"]
      285 GETUPVAL                         R25 21
      286 NEWTABLE                         R26 4 0
      288 GETUPVAL                         R27 2
      289 GETTABLEKS                       R27 R27 K46 ["Event"]
      291 GETTABLEKS                       R27 R27 K47 ["InputBegan"]
      293 SETTABLE                         R16 R26 R27
      294 GETUPVAL                         R27 2
      295 GETTABLEKS                       R27 R27 K46 ["Event"]
      297 GETTABLEKS                       R27 R27 K48 ["MouseEnter"]
      299 GETTABLEKS                       R28 R12 K49 ["enable"]
      301 SETTABLE                         R28 R26 R27
      302 GETUPVAL                         R27 2
      303 GETTABLEKS                       R27 R27 K46 ["Event"]
      305 GETTABLEKS                       R27 R27 K50 ["MouseLeave"]
      307 GETTABLEKS                       R28 R12 K51 ["disable"]
      309 SETTABLE                         R28 R26 R27
      310 GETTABLEKS                       R27 R2 K52 ["Padding"]
      312 SETTABLEKS                       R27 R26 K52 ["Padding"]
      314 DUPTABLE                         R27 K58 [{"Preview", "HoverX", "AccessoryTypeImage", "UserImage", "CreatorImage"}]
      315 GETUPVAL                         R28 2
      316 GETTABLEKS                       R28 R28 K31 ["createElement"]
      318 GETUPVAL                         R29 22
      319 DUPTABLE                         R30 K60 [{"ItemData", "Selected"}]
      320 GETTABLEKS                       R31 R0 K6 ["ItemData"]
      322 SETTABLEKS                       R31 R30 K6 ["ItemData"]
      324 SETTABLEKS                       R8 R30 K59 ["Selected"]
      326 CALL                             R28 2 1
      327 SETTABLEKS                       R28 R27 K53 ["Preview"]
      329 LOADB                            R28 0
      330 GETTABLEKS                       R29 R0 K61 ["Delete"]
      332 JUMPIFEQKNIL                     R29 ; [+68]
      334 GETTABLEKS                       R28 R12 K28 ["enabled"]
      336 JUMPIFNOT                        R28 ; [+64]
      337 GETUPVAL                         R28 2
      338 GETTABLEKS                       R28 R28 K31 ["createElement"]
      340 GETUPVAL                         R29 21
      341 DUPTABLE                         R30 K64 [{"AnchorPoint", "Position", "Size"}]
      342 GETTABLEKS                       R31 R2 K54 ["HoverX"]
      344 GETTABLEKS                       R31 R31 K62 ["AnchorPoint"]
      346 SETTABLEKS                       R31 R30 K62 ["AnchorPoint"]
      348 GETTABLEKS                       R31 R2 K54 ["HoverX"]
      350 GETTABLEKS                       R31 R31 K63 ["Position"]
      352 SETTABLEKS                       R31 R30 K63 ["Position"]
      354 GETTABLEKS                       R31 R2 K54 ["HoverX"]
      356 GETTABLEKS                       R31 R31 K33 ["Size"]
      358 SETTABLEKS                       R31 R30 K33 ["Size"]
      360 DUPTABLE                         R31 K66 [{"RemoveButton"}]
      361 GETUPVAL                         R32 2
      362 GETTABLEKS                       R32 R32 K31 ["createElement"]
      364 GETUPVAL                         R33 20
      365 DUPTABLE                         R34 K68 [{"StyleModifier", "OnClick"}]
      366 GETUPVAL                         R35 23
      367 GETTABLEKS                       R35 R35 K69 ["Hover"]
      369 SETTABLEKS                       R35 R34 K67 ["StyleModifier"]
      371 GETTABLEKS                       R35 R0 K61 ["Delete"]
      373 SETTABLEKS                       R35 R34 K34 ["OnClick"]
      375 DUPTABLE                         R35 K70 [{"HoverX"}]
      376 GETUPVAL                         R36 2
      377 GETTABLEKS                       R36 R36 K31 ["createElement"]
      379 GETUPVAL                         R37 24
      380 DUPTABLE                         R38 K72 [{"Image", "Size"}]
      381 GETTABLEKS                       R39 R2 K54 ["HoverX"]
      383 GETTABLEKS                       R39 R39 K71 ["Image"]
      385 SETTABLEKS                       R39 R38 K71 ["Image"]
      387 GETIMPORT                        R39 K75 [UDim2.fromScale]
      389 LOADN                            R40 1
      390 LOADN                            R41 1
      391 CALL                             R39 2 1
      392 SETTABLEKS                       R39 R38 K33 ["Size"]
      394 CALL                             R36 2 1
      395 SETTABLEKS                       R36 R35 K54 ["HoverX"]
      397 CALL                             R32 3 1
      398 SETTABLEKS                       R32 R31 K65 ["RemoveButton"]
      400 CALL                             R28 3 1
      401 SETTABLEKS                       R28 R27 K54 ["HoverX"]
      403 LOADB                            R28 0
      404 JUMPIFEQKNIL                     R15 ; [+60]
      406 GETUPVAL                         R28 2
      407 GETTABLEKS                       R28 R28 K31 ["createElement"]
      409 GETUPVAL                         R29 21
      410 DUPTABLE                         R30 K64 [{"AnchorPoint", "Position", "Size"}]
      411 GETTABLEKS                       R31 R2 K55 ["AccessoryTypeImage"]
      413 GETTABLEKS                       R31 R31 K62 ["AnchorPoint"]
      415 SETTABLEKS                       R31 R30 K62 ["AnchorPoint"]
      417 GETTABLEKS                       R31 R2 K55 ["AccessoryTypeImage"]
      419 GETTABLEKS                       R31 R31 K63 ["Position"]
      421 SETTABLEKS                       R31 R30 K63 ["Position"]
      423 GETTABLEKS                       R31 R2 K55 ["AccessoryTypeImage"]
      425 GETTABLEKS                       R31 R31 K33 ["Size"]
      427 SETTABLEKS                       R31 R30 K33 ["Size"]
      429 DUPTABLE                         R31 K76 [{"Image"}]
      430 GETUPVAL                         R32 2
      431 GETTABLEKS                       R32 R32 K31 ["createElement"]
      433 GETUPVAL                         R33 24
      434 DUPTABLE                         R34 K78 [{"Image", "ImageColor3", "Size"}]
      435 JUMPIFNOTEQKS                    R15 K79 ["layered"] ; [+6]
      437 GETTABLEKS                       R35 R2 K55 ["AccessoryTypeImage"]
      439 GETTABLEKS                       R35 R35 K80 ["LayeredImage"]
      441 JUMP                             ; [+4]
      442 GETTABLEKS                       R35 R2 K55 ["AccessoryTypeImage"]
      444 GETTABLEKS                       R35 R35 K81 ["RigidImage"]
      446 SETTABLEKS                       R35 R34 K71 ["Image"]
      448 GETTABLEKS                       R35 R2 K55 ["AccessoryTypeImage"]
      450 GETTABLEKS                       R35 R35 K82 ["Color"]
      452 SETTABLEKS                       R35 R34 K77 ["ImageColor3"]
      454 GETIMPORT                        R35 K75 [UDim2.fromScale]
      456 LOADN                            R36 1
      457 LOADN                            R37 1
      458 CALL                             R35 2 1
      459 SETTABLEKS                       R35 R34 K33 ["Size"]
      461 CALL                             R32 2 1
      462 SETTABLEKS                       R32 R31 K71 ["Image"]
      464 CALL                             R28 3 1
      465 SETTABLEKS                       R28 R27 K55 ["AccessoryTypeImage"]
      467 GETUPVAL                         R29 9
      468 CALL                             R29 0 1
      469 NOT                              R28 R29
      470 JUMPIFNOT                        R28 ; [+63]
      471 GETTABLEKS                       R28 R0 K83 ["IsUserProvided"]
      473 JUMPIFNOT                        R28 ; [+60]
      474 GETUPVAL                         R28 2
      475 GETTABLEKS                       R28 R28 K31 ["createElement"]
      477 GETUPVAL                         R29 21
      478 DUPTABLE                         R30 K85 [{"AnchorPoint", "Position", "Size", "ZIndex"}]
      479 GETTABLEKS                       R31 R2 K56 ["UserImage"]
      481 GETTABLEKS                       R31 R31 K62 ["AnchorPoint"]
      483 SETTABLEKS                       R31 R30 K62 ["AnchorPoint"]
      485 GETTABLEKS                       R31 R2 K56 ["UserImage"]
      487 GETTABLEKS                       R31 R31 K63 ["Position"]
      489 SETTABLEKS                       R31 R30 K63 ["Position"]
      491 GETTABLEKS                       R31 R2 K56 ["UserImage"]
      493 GETTABLEKS                       R31 R31 K33 ["Size"]
      495 SETTABLEKS                       R31 R30 K33 ["Size"]
      497 GETUPVAL                         R32 25
      498 CALL                             R32 0 1
      499 JUMPIFNOT                        R32 ; [+2]
      500 LOADN                            R31 100
      501 JUMP                             ; [+1]
      502 LOADNIL                          R31
      503 SETTABLEKS                       R31 R30 K84 ["ZIndex"]
      505 DUPTABLE                         R31 K86 [{"UserImage"}]
      506 GETUPVAL                         R32 2
      507 GETTABLEKS                       R32 R32 K31 ["createElement"]
      509 GETUPVAL                         R33 24
      510 DUPTABLE                         R34 K78 [{"Image", "ImageColor3", "Size"}]
      511 GETTABLEKS                       R35 R2 K56 ["UserImage"]
      513 GETTABLEKS                       R35 R35 K71 ["Image"]
      515 SETTABLEKS                       R35 R34 K71 ["Image"]
      517 GETTABLEKS                       R35 R2 K56 ["UserImage"]
      519 GETTABLEKS                       R35 R35 K82 ["Color"]
      521 SETTABLEKS                       R35 R34 K77 ["ImageColor3"]
      523 GETIMPORT                        R35 K75 [UDim2.fromScale]
      525 LOADN                            R36 1
      526 LOADN                            R37 1
      527 CALL                             R35 2 1
      528 SETTABLEKS                       R35 R34 K33 ["Size"]
      530 CALL                             R32 2 1
      531 SETTABLEKS                       R32 R31 K56 ["UserImage"]
      533 CALL                             R28 3 1
      534 SETTABLEKS                       R28 R27 K56 ["UserImage"]
      536 GETUPVAL                         R28 9
      537 CALL                             R28 0 1
      538 JUMPIFNOT                        R28 ; [+44]
      539 GETTABLEKS                       R28 R0 K83 ["IsUserProvided"]
      541 JUMPIFNOT                        R28 ; [+41]
      542 GETUPVAL                         R28 2
      543 GETTABLEKS                       R28 R28 K31 ["createElement"]
      545 GETUPVAL                         R29 26
      546 DUPTABLE                         R30 K89 [{["ZIndex"], ["tag"] = "position-bottom-right anchor-bottom-right size-full-full padding-xsmall"}]
      547 GETUPVAL                         R32 25
      548 CALL                             R32 0 1
      549 JUMPIFNOT                        R32 ; [+2]
      550 LOADN                            R31 100
      551 JUMP                             ; [+1]
      552 LOADNIL                          R31
      553 SETTABLEKS                       R31 R30 K84 ["ZIndex"]
      555 DUPTABLE                         R31 K91 [{"UserImageBackground"}]
      556 GETUPVAL                         R32 2
      557 GETTABLEKS                       R32 R32 K31 ["createElement"]
      559 GETUPVAL                         R33 26
      560 DUPTABLE                         R34 K93 [{["tag"] = "position-bottom-right anchor-bottom-right size-500-500 radius-circle bg-surface-0"}]
      561 DUPTABLE                         R35 K86 [{"UserImage"}]
      562 GETUPVAL                         R36 2
      563 GETTABLEKS                       R36 R36 K31 ["createElement"]
      565 GETUPVAL                         R37 27
      566 DUPTABLE                         R38 K95 [{["Image"], ["Size"], ["tag"] = "radius-circle"}]
      567 SETTABLEKS                       R11 R38 K71 ["Image"]
      569 GETIMPORT                        R39 K75 [UDim2.fromScale]
      571 LOADN                            R40 1
      572 LOADN                            R41 1
      573 CALL                             R39 2 1
      574 SETTABLEKS                       R39 R38 K33 ["Size"]
      576 CALL                             R36 2 1
      577 SETTABLEKS                       R36 R35 K56 ["UserImage"]
      579 CALL                             R32 3 1
      580 SETTABLEKS                       R32 R31 K90 ["UserImageBackground"]
      582 CALL                             R28 3 1
      583 SETTABLEKS                       R28 R27 K57 ["CreatorImage"]
      585 CALL                             R24 3 1
      586 SETTABLEKS                       R24 R23 K42 ["Contents"]
      588 JUMPIFNOT                        R9 ; [+43]
      589 JUMPIFNOT                        R14 ; [+42]
      590 GETUPVAL                         R24 2
      591 GETTABLEKS                       R24 R24 K31 ["createElement"]
      593 GETUPVAL                         R25 28
      594 DUPTABLE                         R26 K102 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["ZIndex"] = 2}]
      595 SETTABLEKS                       R9 R26 K96 ["Text"]
      597 GETIMPORT                        R27 K105 [Enum.TextXAlignment.Left]
      599 SETTABLEKS                       R27 R26 K99 ["TextXAlignment"]
      601 GETIMPORT                        R27 K107 [Enum.TextYAlignment.Bottom]
      603 SETTABLEKS                       R27 R26 K100 ["TextYAlignment"]
      605 DUPTABLE                         R27 K108 [{"Padding"}]
      606 GETUPVAL                         R28 2
      607 GETTABLEKS                       R28 R28 K31 ["createElement"]
      609 LOADK                            R29 K109 ["UIPadding"]
      610 DUPTABLE                         R30 K114 [{"PaddingLeft", "PaddingBottom", "PaddingRight", "PaddingTop"}]
      611 GETTABLEKS                       R31 R2 K115 ["TextLabelPadding"]
      613 SETTABLEKS                       R31 R30 K110 ["PaddingLeft"]
      615 GETTABLEKS                       R31 R2 K115 ["TextLabelPadding"]
      617 SETTABLEKS                       R31 R30 K111 ["PaddingBottom"]
      619 GETTABLEKS                       R31 R2 K115 ["TextLabelPadding"]
      621 SETTABLEKS                       R31 R30 K112 ["PaddingRight"]
      623 GETTABLEKS                       R31 R2 K115 ["TextLabelPadding"]
      625 SETTABLEKS                       R31 R30 K113 ["PaddingTop"]
      627 CALL                             R28 2 1
      628 SETTABLEKS                       R28 R27 K52 ["Padding"]
      630 CALL                             R24 3 1
      631 JUMP                             ; [+1]
      632 LOADNIL                          R24
      633 SETTABLEKS                       R24 R23 K43 ["ItemName"]
      635 GETUPVAL                         R24 9
      636 CALL                             R24 0 1
      637 JUMPIFNOT                        R24 ; [+93]
      638 GETUPVAL                         R24 2
      639 GETTABLEKS                       R24 R24 K31 ["createElement"]
      641 GETUPVAL                         R25 29
      642 GETTABLEKS                       R25 R25 K116 ["Root"]
      644 DUPTABLE                         R26 K118 [{"isOpen"}]
      645 SETTABLEKS                       R18 R26 K117 ["isOpen"]
      647 DUPTABLE                         R27 K121 [{"Anchor", "Content"}]
      648 GETUPVAL                         R28 2
      649 GETTABLEKS                       R28 R28 K31 ["createElement"]
      651 GETUPVAL                         R29 29
      652 GETTABLEKS                       R29 R29 K119 ["Anchor"]
      654 DUPTABLE                         R30 K123 [{"anchorRef"}]
      655 SETTABLEKS                       R19 R30 K122 ["anchorRef"]
      657 CALL                             R28 2 1
      658 SETTABLEKS                       R28 R27 K119 ["Anchor"]
      660 MOVE                             R28 R18
      661 JUMPIFNOT                        R28 ; [+66]
      662 GETUPVAL                         R28 2
      663 GETTABLEKS                       R28 R28 K31 ["createElement"]
      665 GETUPVAL                         R29 29
      666 GETTABLEKS                       R29 R29 K120 ["Content"]
      668 DUPTABLE                         R30 K128 [{["hasArrow"] = False, ["side"], ["align"]}]
      669 DUPTABLE                         R31 K132 [{["position"], ["offset"] = 4}]
      670 GETUPVAL                         R32 30
      671 GETTABLEKS                       R32 R32 K133 ["Right"]
      673 SETTABLEKS                       R32 R31 K129 ["position"]
      675 SETTABLEKS                       R31 R30 K126 ["side"]
      677 GETUPVAL                         R31 31
      678 GETTABLEKS                       R31 R31 K134 ["Start"]
      680 SETTABLEKS                       R31 R30 K127 ["align"]
      682 DUPTABLE                         R31 K136 [{"TooltipBody"}]
      683 GETUPVAL                         R32 2
      684 GETTABLEKS                       R32 R32 K31 ["createElement"]
      686 GETUPVAL                         R33 26
      687 DUPTABLE                         R34 K139 [{["backgroundStyle"], ["tag"] = "col gap-xsmall auto-xy padding-x-medium padding-y-small radius-small"}]
      688 GETTABLEKS                       R35 R13 K140 ["Inverse"]
      690 GETTABLEKS                       R35 R35 K141 ["Surface"]
      692 GETTABLEKS                       R35 R35 K142 ["Surface_0"]
      694 SETTABLEKS                       R35 R34 K137 ["backgroundStyle"]
      696 DUPTABLE                         R35 K145 [{"Title", "Description"}]
      697 MOVE                             R36 R9
      698 JUMPIFNOT                        R36 ; [+8]
      699 GETUPVAL                         R36 2
      700 GETTABLEKS                       R36 R36 K31 ["createElement"]
      702 GETUPVAL                         R37 32
      703 DUPTABLE                         R38 K148 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      704 SETTABLEKS                       R9 R38 K96 ["Text"]
      706 CALL                             R36 2 1
      707 SETTABLEKS                       R36 R35 K143 ["Title"]
      709 MOVE                             R36 R10
      710 JUMPIFNOT                        R36 ; [+11]
      711 LOADB                            R36 0
      712 JUMPIFEQKS                       R10 K149 [""] ; [+9]
      714 GETUPVAL                         R36 2
      715 GETTABLEKS                       R36 R36 K31 ["createElement"]
      717 GETUPVAL                         R37 32
      718 DUPTABLE                         R38 K151 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-inverse-default"}]
      719 SETTABLEKS                       R10 R38 K96 ["Text"]
      721 CALL                             R36 2 1
      722 SETTABLEKS                       R36 R35 K144 ["Description"]
      724 CALL                             R32 3 1
      725 SETTABLEKS                       R32 R31 K135 ["TooltipBody"]
      727 CALL                             R28 3 1
      728 SETTABLEKS                       R28 R27 K120 ["Content"]
      730 CALL                             R24 3 1
      731 SETTABLEKS                       R24 R23 K44 ["PopoverTooltip"]
      733 CALL                             R20 3 -1
      734 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Components"]
       40 GETTABLEKS                       R6 R6 K16 ["AvatarScreenContext"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K14 ["Src"]
       47 GETTABLEKS                       R7 R7 K17 ["Resources"]
       49 GETTABLEKS                       R7 R7 K18 ["BuiltinItems"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K14 ["Src"]
       56 GETTABLEKS                       R8 R8 K15 ["Components"]
       58 GETTABLEKS                       R8 R8 K19 ["ItemDataPreview"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K14 ["Src"]
       65 GETTABLEKS                       R9 R9 K20 ["Util"]
       67 GETTABLEKS                       R9 R9 K21 ["EquipmentStateContext"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R1 K14 ["Src"]
       74 GETTABLEKS                       R10 R10 K20 ["Util"]
       76 GETTABLEKS                       R10 R10 K22 ["equippedItemDataEquals"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R1 K14 ["Src"]
       83 GETTABLEKS                       R11 R11 K20 ["Util"]
       85 GETTABLEKS                       R11 R11 K23 ["find"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R12 R1 K14 ["Src"]
       92 GETTABLEKS                       R12 R12 K20 ["Util"]
       94 GETTABLEKS                       R12 R12 K24 ["getItemAccessoryType"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R13 R1 K14 ["Src"]
      101 GETTABLEKS                       R13 R13 K25 ["Hooks"]
      103 GETTABLEKS                       R13 R13 K26 ["useCreatorName"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K9 [require]
      108 GETTABLEKS                       R14 R1 K14 ["Src"]
      110 GETTABLEKS                       R14 R14 K25 ["Hooks"]
      112 GETTABLEKS                       R14 R14 K27 ["useIconThumbnail"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K9 [require]
      117 GETTABLEKS                       R15 R1 K14 ["Src"]
      119 GETTABLEKS                       R15 R15 K25 ["Hooks"]
      121 GETTABLEKS                       R15 R15 K28 ["useItemName"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K9 [require]
      126 GETTABLEKS                       R16 R1 K14 ["Src"]
      128 GETTABLEKS                       R16 R16 K25 ["Hooks"]
      130 GETTABLEKS                       R16 R16 K29 ["useToggleState"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K9 [require]
      135 GETTABLEKS                       R17 R1 K10 ["Packages"]
      137 GETTABLEKS                       R17 R17 K30 ["Foundation"]
      139 CALL                             R16 1 1
      140 GETTABLEKS                       R17 R16 K31 ["Popover"]
      142 GETTABLEKS                       R18 R16 K32 ["Text"]
      144 GETTABLEKS                       R19 R16 K33 ["View"]
      146 GETTABLEKS                       R20 R16 K25 ["Hooks"]
      148 GETTABLEKS                       R20 R20 K34 ["useTokens"]
      150 GETTABLEKS                       R21 R16 K35 ["Image"]
      152 GETTABLEKS                       R22 R16 K36 ["Enums"]
      154 GETTABLEKS                       R22 R22 K37 ["PopoverSide"]
      156 GETTABLEKS                       R23 R16 K36 ["Enums"]
      158 GETTABLEKS                       R23 R23 K38 ["PopoverAlign"]
      160 GETIMPORT                        R24 K9 [require]
      162 GETTABLEKS                       R25 R1 K14 ["Src"]
      164 GETTABLEKS                       R25 R25 K39 ["Flags"]
      166 GETTABLEKS                       R25 R25 K40 ["getFFlagAvatarPreviewerLookComposer"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K9 [require]
      171 GETTABLEKS                       R26 R1 K14 ["Src"]
      173 GETTABLEKS                       R26 R26 K39 ["Flags"]
      175 GETTABLEKS                       R26 R26 K41 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
      177 CALL                             R25 1 1
      178 GETIMPORT                        R26 K9 [require]
      180 GETTABLEKS                       R27 R1 K14 ["Src"]
      182 GETTABLEKS                       R27 R27 K17 ["Resources"]
      184 GETTABLEKS                       R27 R27 K42 ["Theme"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K9 [require]
      189 GETTABLEKS                       R28 R1 K14 ["Src"]
      191 GETTABLEKS                       R28 R28 K43 ["Types"]
      193 CALL                             R27 1 1
      194 GETTABLEKS                       R28 R3 K44 ["UI"]
      196 GETTABLEKS                       R29 R28 K45 ["Button"]
      198 GETTABLEKS                       R30 R28 K35 ["Image"]
      200 GETTABLEKS                       R31 R28 K46 ["TextLabel"]
      202 GETTABLEKS                       R32 R28 K47 ["Pane"]
      204 GETTABLEKS                       R33 R28 K48 ["showContextMenu"]
      206 GETTABLEKS                       R34 R3 K49 ["ContextServices"]
      208 GETTABLEKS                       R34 R34 K50 ["Analytics"]
      210 GETTABLEKS                       R35 R3 K49 ["ContextServices"]
      212 GETTABLEKS                       R35 R35 K51 ["Localization"]
      214 GETTABLEKS                       R36 R3 K20 ["Util"]
      216 GETTABLEKS                       R36 R36 K52 ["StyleModifier"]
      218 GETTABLEKS                       R37 R3 K49 ["ContextServices"]
      220 GETTABLEKS                       R37 R37 K53 ["Stylizer"]
      222 DUPCLOSURE                       R38 K54 [PROTO_1]
      223 CAPTURE                          VAL R11
      224 DUPCLOSURE                       R39 K55 [PROTO_9]
      225 CAPTURE                          VAL R34
      226 CAPTURE                          VAL R37
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R35
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R12
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R20
      239 CAPTURE                          VAL R38
      240 CAPTURE                          VAL R0
      241 CAPTURE                          VAL R33
      242 CAPTURE                          VAL R1
      243 CAPTURE                          VAL R10
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R29
      246 CAPTURE                          VAL R32
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R36
      249 CAPTURE                          VAL R30
      250 CAPTURE                          VAL R24
      251 CAPTURE                          VAL R19
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R31
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R22
      256 CAPTURE                          VAL R23
      257 CAPTURE                          VAL R18
      258 RETURN                           R39 1
