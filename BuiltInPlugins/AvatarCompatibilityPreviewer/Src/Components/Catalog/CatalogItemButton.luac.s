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
        9 GETUPVAL                         R4 2
       10 JUMPIF                           R4 ; [+3]
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+8]
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R3 R3 K2 ["useContext"]
       17 GETUPVAL                         R4 5
       18 GETTABLEKS                       R4 R4 K3 ["Context"]
       20 CALL                             R3 1 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K2 ["useContext"]
       26 GETUPVAL                         R5 6
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 7
       29 NAMECALL                         R5 R5 K0 ["use"]
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R8 0 2
       41 GETTABLEKS                       R9 R4 K5 ["addEquippedItem"]
       43 GETTABLEKS                       R10 R0 K6 ["ItemData"]
       45 SETLIST                          R8 R9 2 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 4
       49 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R4
       55 NEWTABLE                         R9 0 2
       57 GETTABLEKS                       R10 R4 K7 ["removeEquippedItem"]
       59 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       61 SETLIST                          R9 R10 2 [1]
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 4
       65 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       67 NEWCLOSURE                       R9 P2
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          VAL R4
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R0
       72 NEWTABLE                         R10 0 2
       74 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       76 GETTABLEKS                       R12 R4 K9 ["equippedItems"]
       78 SETLIST                          R10 R11 2 [1]
       80 CALL                             R8 2 1
       81 GETUPVAL                         R9 10
       82 GETTABLEKS                       R10 R0 K6 ["ItemData"]
       84 CALL                             R9 1 1
       85 GETUPVAL                         R11 3
       86 CALL                             R11 0 1
       87 JUMPIFNOT                        R11 ; [+5]
       88 GETUPVAL                         R10 11
       89 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       91 CALL                             R10 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R10
       94 GETUPVAL                         R12 3
       95 CALL                             R12 0 1
       96 JUMPIFNOT                        R12 ; [+5]
       97 GETUPVAL                         R11 12
       98 GETTABLEKS                       R12 R0 K6 ["ItemData"]
      100 CALL                             R11 1 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R11
      103 GETUPVAL                         R12 13
      104 LOADB                            R13 0
      105 CALL                             R12 1 1
      106 GETUPVAL                         R14 3
      107 CALL                             R14 0 1
      108 JUMPIFNOT                        R14 ; [+3]
      109 GETUPVAL                         R13 14
      110 CALL                             R13 0 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R13
      113 LOADB                            R14 1
      114 GETTABLEKS                       R15 R0 K6 ["ItemData"]
      116 GETTABLEKS                       R15 R15 K10 ["palette"]
      118 GETTABLEKS                       R15 R15 K11 ["Key"]
      120 JUMPIFEQKS                       R15 K12 ["BodyRangeOfMotion"] ; [+20]
      122 LOADB                            R14 1
      123 GETTABLEKS                       R15 R0 K6 ["ItemData"]
      125 GETTABLEKS                       R15 R15 K10 ["palette"]
      127 GETTABLEKS                       R15 R15 K11 ["Key"]
      129 JUMPIFEQKS                       R15 K13 ["Movement"] ; [+11]
      131 GETTABLEKS                       R15 R0 K6 ["ItemData"]
      133 GETTABLEKS                       R15 R15 K10 ["palette"]
      135 GETTABLEKS                       R15 R15 K11 ["Key"]
      137 JUMPIFEQKS                       R15 K14 ["BodyEmotes"] ; [+2]
      139 LOADB                            R14 0 +1
      140 LOADB                            R14 1
      141 GETUPVAL                         R15 15
      142 GETTABLEKS                       R16 R0 K6 ["ItemData"]
      144 CALL                             R15 1 1
      145 GETUPVAL                         R16 4
      146 GETTABLEKS                       R16 R16 K4 ["useCallback"]
      148 NEWCLOSURE                       R17 P3
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U3
      151 CAPTURE                          VAL R5
      152 CAPTURE                          UPVAL U16
      153 CAPTURE                          UPVAL U17
      154 CAPTURE                          UPVAL U18
      155 NEWTABLE                         R18 0 1
      157 GETTABLEKS                       R19 R0 K6 ["ItemData"]
      159 SETLIST                          R18 R19 1 [1]
      161 CALL                             R16 2 1
      162 LOADB                            R17 0
      163 GETUPVAL                         R18 2
      164 JUMPIFNOT                        R18 ; [+52]
      165 GETTABLEKS                       R19 R3 K15 ["focusedAttachments"]
      167 LENGTH                           R18 R19
      168 JUMPIFEQKNIL                     R18 ; [+48]
      170 GETTABLEKS                       R18 R0 K6 ["ItemData"]
      172 GETTABLEKS                       R18 R18 K16 ["item"]
      174 GETTABLEKS                       R18 R18 K17 ["source"]
      176 JUMPIFNOTEQKS                    R18 K18 ["builtin"] ; [+40]
      178 GETTABLEKS                       R19 R0 K6 ["ItemData"]
      180 GETTABLEKS                       R19 R19 K16 ["item"]
      182 GETTABLEKS                       R19 R19 K19 ["builtinItem"]
      184 FASTCALL1                        TYPEOF R19 ; [+2]
      185 GETIMPORT                        R18 K21 [typeof]
      187 CALL                             R18 1 1
      188 JUMPIFNOTEQKS                    R18 K22 ["number"] ; [+28]
      190 GETUPVAL                         R18 19
      191 GETUPVAL                         R19 20
      192 GETTABLEKS                       R19 R19 K23 ["allItems"]
      194 NEWCLOSURE                       R20 P4
      195 CAPTURE                          VAL R0
      196 CALL                             R18 2 1
      197 LOADB                            R19 0
      198 JUMPIFEQKNIL                     R18 ; [+17]
      200 LOADB                            R19 0
      201 GETTABLEKS                       R20 R18 K24 ["attachment"]
      203 JUMPIFEQKNIL                     R20 ; [+12]
      205 GETIMPORT                        R20 K27 [table.find]
      207 GETTABLEKS                       R21 R3 K15 ["focusedAttachments"]
      209 GETTABLEKS                       R22 R18 K24 ["attachment"]
      211 CALL                             R20 2 1
      212 JUMPIFNOTEQKNIL                  R20 ; [+2]
      214 LOADB                            R19 0 +1
      215 LOADB                            R19 1
      216 MOVE                             R17 R19
      217 GETUPVAL                         R19 3
      218 CALL                             R19 0 1
      219 JUMPIFNOT                        R19 ; [+12]
      220 GETTABLEKS                       R18 R12 K28 ["enabled"]
      222 JUMPIFNOT                        R18 ; [+10]
      223 GETTABLEKS                       R19 R3 K29 ["foundationMenuOpen"]
      225 NOT                              R18 R19
      226 JUMPIFNOT                        R18 ; [+6]
      227 LOADB                            R18 0
      228 JUMPIFEQKNIL                     R9 ; [+4]
      230 NOT                              R18 R14
      231 JUMP                             ; [+1]
      232 LOADNIL                          R18
      233 GETUPVAL                         R20 3
      234 CALL                             R20 0 1
      235 JUMPIFNOT                        R20 ; [+6]
      236 GETUPVAL                         R19 4
      237 GETTABLEKS                       R19 R19 K30 ["useRef"]
      239 LOADNIL                          R20
      240 CALL                             R19 1 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R19
      243 GETUPVAL                         R20 4
      244 GETTABLEKS                       R20 R20 K31 ["createElement"]
      246 GETUPVAL                         R21 21
      247 DUPTABLE                         R22 K38 [{"LayoutOrder", "Size", "OnClick", "Style", "Tooltip", "ref"}]
      248 GETTABLEKS                       R23 R0 K32 ["LayoutOrder"]
      250 SETTABLEKS                       R23 R22 K32 ["LayoutOrder"]
      252 GETTABLEKS                       R23 R0 K33 ["Size"]
      254 SETTABLEKS                       R23 R22 K33 ["Size"]
      256 JUMPIFNOT                        R8 ; [+2]
      257 MOVE                             R23 R7
      258 JUMP                             ; [+1]
      259 MOVE                             R23 R6
      260 SETTABLEKS                       R23 R22 K34 ["OnClick"]
      262 JUMPIFNOT                        R8 ; [+2]
      263 LOADK                            R23 K39 ["RoundActive"]
      264 JUMP                             ; [+4]
      265 JUMPIFNOT                        R17 ; [+2]
      266 LOADK                            R23 K40 ["RoundHighlighted"]
      267 JUMP                             ; [+1]
      268 LOADK                            R23 K41 ["Round"]
      269 SETTABLEKS                       R23 R22 K35 ["Style"]
      271 GETUPVAL                         R24 3
      272 CALL                             R24 0 1
      273 JUMPIFNOT                        R24 ; [+2]
      274 LOADNIL                          R23
      275 JUMP                             ; [+4]
      276 JUMPIF                           R14 ; [+2]
      277 MOVE                             R23 R9
      278 JUMP                             ; [+1]
      279 LOADNIL                          R23
      280 SETTABLEKS                       R23 R22 K36 ["Tooltip"]
      282 GETUPVAL                         R24 3
      283 CALL                             R24 0 1
      284 JUMPIFNOT                        R24 ; [+2]
      285 MOVE                             R23 R19
      286 JUMP                             ; [+1]
      287 LOADNIL                          R23
      288 SETTABLEKS                       R23 R22 K37 ["ref"]
      290 DUPTABLE                         R23 K45 [{"Contents", "ItemName", "PopoverTooltip"}]
      291 GETUPVAL                         R24 4
      292 GETTABLEKS                       R24 R24 K31 ["createElement"]
      294 GETUPVAL                         R25 22
      295 NEWTABLE                         R26 4 0
      297 GETUPVAL                         R27 4
      298 GETTABLEKS                       R27 R27 K46 ["Event"]
      300 GETTABLEKS                       R27 R27 K47 ["InputBegan"]
      302 SETTABLE                         R16 R26 R27
      303 GETUPVAL                         R27 4
      304 GETTABLEKS                       R27 R27 K46 ["Event"]
      306 GETTABLEKS                       R27 R27 K48 ["MouseEnter"]
      308 GETTABLEKS                       R28 R12 K49 ["enable"]
      310 SETTABLE                         R28 R26 R27
      311 GETUPVAL                         R27 4
      312 GETTABLEKS                       R27 R27 K46 ["Event"]
      314 GETTABLEKS                       R27 R27 K50 ["MouseLeave"]
      316 GETTABLEKS                       R28 R12 K51 ["disable"]
      318 SETTABLE                         R28 R26 R27
      319 GETTABLEKS                       R27 R2 K52 ["Padding"]
      321 SETTABLEKS                       R27 R26 K52 ["Padding"]
      323 DUPTABLE                         R27 K58 [{"Preview", "HoverX", "AccessoryTypeImage", "UserImage", "CreatorImage"}]
      324 GETUPVAL                         R28 4
      325 GETTABLEKS                       R28 R28 K31 ["createElement"]
      327 GETUPVAL                         R29 23
      328 DUPTABLE                         R30 K60 [{"ItemData", "Selected"}]
      329 GETTABLEKS                       R31 R0 K6 ["ItemData"]
      331 SETTABLEKS                       R31 R30 K6 ["ItemData"]
      333 SETTABLEKS                       R8 R30 K59 ["Selected"]
      335 CALL                             R28 2 1
      336 SETTABLEKS                       R28 R27 K53 ["Preview"]
      338 LOADB                            R28 0
      339 GETTABLEKS                       R29 R0 K61 ["Delete"]
      341 JUMPIFEQKNIL                     R29 ; [+68]
      343 GETTABLEKS                       R28 R12 K28 ["enabled"]
      345 JUMPIFNOT                        R28 ; [+64]
      346 GETUPVAL                         R28 4
      347 GETTABLEKS                       R28 R28 K31 ["createElement"]
      349 GETUPVAL                         R29 22
      350 DUPTABLE                         R30 K64 [{"AnchorPoint", "Position", "Size"}]
      351 GETTABLEKS                       R31 R2 K54 ["HoverX"]
      353 GETTABLEKS                       R31 R31 K62 ["AnchorPoint"]
      355 SETTABLEKS                       R31 R30 K62 ["AnchorPoint"]
      357 GETTABLEKS                       R31 R2 K54 ["HoverX"]
      359 GETTABLEKS                       R31 R31 K63 ["Position"]
      361 SETTABLEKS                       R31 R30 K63 ["Position"]
      363 GETTABLEKS                       R31 R2 K54 ["HoverX"]
      365 GETTABLEKS                       R31 R31 K33 ["Size"]
      367 SETTABLEKS                       R31 R30 K33 ["Size"]
      369 DUPTABLE                         R31 K66 [{"RemoveButton"}]
      370 GETUPVAL                         R32 4
      371 GETTABLEKS                       R32 R32 K31 ["createElement"]
      373 GETUPVAL                         R33 21
      374 DUPTABLE                         R34 K68 [{"StyleModifier", "OnClick"}]
      375 GETUPVAL                         R35 24
      376 GETTABLEKS                       R35 R35 K69 ["Hover"]
      378 SETTABLEKS                       R35 R34 K67 ["StyleModifier"]
      380 GETTABLEKS                       R35 R0 K61 ["Delete"]
      382 SETTABLEKS                       R35 R34 K34 ["OnClick"]
      384 DUPTABLE                         R35 K70 [{"HoverX"}]
      385 GETUPVAL                         R36 4
      386 GETTABLEKS                       R36 R36 K31 ["createElement"]
      388 GETUPVAL                         R37 25
      389 DUPTABLE                         R38 K72 [{"Image", "Size"}]
      390 GETTABLEKS                       R39 R2 K54 ["HoverX"]
      392 GETTABLEKS                       R39 R39 K71 ["Image"]
      394 SETTABLEKS                       R39 R38 K71 ["Image"]
      396 GETIMPORT                        R39 K75 [UDim2.fromScale]
      398 LOADN                            R40 1
      399 LOADN                            R41 1
      400 CALL                             R39 2 1
      401 SETTABLEKS                       R39 R38 K33 ["Size"]
      403 CALL                             R36 2 1
      404 SETTABLEKS                       R36 R35 K54 ["HoverX"]
      406 CALL                             R32 3 1
      407 SETTABLEKS                       R32 R31 K65 ["RemoveButton"]
      409 CALL                             R28 3 1
      410 SETTABLEKS                       R28 R27 K54 ["HoverX"]
      412 LOADB                            R28 0
      413 JUMPIFEQKNIL                     R15 ; [+60]
      415 GETUPVAL                         R28 4
      416 GETTABLEKS                       R28 R28 K31 ["createElement"]
      418 GETUPVAL                         R29 22
      419 DUPTABLE                         R30 K64 [{"AnchorPoint", "Position", "Size"}]
      420 GETTABLEKS                       R31 R2 K55 ["AccessoryTypeImage"]
      422 GETTABLEKS                       R31 R31 K62 ["AnchorPoint"]
      424 SETTABLEKS                       R31 R30 K62 ["AnchorPoint"]
      426 GETTABLEKS                       R31 R2 K55 ["AccessoryTypeImage"]
      428 GETTABLEKS                       R31 R31 K63 ["Position"]
      430 SETTABLEKS                       R31 R30 K63 ["Position"]
      432 GETTABLEKS                       R31 R2 K55 ["AccessoryTypeImage"]
      434 GETTABLEKS                       R31 R31 K33 ["Size"]
      436 SETTABLEKS                       R31 R30 K33 ["Size"]
      438 DUPTABLE                         R31 K76 [{"Image"}]
      439 GETUPVAL                         R32 4
      440 GETTABLEKS                       R32 R32 K31 ["createElement"]
      442 GETUPVAL                         R33 25
      443 DUPTABLE                         R34 K78 [{"Image", "ImageColor3", "Size"}]
      444 JUMPIFNOTEQKS                    R15 K79 ["layered"] ; [+6]
      446 GETTABLEKS                       R35 R2 K55 ["AccessoryTypeImage"]
      448 GETTABLEKS                       R35 R35 K80 ["LayeredImage"]
      450 JUMP                             ; [+4]
      451 GETTABLEKS                       R35 R2 K55 ["AccessoryTypeImage"]
      453 GETTABLEKS                       R35 R35 K81 ["RigidImage"]
      455 SETTABLEKS                       R35 R34 K71 ["Image"]
      457 GETTABLEKS                       R35 R2 K55 ["AccessoryTypeImage"]
      459 GETTABLEKS                       R35 R35 K82 ["Color"]
      461 SETTABLEKS                       R35 R34 K77 ["ImageColor3"]
      463 GETIMPORT                        R35 K75 [UDim2.fromScale]
      465 LOADN                            R36 1
      466 LOADN                            R37 1
      467 CALL                             R35 2 1
      468 SETTABLEKS                       R35 R34 K33 ["Size"]
      470 CALL                             R32 2 1
      471 SETTABLEKS                       R32 R31 K71 ["Image"]
      473 CALL                             R28 3 1
      474 SETTABLEKS                       R28 R27 K55 ["AccessoryTypeImage"]
      476 GETUPVAL                         R29 3
      477 CALL                             R29 0 1
      478 NOT                              R28 R29
      479 JUMPIFNOT                        R28 ; [+63]
      480 GETTABLEKS                       R28 R0 K83 ["IsUserProvided"]
      482 JUMPIFNOT                        R28 ; [+60]
      483 GETUPVAL                         R28 4
      484 GETTABLEKS                       R28 R28 K31 ["createElement"]
      486 GETUPVAL                         R29 22
      487 DUPTABLE                         R30 K85 [{"AnchorPoint", "Position", "Size", "ZIndex"}]
      488 GETTABLEKS                       R31 R2 K56 ["UserImage"]
      490 GETTABLEKS                       R31 R31 K62 ["AnchorPoint"]
      492 SETTABLEKS                       R31 R30 K62 ["AnchorPoint"]
      494 GETTABLEKS                       R31 R2 K56 ["UserImage"]
      496 GETTABLEKS                       R31 R31 K63 ["Position"]
      498 SETTABLEKS                       R31 R30 K63 ["Position"]
      500 GETTABLEKS                       R31 R2 K56 ["UserImage"]
      502 GETTABLEKS                       R31 R31 K33 ["Size"]
      504 SETTABLEKS                       R31 R30 K33 ["Size"]
      506 GETUPVAL                         R32 26
      507 CALL                             R32 0 1
      508 JUMPIFNOT                        R32 ; [+2]
      509 LOADN                            R31 100
      510 JUMP                             ; [+1]
      511 LOADNIL                          R31
      512 SETTABLEKS                       R31 R30 K84 ["ZIndex"]
      514 DUPTABLE                         R31 K86 [{"UserImage"}]
      515 GETUPVAL                         R32 4
      516 GETTABLEKS                       R32 R32 K31 ["createElement"]
      518 GETUPVAL                         R33 25
      519 DUPTABLE                         R34 K78 [{"Image", "ImageColor3", "Size"}]
      520 GETTABLEKS                       R35 R2 K56 ["UserImage"]
      522 GETTABLEKS                       R35 R35 K71 ["Image"]
      524 SETTABLEKS                       R35 R34 K71 ["Image"]
      526 GETTABLEKS                       R35 R2 K56 ["UserImage"]
      528 GETTABLEKS                       R35 R35 K82 ["Color"]
      530 SETTABLEKS                       R35 R34 K77 ["ImageColor3"]
      532 GETIMPORT                        R35 K75 [UDim2.fromScale]
      534 LOADN                            R36 1
      535 LOADN                            R37 1
      536 CALL                             R35 2 1
      537 SETTABLEKS                       R35 R34 K33 ["Size"]
      539 CALL                             R32 2 1
      540 SETTABLEKS                       R32 R31 K56 ["UserImage"]
      542 CALL                             R28 3 1
      543 SETTABLEKS                       R28 R27 K56 ["UserImage"]
      545 GETUPVAL                         R28 3
      546 CALL                             R28 0 1
      547 JUMPIFNOT                        R28 ; [+44]
      548 GETTABLEKS                       R28 R0 K83 ["IsUserProvided"]
      550 JUMPIFNOT                        R28 ; [+41]
      551 GETUPVAL                         R28 4
      552 GETTABLEKS                       R28 R28 K31 ["createElement"]
      554 GETUPVAL                         R29 27
      555 DUPTABLE                         R30 K89 [{["ZIndex"], ["tag"] = "position-bottom-right anchor-bottom-right size-full-full padding-xsmall"}]
      556 GETUPVAL                         R32 26
      557 CALL                             R32 0 1
      558 JUMPIFNOT                        R32 ; [+2]
      559 LOADN                            R31 100
      560 JUMP                             ; [+1]
      561 LOADNIL                          R31
      562 SETTABLEKS                       R31 R30 K84 ["ZIndex"]
      564 DUPTABLE                         R31 K91 [{"UserImageBackground"}]
      565 GETUPVAL                         R32 4
      566 GETTABLEKS                       R32 R32 K31 ["createElement"]
      568 GETUPVAL                         R33 27
      569 DUPTABLE                         R34 K93 [{["tag"] = "position-bottom-right anchor-bottom-right size-500-500 radius-circle bg-surface-0"}]
      570 DUPTABLE                         R35 K86 [{"UserImage"}]
      571 GETUPVAL                         R36 4
      572 GETTABLEKS                       R36 R36 K31 ["createElement"]
      574 GETUPVAL                         R37 28
      575 DUPTABLE                         R38 K95 [{["Image"], ["Size"], ["tag"] = "radius-circle"}]
      576 SETTABLEKS                       R11 R38 K71 ["Image"]
      578 GETIMPORT                        R39 K75 [UDim2.fromScale]
      580 LOADN                            R40 1
      581 LOADN                            R41 1
      582 CALL                             R39 2 1
      583 SETTABLEKS                       R39 R38 K33 ["Size"]
      585 CALL                             R36 2 1
      586 SETTABLEKS                       R36 R35 K56 ["UserImage"]
      588 CALL                             R32 3 1
      589 SETTABLEKS                       R32 R31 K90 ["UserImageBackground"]
      591 CALL                             R28 3 1
      592 SETTABLEKS                       R28 R27 K57 ["CreatorImage"]
      594 CALL                             R24 3 1
      595 SETTABLEKS                       R24 R23 K42 ["Contents"]
      597 JUMPIFNOT                        R9 ; [+43]
      598 JUMPIFNOT                        R14 ; [+42]
      599 GETUPVAL                         R24 4
      600 GETTABLEKS                       R24 R24 K31 ["createElement"]
      602 GETUPVAL                         R25 29
      603 DUPTABLE                         R26 K102 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["ZIndex"] = 2}]
      604 SETTABLEKS                       R9 R26 K96 ["Text"]
      606 GETIMPORT                        R27 K105 [Enum.TextXAlignment.Left]
      608 SETTABLEKS                       R27 R26 K99 ["TextXAlignment"]
      610 GETIMPORT                        R27 K107 [Enum.TextYAlignment.Bottom]
      612 SETTABLEKS                       R27 R26 K100 ["TextYAlignment"]
      614 DUPTABLE                         R27 K108 [{"Padding"}]
      615 GETUPVAL                         R28 4
      616 GETTABLEKS                       R28 R28 K31 ["createElement"]
      618 LOADK                            R29 K109 ["UIPadding"]
      619 DUPTABLE                         R30 K114 [{"PaddingLeft", "PaddingBottom", "PaddingRight", "PaddingTop"}]
      620 GETTABLEKS                       R31 R2 K115 ["TextLabelPadding"]
      622 SETTABLEKS                       R31 R30 K110 ["PaddingLeft"]
      624 GETTABLEKS                       R31 R2 K115 ["TextLabelPadding"]
      626 SETTABLEKS                       R31 R30 K111 ["PaddingBottom"]
      628 GETTABLEKS                       R31 R2 K115 ["TextLabelPadding"]
      630 SETTABLEKS                       R31 R30 K112 ["PaddingRight"]
      632 GETTABLEKS                       R31 R2 K115 ["TextLabelPadding"]
      634 SETTABLEKS                       R31 R30 K113 ["PaddingTop"]
      636 CALL                             R28 2 1
      637 SETTABLEKS                       R28 R27 K52 ["Padding"]
      639 CALL                             R24 3 1
      640 JUMP                             ; [+1]
      641 LOADNIL                          R24
      642 SETTABLEKS                       R24 R23 K43 ["ItemName"]
      644 GETUPVAL                         R24 3
      645 CALL                             R24 0 1
      646 JUMPIFNOT                        R24 ; [+93]
      647 GETUPVAL                         R24 4
      648 GETTABLEKS                       R24 R24 K31 ["createElement"]
      650 GETUPVAL                         R25 30
      651 GETTABLEKS                       R25 R25 K116 ["Root"]
      653 DUPTABLE                         R26 K118 [{"isOpen"}]
      654 SETTABLEKS                       R18 R26 K117 ["isOpen"]
      656 DUPTABLE                         R27 K121 [{"Anchor", "Content"}]
      657 GETUPVAL                         R28 4
      658 GETTABLEKS                       R28 R28 K31 ["createElement"]
      660 GETUPVAL                         R29 30
      661 GETTABLEKS                       R29 R29 K119 ["Anchor"]
      663 DUPTABLE                         R30 K123 [{"anchorRef"}]
      664 SETTABLEKS                       R19 R30 K122 ["anchorRef"]
      666 CALL                             R28 2 1
      667 SETTABLEKS                       R28 R27 K119 ["Anchor"]
      669 MOVE                             R28 R18
      670 JUMPIFNOT                        R28 ; [+66]
      671 GETUPVAL                         R28 4
      672 GETTABLEKS                       R28 R28 K31 ["createElement"]
      674 GETUPVAL                         R29 30
      675 GETTABLEKS                       R29 R29 K120 ["Content"]
      677 DUPTABLE                         R30 K128 [{["hasArrow"] = False, ["side"], ["align"]}]
      678 DUPTABLE                         R31 K132 [{["position"], ["offset"] = 4}]
      679 GETUPVAL                         R32 31
      680 GETTABLEKS                       R32 R32 K133 ["Right"]
      682 SETTABLEKS                       R32 R31 K129 ["position"]
      684 SETTABLEKS                       R31 R30 K126 ["side"]
      686 GETUPVAL                         R31 32
      687 GETTABLEKS                       R31 R31 K134 ["Start"]
      689 SETTABLEKS                       R31 R30 K127 ["align"]
      691 DUPTABLE                         R31 K136 [{"TooltipBody"}]
      692 GETUPVAL                         R32 4
      693 GETTABLEKS                       R32 R32 K31 ["createElement"]
      695 GETUPVAL                         R33 27
      696 DUPTABLE                         R34 K139 [{["backgroundStyle"], ["tag"] = "col gap-xsmall auto-xy padding-x-medium padding-y-small radius-small"}]
      697 GETTABLEKS                       R35 R13 K140 ["Inverse"]
      699 GETTABLEKS                       R35 R35 K141 ["Surface"]
      701 GETTABLEKS                       R35 R35 K142 ["Surface_0"]
      703 SETTABLEKS                       R35 R34 K137 ["backgroundStyle"]
      705 DUPTABLE                         R35 K145 [{"Title", "Description"}]
      706 MOVE                             R36 R9
      707 JUMPIFNOT                        R36 ; [+8]
      708 GETUPVAL                         R36 4
      709 GETTABLEKS                       R36 R36 K31 ["createElement"]
      711 GETUPVAL                         R37 33
      712 DUPTABLE                         R38 K148 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      713 SETTABLEKS                       R9 R38 K96 ["Text"]
      715 CALL                             R36 2 1
      716 SETTABLEKS                       R36 R35 K143 ["Title"]
      718 MOVE                             R36 R10
      719 JUMPIFNOT                        R36 ; [+11]
      720 LOADB                            R36 0
      721 JUMPIFEQKS                       R10 K149 [""] ; [+9]
      723 GETUPVAL                         R36 4
      724 GETTABLEKS                       R36 R36 K31 ["createElement"]
      726 GETUPVAL                         R37 33
      727 DUPTABLE                         R38 K151 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-inverse-default"}]
      728 SETTABLEKS                       R10 R38 K96 ["Text"]
      730 CALL                             R36 2 1
      731 SETTABLEKS                       R36 R35 K144 ["Description"]
      733 CALL                             R32 3 1
      734 SETTABLEKS                       R32 R31 K135 ["TooltipBody"]
      736 CALL                             R28 3 1
      737 SETTABLEKS                       R28 R27 K120 ["Content"]
      739 CALL                             R24 3 1
      740 SETTABLEKS                       R24 R23 K44 ["PopoverTooltip"]
      742 CALL                             R20 3 -1
      743 RETURN                           R20 -1

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
      166 GETTABLEKS                       R25 R25 K40 ["getFFlagAvatarPreviewerEditingTools"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K9 [require]
      171 GETTABLEKS                       R26 R1 K14 ["Src"]
      173 GETTABLEKS                       R26 R26 K39 ["Flags"]
      175 GETTABLEKS                       R26 R26 K41 ["getFFlagAvatarPreviewerLookComposer"]
      177 CALL                             R25 1 1
      178 GETIMPORT                        R26 K9 [require]
      180 GETTABLEKS                       R27 R1 K14 ["Src"]
      182 GETTABLEKS                       R27 R27 K39 ["Flags"]
      184 GETTABLEKS                       R27 R27 K42 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
      186 CALL                             R26 1 1
      187 MOVE                             R27 R24
      188 CALL                             R27 0 1
      189 GETIMPORT                        R28 K9 [require]
      191 GETTABLEKS                       R29 R1 K14 ["Src"]
      193 GETTABLEKS                       R29 R29 K17 ["Resources"]
      195 GETTABLEKS                       R29 R29 K43 ["Theme"]
      197 CALL                             R28 1 1
      198 GETIMPORT                        R29 K9 [require]
      200 GETTABLEKS                       R30 R1 K14 ["Src"]
      202 GETTABLEKS                       R30 R30 K44 ["Types"]
      204 CALL                             R29 1 1
      205 GETTABLEKS                       R30 R3 K45 ["UI"]
      207 GETTABLEKS                       R31 R30 K46 ["Button"]
      209 GETTABLEKS                       R32 R30 K35 ["Image"]
      211 GETTABLEKS                       R33 R30 K47 ["TextLabel"]
      213 GETTABLEKS                       R34 R30 K48 ["Pane"]
      215 GETTABLEKS                       R35 R30 K49 ["showContextMenu"]
      217 GETTABLEKS                       R36 R3 K50 ["ContextServices"]
      219 GETTABLEKS                       R36 R36 K51 ["Analytics"]
      221 GETTABLEKS                       R37 R3 K50 ["ContextServices"]
      223 GETTABLEKS                       R37 R37 K52 ["Localization"]
      225 GETTABLEKS                       R38 R3 K20 ["Util"]
      227 GETTABLEKS                       R38 R38 K53 ["StyleModifier"]
      229 GETTABLEKS                       R39 R3 K50 ["ContextServices"]
      231 GETTABLEKS                       R39 R39 K54 ["Stylizer"]
      233 DUPCLOSURE                       R40 K55 [PROTO_1]
      234 CAPTURE                          VAL R11
      235 DUPCLOSURE                       R41 K56 [PROTO_9]
      236 CAPTURE                          VAL R36
      237 CAPTURE                          VAL R39
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R5
      242 CAPTURE                          VAL R8
      243 CAPTURE                          VAL R37
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R14
      247 CAPTURE                          VAL R12
      248 CAPTURE                          VAL R13
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R40
      252 CAPTURE                          VAL R0
      253 CAPTURE                          VAL R35
      254 CAPTURE                          VAL R1
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R6
      257 CAPTURE                          VAL R31
      258 CAPTURE                          VAL R34
      259 CAPTURE                          VAL R7
      260 CAPTURE                          VAL R38
      261 CAPTURE                          VAL R32
      262 CAPTURE                          VAL R25
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R21
      265 CAPTURE                          VAL R33
      266 CAPTURE                          VAL R17
      267 CAPTURE                          VAL R22
      268 CAPTURE                          VAL R23
      269 CAPTURE                          VAL R18
      270 RETURN                           R41 1
