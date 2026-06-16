PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
        7 GETTABLEKS                       R3 R3 K2 ["Creator"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+11]
       11 GETTABLEKS                       R4 R0 K3 ["Name"]
       13 JUMPIFEQKS                       R4 K4 [""] ; [+4]
       15 GETTABLEKS                       R3 R0 K3 ["Name"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R0 K5 ["Id"]
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R3 R3 K6 ["Modified"]
       26 JUMPIFEQ                         R1 R3 ; [+8]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       31 GETTABLEKS                       R3 R3 K7 ["Created"]
       33 JUMPIFNOTEQ                      R1 R3 ; [+14]
       35 GETIMPORT                        R3 K10 [DateTime.fromIsoDate]
       37 MOVE                             R4 R0
       38 CALL                             R3 1 1
       39 JUMPIFNOT                        R3 ; [+6]
       40 LOADK                            R6 K11 ["lll"]
       41 LOADK                            R7 K12 ["en-us"]
       42 NAMECALL                         R4 R3 K13 ["FormatLocalTime"]
       44 CALL                             R4 3 1
       45 RETURN                           R4 1
       46 LOADK                            R4 K14 ["--"]
       47 RETURN                           R4 1
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       51 GETTABLEKS                       R3 R3 K15 ["AssetType"]
       53 JUMPIFNOTEQ                      R1 R3 ; [+7]
       55 LOADK                            R5 K15 ["AssetType"]
       56 MOVE                             R6 R0
       57 NAMECALL                         R3 R2 K16 ["getText"]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       64 GETTABLEKS                       R3 R3 K17 ["Source"]
       66 JUMPIFNOTEQ                      R1 R3 ; [+7]
       68 LOADK                            R5 K18 ["AssetSource"]
       69 MOVE                             R6 R0
       70 NAMECALL                         R3 R2 K16 ["getText"]
       72 CALL                             R3 3 -1
       73 RETURN                           R3 -1
       74 GETUPVAL                         R3 2
       75 CALL                             R3 0 1
       76 JUMPIFNOT                        R3 ; [+13]
       77 GETUPVAL                         R3 1
       78 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       80 GETTABLEKS                       R3 R3 K19 ["AssetId"]
       82 JUMPIFNOTEQ                      R1 R3 ; [+7]
       84 JUMPIFNOTEQKN                    R0 K20 [0] ; [+5]
       86 GETUPVAL                         R3 3
       87 GETTABLEKS                       R3 R3 K21 ["PlaceholderText"]
       89 RETURN                           R3 1
       90 FASTCALL1                        TOSTRING R0 ; [+3]
       91 MOVE                             R4 R0
       92 GETIMPORT                        R3 K23 [tostring]
       94 CALL                             R3 1 1
       95 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 2
        4 GETUPVAL                         R6 1
        5 CALL                             R6 0 1
        6 GETTABLEKS                       R7 R0 K0 ["ParentScope"]
        8 GETTABLEKS                       R7 R7 K1 ["Uid"]
       10 GETTABLEKS                       R8 R0 K2 ["ItemPath"]
       12 GETUPVAL                         R10 2
       13 CALL                             R10 0 1
       14 JUMPIFNOT                        R10 ; [+11]
       15 GETTABLEKS                       R11 R6 K3 ["ListRowHeight"]
       17 GETUPVAL                         R12 3
       18 GETTABLEKS                       R12 R12 K4 ["ListThumbnailContainerScale"]
       20 MUL                              R10 R11 R12
       21 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       22 GETIMPORT                        R9 K7 [math.floor]
       24 CALL                             R9 1 1
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R9 4
       27 LOADK                            R11 K8 ["ListThumbnailSize"]
       28 NAMECALL                         R9 R9 K9 ["GetAttribute"]
       30 CALL                             R9 2 1
       31 MOVE                             R10 R4
       32 LOADNIL                          R11
       33 LOADNIL                          R12
       34 FORGPREP                         R10
       35 MOVE                             R17 R7
       36 MOVE                             R18 R8
       37 MOVE                             R19 R14
       38 NAMECALL                         R15 R1 K10 ["getItemField"]
       40 CALL                             R15 4 1
       41 GETUPVAL                         R16 5
       42 CALL                             R16 0 1
       43 JUMPIF                           R16 ; [+13]
       44 JUMPIF                           R15 ; [+12]
       45 GETUPVAL                         R16 6
       46 LOADK                            R18 K11 ["Cannot construct item row for item %* due to missing property %*"]
       47 MOVE                             R20 R8
       48 MOVE                             R21 R14
       49 NAMECALL                         R18 R18 K12 ["format"]
       51 CALL                             R18 3 1
       52 MOVE                             R17 R18
       53 CALL                             R16 1 0
       54 NEWTABLE                         R16 0 0
       56 RETURN                           R16 1
       57 LOADNIL                          R16
       58 GETUPVAL                         R17 5
       59 CALL                             R17 0 1
       60 JUMPIFNOT                        R17 ; [+11]
       61 JUMPIFNOT                        R15 ; [+6]
       62 GETUPVAL                         R17 7
       63 MOVE                             R18 R15
       64 MOVE                             R19 R14
       65 CALL                             R17 2 1
       66 MOVE                             R16 R17
       67 JUMP                             ; [+9]
       68 GETUPVAL                         R17 8
       69 GETTABLEKS                       R16 R17 K13 ["PlaceholderText"]
       71 JUMP                             ; [+5]
       72 GETUPVAL                         R17 7
       73 MOVE                             R18 R15
       74 MOVE                             R19 R14
       75 CALL                             R17 2 1
       76 MOVE                             R16 R17
       77 GETTABLE                         R17 R5 R13
       78 GETTABLEKS                       R17 R17 K14 ["Offset"]
       80 GETUPVAL                         R19 9
       81 MOVE                             R20 R16
       82 CALL                             R19 1 1
       83 GETTABLEKS                       R19 R19 K15 ["X"]
       85 GETUPVAL                         R22 4
       86 LOADK                            R24 K17 ["CellContentPadding"]
       87 NAMECALL                         R22 R22 K9 ["GetAttribute"]
       89 CALL                             R22 2 1
       90 MULK                             R21 R22 K16 [2]
       91 SUB                              R20 R17 R21
       92 JUMPIFLT                         R20 R19 ; [+2]
       94 LOADB                            R18 0 +1
       95 LOADB                            R18 1
       96 JUMPIFNOTEQKN                    R13 K18 [1] ; [+233]
       98 MOVE                             R21 R7
       99 MOVE                             R22 R8
      100 GETUPVAL                         R23 10
      101 GETTABLEKS                       R23 R23 K19 ["AssetInfoField"]
      103 GETTABLEKS                       R23 R23 K20 ["AssetType"]
      105 NAMECALL                         R19 R1 K10 ["getItemField"]
      107 CALL                             R19 4 1
      108 MOVE                             R22 R7
      109 MOVE                             R23 R8
      110 GETUPVAL                         R24 10
      111 GETTABLEKS                       R24 R24 K19 ["AssetInfoField"]
      113 GETTABLEKS                       R24 R24 K21 ["AssetId"]
      115 NAMECALL                         R20 R1 K10 ["getItemField"]
      117 CALL                             R20 4 1
      118 MOVE                             R23 R7
      119 MOVE                             R24 R8
      120 GETUPVAL                         R25 10
      121 GETTABLEKS                       R25 R25 K19 ["AssetInfoField"]
      123 GETTABLEKS                       R25 R25 K22 ["IsPackage"]
      125 NAMECALL                         R21 R1 K10 ["getItemField"]
      127 CALL                             R21 4 1
      128 SUB                              R23 R17 R9
      129 GETUPVAL                         R24 4
      130 LOADK                            R26 K17 ["CellContentPadding"]
      131 NAMECALL                         R24 R24 K9 ["GetAttribute"]
      133 CALL                             R24 2 1
      134 SUB                              R22 R23 R24
      135 GETUPVAL                         R23 11
      136 GETTABLEKS                       R23 R23 K23 ["createElement"]
      138 GETUPVAL                         R24 12
      139 GETTABLEKS                       R24 R24 K24 ["View"]
      141 DUPTABLE                         R25 K28 [{"LayoutOrder", "Size", "tag"}]
      142 SETTABLEKS                       R13 R25 K25 ["LayoutOrder"]
      144 GETIMPORT                        R26 K31 [UDim2.new]
      146 LOADN                            R27 0
      147 MOVE                             R28 R17
      148 LOADN                            R29 1
      149 LOADN                            R30 0
      150 CALL                             R26 4 1
      151 SETTABLEKS                       R26 R25 K26 ["Size"]
      153 LOADK                            R26 K32 ["padding-left-small row align-x-left align-y-center"]
      154 SETTABLEKS                       R26 R25 K27 ["tag"]
      156 DUPTABLE                         R26 K35 [{"ThumbnailContainer", "AssetName"}]
      157 GETUPVAL                         R27 11
      158 GETTABLEKS                       R27 R27 K23 ["createElement"]
      160 GETUPVAL                         R28 12
      161 GETTABLEKS                       R28 R28 K24 ["View"]
      163 DUPTABLE                         R29 K28 [{"LayoutOrder", "Size", "tag"}]
      164 LOADN                            R30 1
      165 SETTABLEKS                       R30 R29 K25 ["LayoutOrder"]
      167 GETUPVAL                         R31 2
      168 CALL                             R31 0 1
      169 JUMPIFNOT                        R31 ; [+6]
      170 GETIMPORT                        R30 K37 [UDim2.fromOffset]
      172 MOVE                             R31 R9
      173 MOVE                             R32 R9
      174 CALL                             R30 2 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R30
      177 SETTABLEKS                       R30 R29 K26 ["Size"]
      179 NEWTABLE                         R30 2 0
      181 LOADB                            R31 1
      182 SETTABLEKS                       R31 R30 K38 ["bg-foreground-contrast radius-small"]
      184 GETUPVAL                         R32 2
      185 CALL                             R32 0 1
      186 NOT                              R31 R32
      187 SETTABLEKS                       R31 R30 K39 ["size-900"]
      189 SETTABLEKS                       R30 R29 K27 ["tag"]
      191 DUPTABLE                         R30 K42 [{"Thumbnail", "PackageLinkIcon"}]
      192 GETUPVAL                         R31 11
      193 GETTABLEKS                       R31 R31 K23 ["createElement"]
      195 GETUPVAL                         R32 13
      196 DUPTABLE                         R33 K43 [{"AssetId", "AssetType"}]
      197 SETTABLEKS                       R20 R33 K21 ["AssetId"]
      199 SETTABLEKS                       R19 R33 K20 ["AssetType"]
      201 CALL                             R31 2 1
      202 SETTABLEKS                       R31 R30 K40 ["Thumbnail"]
      204 JUMPIFNOT                        R21 ; [+18]
      205 GETUPVAL                         R31 11
      206 GETTABLEKS                       R31 R31 K23 ["createElement"]
      208 GETUPVAL                         R32 12
      209 GETTABLEKS                       R32 R32 K44 ["Image"]
      211 DUPTABLE                         R33 K47 [{"ZIndex", "tag", "testId"}]
      212 LOADN                            R34 2
      213 SETTABLEKS                       R34 R33 K45 ["ZIndex"]
      215 LOADK                            R34 K48 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0"]
      216 SETTABLEKS                       R34 R33 K27 ["tag"]
      218 LOADK                            R34 K49 ["package-link-icon"]
      219 SETTABLEKS                       R34 R33 K46 ["testId"]
      221 CALL                             R31 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R31
      224 SETTABLEKS                       R31 R30 K41 ["PackageLinkIcon"]
      226 CALL                             R27 3 1
      227 SETTABLEKS                       R27 R26 K33 ["ThumbnailContainer"]
      229 JUMPIFNOT                        R2 ; [+25]
      230 GETUPVAL                         R27 11
      231 GETTABLEKS                       R27 R27 K23 ["createElement"]
      233 GETUPVAL                         R28 14
      234 DUPTABLE                         R29 K52 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      235 LOADN                            R30 2
      236 SETTABLEKS                       R30 R29 K25 ["LayoutOrder"]
      238 SETTABLEKS                       R16 R29 K50 ["InitialText"]
      240 SETTABLEKS                       R19 R29 K51 ["ItemType"]
      242 SETTABLEKS                       R8 R29 K2 ["ItemPath"]
      244 GETIMPORT                        R30 K31 [UDim2.new]
      246 LOADN                            R31 0
      247 MOVE                             R32 R22
      248 LOADN                            R33 1
      249 LOADN                            R34 0
      250 CALL                             R30 4 1
      251 SETTABLEKS                       R30 R29 K26 ["Size"]
      253 CALL                             R27 2 1
      254 JUMP                             ; [+70]
      255 JUMPIFNOT                        R18 ; [+46]
      256 GETUPVAL                         R27 11
      257 GETTABLEKS                       R27 R27 K23 ["createElement"]
      259 GETUPVAL                         R28 12
      260 GETTABLEKS                       R28 R28 K53 ["Tooltip"]
      262 DUPTABLE                         R29 K56 [{"LayoutOrder", "title", "side"}]
      263 LOADN                            R30 2
      264 SETTABLEKS                       R30 R29 K25 ["LayoutOrder"]
      266 SETTABLEKS                       R16 R29 K54 ["title"]
      268 GETUPVAL                         R30 12
      269 GETTABLEKS                       R30 R30 K57 ["Enums"]
      271 GETTABLEKS                       R30 R30 K58 ["PopoverSide"]
      273 GETTABLEKS                       R30 R30 K59 ["Bottom"]
      275 SETTABLEKS                       R30 R29 K55 ["side"]
      277 GETUPVAL                         R30 11
      278 GETTABLEKS                       R30 R30 K23 ["createElement"]
      280 GETUPVAL                         R31 12
      281 GETTABLEKS                       R31 R31 K60 ["Text"]
      283 DUPTABLE                         R32 K61 [{"LayoutOrder", "Text", "Size", "tag"}]
      284 LOADN                            R33 2
      285 SETTABLEKS                       R33 R32 K25 ["LayoutOrder"]
      287 SETTABLEKS                       R16 R32 K60 ["Text"]
      289 GETIMPORT                        R33 K37 [UDim2.fromOffset]
      291 MOVE                             R34 R22
      292 LOADN                            R35 0
      293 CALL                             R33 2 1
      294 SETTABLEKS                       R33 R32 K26 ["Size"]
      296 LOADK                            R33 K62 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      297 SETTABLEKS                       R33 R32 K27 ["tag"]
      299 CALL                             R30 2 -1
      300 CALL                             R27 -1 1
      301 JUMP                             ; [+23]
      302 GETUPVAL                         R27 11
      303 GETTABLEKS                       R27 R27 K23 ["createElement"]
      305 GETUPVAL                         R28 12
      306 GETTABLEKS                       R28 R28 K60 ["Text"]
      308 DUPTABLE                         R29 K61 [{"LayoutOrder", "Text", "Size", "tag"}]
      309 LOADN                            R30 2
      310 SETTABLEKS                       R30 R29 K25 ["LayoutOrder"]
      312 SETTABLEKS                       R16 R29 K60 ["Text"]
      314 GETIMPORT                        R30 K37 [UDim2.fromOffset]
      316 MOVE                             R31 R22
      317 LOADN                            R32 0
      318 CALL                             R30 2 1
      319 SETTABLEKS                       R30 R29 K26 ["Size"]
      321 LOADK                            R30 K62 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      322 SETTABLEKS                       R30 R29 K27 ["tag"]
      324 CALL                             R27 2 1
      325 SETTABLEKS                       R27 R26 K34 ["AssetName"]
      327 CALL                             R23 3 1
      328 SETTABLE                         R23 R3 R13
      329 JUMP                             ; [+72]
      330 JUMPIFNOT                        R18 ; [+46]
      331 GETUPVAL                         R19 11
      332 GETTABLEKS                       R19 R19 K23 ["createElement"]
      334 GETUPVAL                         R20 12
      335 GETTABLEKS                       R20 R20 K53 ["Tooltip"]
      337 DUPTABLE                         R21 K56 [{"LayoutOrder", "title", "side"}]
      338 SETTABLEKS                       R13 R21 K25 ["LayoutOrder"]
      340 SETTABLEKS                       R16 R21 K54 ["title"]
      342 GETUPVAL                         R22 12
      343 GETTABLEKS                       R22 R22 K57 ["Enums"]
      345 GETTABLEKS                       R22 R22 K58 ["PopoverSide"]
      347 GETTABLEKS                       R22 R22 K59 ["Bottom"]
      349 SETTABLEKS                       R22 R21 K55 ["side"]
      351 GETUPVAL                         R22 11
      352 GETTABLEKS                       R22 R22 K23 ["createElement"]
      354 GETUPVAL                         R23 12
      355 GETTABLEKS                       R23 R23 K60 ["Text"]
      357 DUPTABLE                         R24 K61 [{"LayoutOrder", "Text", "Size", "tag"}]
      358 SETTABLEKS                       R13 R24 K25 ["LayoutOrder"]
      360 SETTABLEKS                       R16 R24 K60 ["Text"]
      362 GETIMPORT                        R25 K31 [UDim2.new]
      364 LOADN                            R26 0
      365 MOVE                             R27 R17
      366 LOADN                            R28 1
      367 LOADN                            R29 0
      368 CALL                             R25 4 1
      369 SETTABLEKS                       R25 R24 K26 ["Size"]
      371 LOADK                            R25 K63 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      372 SETTABLEKS                       R25 R24 K27 ["tag"]
      374 CALL                             R22 2 -1
      375 CALL                             R19 -1 1
      376 JUMP                             ; [+24]
      377 GETUPVAL                         R19 11
      378 GETTABLEKS                       R19 R19 K23 ["createElement"]
      380 GETUPVAL                         R20 12
      381 GETTABLEKS                       R20 R20 K60 ["Text"]
      383 DUPTABLE                         R21 K61 [{"LayoutOrder", "Text", "Size", "tag"}]
      384 SETTABLEKS                       R13 R21 K25 ["LayoutOrder"]
      386 SETTABLEKS                       R16 R21 K60 ["Text"]
      388 GETIMPORT                        R22 K31 [UDim2.new]
      390 LOADN                            R23 0
      391 MOVE                             R24 R17
      392 LOADN                            R25 1
      393 LOADN                            R26 0
      394 CALL                             R22 4 1
      395 SETTABLEKS                       R22 R21 K26 ["Size"]
      397 LOADK                            R22 K63 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      398 SETTABLEKS                       R22 R21 K27 ["tag"]
      400 CALL                             R19 2 1
      401 SETTABLE                         R19 R3 R13
      402 FORGLOOP                         R10 2 ; [-368]
      404 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemPath"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["UiZone"]
        7 GETTABLEKS                       R3 R3 K2 ["Browser"]
        9 MOVE                             R4 R0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["Key"]
       13 GETUPVAL                         R6 3
       14 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       16 CALL                             R1 5 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R5 R0 K1 ["ItemPath"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 4
       15 MOVE                             R6 R0
       16 NAMECALL                         R7 R2 K2 ["getItemsCache"]
       18 CALL                             R7 1 1
       19 MOVE                             R8 R4
       20 CALL                             R5 3 1
       21 GETTABLEKS                       R7 R0 K1 ["ItemPath"]
       23 GETTABLE                         R6 R3 R7
       24 GETUPVAL                         R7 5
       25 CALL                             R7 0 1
       26 GETUPVAL                         R8 6
       27 GETTABLEKS                       R8 R8 K3 ["useRef"]
       29 LOADNIL                          R9
       30 CALL                             R8 1 1
       31 GETUPVAL                         R9 7
       32 MOVE                             R10 R8
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 8
       35 MOVE                             R11 R9
       36 GETTABLEKS                       R12 R0 K1 ["ItemPath"]
       38 CALL                             R10 2 1
       39 GETUPVAL                         R11 9
       40 GETUPVAL                         R12 10
       41 GETTABLEKS                       R12 R12 K4 ["MenuContext"]
       43 GETTABLEKS                       R12 R12 K5 ["Asset"]
       45 DUPTABLE                         R13 K8 [{"Path", "Index"}]
       46 GETTABLEKS                       R14 R0 K1 ["ItemPath"]
       48 SETTABLEKS                       R14 R13 K6 ["Path"]
       50 GETTABLEKS                       R14 R0 K9 ["Key"]
       52 SETTABLEKS                       R14 R13 K7 ["Index"]
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 6
       56 GETTABLEKS                       R12 R12 K10 ["createElement"]
       58 GETUPVAL                         R13 11
       59 GETTABLEKS                       R13 R13 K11 ["View"]
       61 DUPTABLE                         R14 K17 [{"LayoutOrder", "Position", "Size", "ref", "tag"}]
       62 GETTABLEKS                       R15 R0 K9 ["Key"]
       64 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       66 GETTABLEKS                       R15 R0 K13 ["Position"]
       68 SETTABLEKS                       R15 R14 K13 ["Position"]
       70 GETUPVAL                         R16 12
       71 CALL                             R16 0 1
       72 JUMPIFNOT                        R16 ; [+9]
       73 GETIMPORT                        R15 K20 [UDim2.new]
       75 LOADN                            R16 1
       76 LOADN                            R17 0
       77 LOADN                            R18 0
       78 GETTABLEKS                       R19 R7 K21 ["ListRowHeight"]
       80 CALL                             R15 4 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R15
       83 SETTABLEKS                       R15 R14 K14 ["Size"]
       85 SETTABLEKS                       R8 R14 K15 ["ref"]
       87 NEWTABLE                         R15 8 0
       89 GETUPVAL                         R17 12
       90 CALL                             R17 0 1
       91 NOT                              R16 R17
       92 SETTABLEKS                       R16 R15 K22 ["am-size-itemrow auto-x"]
       94 GETUPVAL                         R16 12
       95 CALL                             R16 0 1
       96 SETTABLEKS                       R16 R15 K23 ["auto-x"]
       98 SETTABLEKS                       R6 R15 K24 ["bg-action-soft-emphasis"]
      100 NOT                              R17 R6
      101 AND                              R16 R17 R9
      102 SETTABLEKS                       R16 R15 K25 ["bg-shift-200"]
      104 GETUPVAL                         R17 13
      105 CALL                             R17 0 1
      106 NOT                              R16 R17
      107 JUMPIF                           R16 ; [+1]
      108 NOT                              R16 R10
      109 SETTABLEKS                       R16 R15 K26 ["stroke-default stroke-thin"]
      111 GETUPVAL                         R17 13
      112 CALL                             R17 0 1
      113 AND                              R16 R17 R10
      114 SETTABLEKS                       R16 R15 K27 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
      116 SETTABLEKS                       R15 R14 K16 ["tag"]
      118 DUPTABLE                         R15 K29 [{"InputHandler"}]
      119 GETUPVAL                         R16 6
      120 GETTABLEKS                       R16 R16 K10 ["createElement"]
      122 LOADK                            R17 K30 ["ImageButton"]
      123 NEWTABLE                         R18 4 0
      125 GETUPVAL                         R19 6
      126 GETTABLEKS                       R19 R19 K31 ["Event"]
      128 GETTABLEKS                       R19 R19 K32 ["MouseButton2Click"]
      130 NEWCLOSURE                       R20 P0
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R1
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          VAL R11
      135 SETTABLE                         R20 R18 R19
      136 GETUPVAL                         R19 6
      137 GETTABLEKS                       R19 R19 K31 ["Event"]
      139 GETTABLEKS                       R19 R19 K33 ["MouseButton1Down"]
      141 NEWCLOSURE                       R20 P1
      142 CAPTURE                          VAL R1
      143 CAPTURE                          UPVAL U10
      144 CAPTURE                          VAL R0
      145 SETTABLE                         R20 R18 R19
      146 GETUPVAL                         R19 6
      147 GETTABLEKS                       R19 R19 K31 ["Event"]
      149 GETTABLEKS                       R19 R19 K34 ["MouseButton1Up"]
      151 NEWCLOSURE                       R20 P2
      152 CAPTURE                          VAL R1
      153 CAPTURE                          UPVAL U10
      154 CAPTURE                          VAL R0
      155 SETTABLE                         R20 R18 R19
      156 GETUPVAL                         R19 6
      157 GETTABLEKS                       R19 R19 K35 ["Tag"]
      159 LOADK                            R20 K36 ["gui-object-defaults size-full row align-x-left align-y-center"]
      160 SETTABLE                         R20 R18 R19
      161 MOVE                             R19 R5
      162 CALL                             R16 3 1
      163 SETTABLEKS                       R16 R15 K28 ["InputHandler"]
      165 CALL                             R12 3 -1
      166 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["Shared"]
       40 GETTABLEKS                       R7 R7 K15 ["EditNameInput"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["ItemThumbnail"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       60 GETTABLEKS                       R9 R9 K18 ["Input"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Src"]
       67 GETTABLEKS                       R10 R10 K17 ["Controllers"]
       69 GETTABLEKS                       R10 R10 K19 ["ItemsController"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K12 ["Src"]
       76 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K21 ["useColumns"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K12 ["Src"]
       85 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       87 GETTABLEKS                       R12 R12 K22 ["useContextMenu"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K12 ["Src"]
       94 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       96 GETTABLEKS                       R13 R13 K23 ["useIsEditItem"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K12 ["Src"]
      103 GETTABLEKS                       R14 R14 K20 ["Hooks"]
      105 GETTABLEKS                       R14 R14 K24 ["useItemHovered"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K12 ["Src"]
      112 GETTABLEKS                       R15 R15 K20 ["Hooks"]
      114 GETTABLEKS                       R15 R15 K25 ["useItemDragHovered"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K12 ["Src"]
      121 GETTABLEKS                       R16 R16 K20 ["Hooks"]
      123 GETTABLEKS                       R16 R16 K26 ["useItemSelection"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K12 ["Src"]
      130 GETTABLEKS                       R17 R17 K20 ["Hooks"]
      132 GETTABLEKS                       R17 R17 K27 ["useLayoutInfo"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K12 ["Src"]
      139 GETTABLEKS                       R18 R18 K28 ["Types"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R19 R0 K12 ["Src"]
      146 GETTABLEKS                       R19 R19 K29 ["Resources"]
      148 GETTABLEKS                       R19 R19 K30 ["Constants"]
      150 CALL                             R18 1 1
      151 GETIMPORT                        R19 K5 [require]
      153 GETTABLEKS                       R20 R0 K12 ["Src"]
      155 GETTABLEKS                       R20 R20 K29 ["Resources"]
      157 GETTABLEKS                       R20 R20 K31 ["StyleConstants"]
      159 CALL                             R19 1 1
      160 GETTABLEKS                       R20 R3 K32 ["Util"]
      162 GETTABLEKS                       R20 R20 K33 ["GetTextSize"]
      164 GETIMPORT                        R21 K5 [require]
      166 GETTABLEKS                       R22 R0 K12 ["Src"]
      168 GETTABLEKS                       R22 R22 K32 ["Util"]
      170 GETTABLEKS                       R22 R22 K34 ["logIfDebug"]
      172 CALL                             R21 1 1
      173 GETIMPORT                        R22 K5 [require]
      175 GETTABLEKS                       R23 R0 K12 ["Src"]
      177 GETTABLEKS                       R23 R23 K29 ["Resources"]
      179 GETTABLEKS                       R23 R23 K35 ["PluginStyles"]
      181 CALL                             R22 1 1
      182 GETIMPORT                        R23 K5 [require]
      184 GETTABLEKS                       R24 R0 K12 ["Src"]
      186 GETTABLEKS                       R24 R24 K36 ["Flags"]
      188 GETTABLEKS                       R24 R24 K37 ["getFFlagAmrOrganizationFoundation"]
      190 CALL                             R23 1 1
      191 GETIMPORT                        R24 K5 [require]
      193 GETTABLEKS                       R25 R0 K12 ["Src"]
      195 GETTABLEKS                       R25 R25 K36 ["Flags"]
      197 GETTABLEKS                       R25 R25 K38 ["getFFlagAmrListViewCustomRowHeight"]
      199 CALL                             R24 1 1
      200 DUPCLOSURE                       R25 K39 [PROTO_0]
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R23
      204 CAPTURE                          VAL R18
      205 DUPCLOSURE                       R26 K40 [PROTO_1]
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R25
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R17
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R6
      221 DUPCLOSURE                       R27 K41 [PROTO_5]
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R23
      236 RETURN                           R27 1
