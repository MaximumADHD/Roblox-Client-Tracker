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
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 2
        4 GETTABLEKS                       R7 R0 K0 ["ParentScope"]
        6 GETTABLEKS                       R7 R7 K1 ["Uid"]
        8 GETTABLEKS                       R8 R0 K2 ["ItemPath"]
       10 MOVE                             R9 R5
       11 LOADNIL                          R10
       12 LOADNIL                          R11
       13 FORGPREP                         R9
       14 MOVE                             R16 R7
       15 MOVE                             R17 R8
       16 MOVE                             R18 R13
       17 NAMECALL                         R14 R2 K3 ["getItemField"]
       19 CALL                             R14 4 1
       20 GETUPVAL                         R15 1
       21 CALL                             R15 0 1
       22 JUMPIF                           R15 ; [+13]
       23 JUMPIF                           R14 ; [+12]
       24 GETUPVAL                         R15 2
       25 LOADK                            R17 K4 ["Cannot construct item row for item %* due to missing property %*"]
       26 MOVE                             R19 R8
       27 MOVE                             R20 R13
       28 NAMECALL                         R17 R17 K5 ["format"]
       30 CALL                             R17 3 1
       31 MOVE                             R16 R17
       32 CALL                             R15 1 0
       33 NEWTABLE                         R15 0 0
       35 RETURN                           R15 1
       36 LOADNIL                          R15
       37 GETUPVAL                         R16 1
       38 CALL                             R16 0 1
       39 JUMPIFNOT                        R16 ; [+11]
       40 JUMPIFNOT                        R14 ; [+6]
       41 GETUPVAL                         R16 3
       42 MOVE                             R17 R14
       43 MOVE                             R18 R13
       44 CALL                             R16 2 1
       45 MOVE                             R15 R16
       46 JUMP                             ; [+9]
       47 GETUPVAL                         R16 4
       48 GETTABLEKS                       R15 R16 K6 ["PlaceholderText"]
       50 JUMP                             ; [+5]
       51 GETUPVAL                         R16 3
       52 MOVE                             R17 R14
       53 MOVE                             R18 R13
       54 CALL                             R16 2 1
       55 MOVE                             R15 R16
       56 GETTABLE                         R16 R6 R12
       57 GETTABLEKS                       R16 R16 K7 ["Offset"]
       59 GETUPVAL                         R18 5
       60 MOVE                             R19 R15
       61 CALL                             R18 1 1
       62 GETTABLEKS                       R18 R18 K8 ["X"]
       64 GETUPVAL                         R21 6
       65 LOADK                            R23 K10 ["CellContentPadding"]
       66 NAMECALL                         R21 R21 K11 ["GetAttribute"]
       68 CALL                             R21 2 1
       69 MULK                             R20 R21 K9 [2]
       70 SUB                              R19 R16 R20
       71 JUMPIFLT                         R19 R18 ; [+2]
       73 LOADB                            R17 0 +1
       74 LOADB                            R17 1
       75 JUMPIFNOTEQKN                    R12 K12 [1] ; [+241]
       77 MOVE                             R20 R7
       78 MOVE                             R21 R8
       79 GETUPVAL                         R22 7
       80 GETTABLEKS                       R22 R22 K13 ["AssetInfoField"]
       82 GETTABLEKS                       R22 R22 K14 ["AssetType"]
       84 NAMECALL                         R18 R2 K3 ["getItemField"]
       86 CALL                             R18 4 1
       87 MOVE                             R21 R7
       88 MOVE                             R22 R8
       89 GETUPVAL                         R23 7
       90 GETTABLEKS                       R23 R23 K13 ["AssetInfoField"]
       92 GETTABLEKS                       R23 R23 K15 ["AssetId"]
       94 NAMECALL                         R19 R2 K3 ["getItemField"]
       96 CALL                             R19 4 1
       97 MOVE                             R22 R7
       98 MOVE                             R23 R8
       99 GETUPVAL                         R24 7
      100 GETTABLEKS                       R24 R24 K13 ["AssetInfoField"]
      102 GETTABLEKS                       R24 R24 K16 ["IsPackage"]
      104 NAMECALL                         R20 R2 K3 ["getItemField"]
      106 CALL                             R20 4 1
      107 GETUPVAL                         R23 6
      108 LOADK                            R25 K17 ["ListThumbnailSize"]
      109 NAMECALL                         R23 R23 K11 ["GetAttribute"]
      111 CALL                             R23 2 1
      112 SUB                              R22 R16 R23
      113 GETUPVAL                         R23 6
      114 LOADK                            R25 K10 ["CellContentPadding"]
      115 NAMECALL                         R23 R23 K11 ["GetAttribute"]
      117 CALL                             R23 2 1
      118 SUB                              R21 R22 R23
      119 GETUPVAL                         R22 8
      120 GETTABLEKS                       R22 R22 K18 ["createElement"]
      122 GETUPVAL                         R23 9
      123 GETTABLEKS                       R23 R23 K19 ["View"]
      125 DUPTABLE                         R24 K23 [{"LayoutOrder", "Size", "tag"}]
      126 SETTABLEKS                       R12 R24 K20 ["LayoutOrder"]
      128 GETIMPORT                        R25 K26 [UDim2.new]
      130 LOADN                            R26 0
      131 MOVE                             R27 R16
      132 LOADN                            R28 1
      133 LOADN                            R29 0
      134 CALL                             R25 4 1
      135 SETTABLEKS                       R25 R24 K21 ["Size"]
      137 LOADK                            R25 K27 ["padding-left-small row align-x-left align-y-center"]
      138 SETTABLEKS                       R25 R24 K22 ["tag"]
      140 DUPTABLE                         R25 K30 [{"ThumbnailContainer", "AssetName"}]
      141 GETUPVAL                         R26 8
      142 GETTABLEKS                       R26 R26 K18 ["createElement"]
      144 GETUPVAL                         R27 9
      145 GETTABLEKS                       R27 R27 K19 ["View"]
      147 DUPTABLE                         R28 K31 [{"LayoutOrder", "tag"}]
      148 LOADN                            R29 1
      149 SETTABLEKS                       R29 R28 K20 ["LayoutOrder"]
      151 LOADK                            R29 K32 ["size-900 bg-foreground-contrast radius-small"]
      152 SETTABLEKS                       R29 R28 K22 ["tag"]
      154 DUPTABLE                         R29 K35 [{"Thumbnail", "PackageLinkIcon"}]
      155 GETUPVAL                         R30 8
      156 GETTABLEKS                       R30 R30 K18 ["createElement"]
      158 GETUPVAL                         R31 10
      159 DUPTABLE                         R32 K36 [{"AssetId", "AssetType"}]
      160 SETTABLEKS                       R19 R32 K15 ["AssetId"]
      162 SETTABLEKS                       R18 R32 K14 ["AssetType"]
      164 CALL                             R30 2 1
      165 SETTABLEKS                       R30 R29 K33 ["Thumbnail"]
      167 JUMPIFNOT                        R20 ; [+15]
      168 GETUPVAL                         R30 8
      169 GETTABLEKS                       R30 R30 K18 ["createElement"]
      171 GETUPVAL                         R31 9
      172 GETTABLEKS                       R31 R31 K37 ["Image"]
      174 DUPTABLE                         R32 K39 [{"ZIndex", "tag"}]
      175 LOADN                            R33 2
      176 SETTABLEKS                       R33 R32 K38 ["ZIndex"]
      178 LOADK                            R33 K40 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      179 SETTABLEKS                       R33 R32 K22 ["tag"]
      181 CALL                             R30 2 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R30
      184 SETTABLEKS                       R30 R29 K34 ["PackageLinkIcon"]
      186 CALL                             R26 3 1
      187 SETTABLEKS                       R26 R25 K28 ["ThumbnailContainer"]
      189 GETUPVAL                         R27 11
      190 CALL                             R27 0 1
      191 JUMPIFNOT                        R27 ; [+26]
      192 JUMPIFNOT                        R3 ; [+25]
      193 GETUPVAL                         R26 8
      194 GETTABLEKS                       R26 R26 K18 ["createElement"]
      196 GETUPVAL                         R27 12
      197 DUPTABLE                         R28 K43 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      198 LOADN                            R29 2
      199 SETTABLEKS                       R29 R28 K20 ["LayoutOrder"]
      201 SETTABLEKS                       R15 R28 K41 ["InitialText"]
      203 SETTABLEKS                       R18 R28 K42 ["ItemType"]
      205 SETTABLEKS                       R8 R28 K2 ["ItemPath"]
      207 GETIMPORT                        R29 K26 [UDim2.new]
      209 LOADN                            R30 0
      210 MOVE                             R31 R21
      211 LOADN                            R32 1
      212 LOADN                            R33 0
      213 CALL                             R29 4 1
      214 SETTABLEKS                       R29 R28 K21 ["Size"]
      216 CALL                             R26 2 1
      217 JUMP                             ; [+94]
      218 GETUPVAL                         R27 11
      219 CALL                             R27 0 1
      220 JUMPIF                           R27 ; [+21]
      221 JUMPIFNOTEQ                      R19 R1 ; [+20]
      223 GETUPVAL                         R26 8
      224 GETTABLEKS                       R26 R26 K18 ["createElement"]
      226 GETUPVAL                         R27 13
      227 DUPTABLE                         R28 K44 [{"LayoutOrder", "InitialText", "Size"}]
      228 LOADN                            R29 2
      229 SETTABLEKS                       R29 R28 K20 ["LayoutOrder"]
      231 SETTABLEKS                       R15 R28 K41 ["InitialText"]
      233 GETIMPORT                        R29 K46 [UDim2.fromOffset]
      235 MOVE                             R30 R21
      236 LOADN                            R31 0
      237 CALL                             R29 2 1
      238 SETTABLEKS                       R29 R28 K21 ["Size"]
      240 CALL                             R26 2 1
      241 JUMP                             ; [+70]
      242 JUMPIFNOT                        R17 ; [+46]
      243 GETUPVAL                         R26 8
      244 GETTABLEKS                       R26 R26 K18 ["createElement"]
      246 GETUPVAL                         R27 9
      247 GETTABLEKS                       R27 R27 K47 ["Tooltip"]
      249 DUPTABLE                         R28 K50 [{"LayoutOrder", "title", "side"}]
      250 LOADN                            R29 2
      251 SETTABLEKS                       R29 R28 K20 ["LayoutOrder"]
      253 SETTABLEKS                       R15 R28 K48 ["title"]
      255 GETUPVAL                         R29 9
      256 GETTABLEKS                       R29 R29 K51 ["Enums"]
      258 GETTABLEKS                       R29 R29 K52 ["PopoverSide"]
      260 GETTABLEKS                       R29 R29 K53 ["Bottom"]
      262 SETTABLEKS                       R29 R28 K49 ["side"]
      264 GETUPVAL                         R29 8
      265 GETTABLEKS                       R29 R29 K18 ["createElement"]
      267 GETUPVAL                         R30 9
      268 GETTABLEKS                       R30 R30 K54 ["Text"]
      270 DUPTABLE                         R31 K55 [{"LayoutOrder", "Text", "Size", "tag"}]
      271 LOADN                            R32 2
      272 SETTABLEKS                       R32 R31 K20 ["LayoutOrder"]
      274 SETTABLEKS                       R15 R31 K54 ["Text"]
      276 GETIMPORT                        R32 K46 [UDim2.fromOffset]
      278 MOVE                             R33 R21
      279 LOADN                            R34 0
      280 CALL                             R32 2 1
      281 SETTABLEKS                       R32 R31 K21 ["Size"]
      283 LOADK                            R32 K56 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      284 SETTABLEKS                       R32 R31 K22 ["tag"]
      286 CALL                             R29 2 -1
      287 CALL                             R26 -1 1
      288 JUMP                             ; [+23]
      289 GETUPVAL                         R26 8
      290 GETTABLEKS                       R26 R26 K18 ["createElement"]
      292 GETUPVAL                         R27 9
      293 GETTABLEKS                       R27 R27 K54 ["Text"]
      295 DUPTABLE                         R28 K55 [{"LayoutOrder", "Text", "Size", "tag"}]
      296 LOADN                            R29 2
      297 SETTABLEKS                       R29 R28 K20 ["LayoutOrder"]
      299 SETTABLEKS                       R15 R28 K54 ["Text"]
      301 GETIMPORT                        R29 K46 [UDim2.fromOffset]
      303 MOVE                             R30 R21
      304 LOADN                            R31 0
      305 CALL                             R29 2 1
      306 SETTABLEKS                       R29 R28 K21 ["Size"]
      308 LOADK                            R29 K56 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      309 SETTABLEKS                       R29 R28 K22 ["tag"]
      311 CALL                             R26 2 1
      312 SETTABLEKS                       R26 R25 K29 ["AssetName"]
      314 CALL                             R22 3 1
      315 SETTABLE                         R22 R4 R12
      316 JUMP                             ; [+72]
      317 JUMPIFNOT                        R17 ; [+46]
      318 GETUPVAL                         R18 8
      319 GETTABLEKS                       R18 R18 K18 ["createElement"]
      321 GETUPVAL                         R19 9
      322 GETTABLEKS                       R19 R19 K47 ["Tooltip"]
      324 DUPTABLE                         R20 K50 [{"LayoutOrder", "title", "side"}]
      325 SETTABLEKS                       R12 R20 K20 ["LayoutOrder"]
      327 SETTABLEKS                       R15 R20 K48 ["title"]
      329 GETUPVAL                         R21 9
      330 GETTABLEKS                       R21 R21 K51 ["Enums"]
      332 GETTABLEKS                       R21 R21 K52 ["PopoverSide"]
      334 GETTABLEKS                       R21 R21 K53 ["Bottom"]
      336 SETTABLEKS                       R21 R20 K49 ["side"]
      338 GETUPVAL                         R21 8
      339 GETTABLEKS                       R21 R21 K18 ["createElement"]
      341 GETUPVAL                         R22 9
      342 GETTABLEKS                       R22 R22 K54 ["Text"]
      344 DUPTABLE                         R23 K55 [{"LayoutOrder", "Text", "Size", "tag"}]
      345 SETTABLEKS                       R12 R23 K20 ["LayoutOrder"]
      347 SETTABLEKS                       R15 R23 K54 ["Text"]
      349 GETIMPORT                        R24 K26 [UDim2.new]
      351 LOADN                            R25 0
      352 MOVE                             R26 R16
      353 LOADN                            R27 1
      354 LOADN                            R28 0
      355 CALL                             R24 4 1
      356 SETTABLEKS                       R24 R23 K21 ["Size"]
      358 LOADK                            R24 K57 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      359 SETTABLEKS                       R24 R23 K22 ["tag"]
      361 CALL                             R21 2 -1
      362 CALL                             R18 -1 1
      363 JUMP                             ; [+24]
      364 GETUPVAL                         R18 8
      365 GETTABLEKS                       R18 R18 K18 ["createElement"]
      367 GETUPVAL                         R19 9
      368 GETTABLEKS                       R19 R19 K54 ["Text"]
      370 DUPTABLE                         R20 K55 [{"LayoutOrder", "Text", "Size", "tag"}]
      371 SETTABLEKS                       R12 R20 K20 ["LayoutOrder"]
      373 SETTABLEKS                       R15 R20 K54 ["Text"]
      375 GETIMPORT                        R21 K26 [UDim2.new]
      377 LOADN                            R22 0
      378 MOVE                             R23 R16
      379 LOADN                            R24 1
      380 LOADN                            R25 0
      381 CALL                             R21 4 1
      382 SETTABLEKS                       R21 R20 K21 ["Size"]
      384 LOADK                            R21 K57 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      385 SETTABLEKS                       R21 R20 K22 ["tag"]
      387 CALL                             R18 2 1
      388 SETTABLE                         R18 R4 R12
      389 FORGLOOP                         R9 2 ; [-376]
      391 RETURN                           R4 1

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
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R6 R0 K1 ["ItemPath"]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 5
       17 MOVE                             R7 R0
       18 MOVE                             R8 R4
       19 NAMECALL                         R9 R2 K2 ["getItemsCache"]
       21 CALL                             R9 1 1
       22 MOVE                             R10 R5
       23 CALL                             R6 4 1
       24 GETTABLEKS                       R8 R0 K1 ["ItemPath"]
       26 GETTABLE                         R7 R3 R8
       27 GETUPVAL                         R8 6
       28 GETTABLEKS                       R8 R8 K3 ["useRef"]
       30 LOADNIL                          R9
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 7
       33 MOVE                             R10 R8
       34 CALL                             R9 1 1
       35 GETUPVAL                         R10 8
       36 MOVE                             R11 R9
       37 GETTABLEKS                       R12 R0 K1 ["ItemPath"]
       39 CALL                             R10 2 1
       40 GETUPVAL                         R11 9
       41 GETUPVAL                         R12 10
       42 GETTABLEKS                       R12 R12 K4 ["MenuContext"]
       44 GETTABLEKS                       R12 R12 K5 ["Asset"]
       46 DUPTABLE                         R13 K8 [{"Path", "Index"}]
       47 GETTABLEKS                       R14 R0 K1 ["ItemPath"]
       49 SETTABLEKS                       R14 R13 K6 ["Path"]
       51 GETTABLEKS                       R14 R0 K9 ["Key"]
       53 SETTABLEKS                       R14 R13 K7 ["Index"]
       55 CALL                             R11 2 1
       56 GETUPVAL                         R12 6
       57 GETTABLEKS                       R12 R12 K10 ["createElement"]
       59 GETUPVAL                         R13 11
       60 GETTABLEKS                       R13 R13 K11 ["View"]
       62 DUPTABLE                         R14 K16 [{"LayoutOrder", "Position", "ref", "tag"}]
       63 GETTABLEKS                       R15 R0 K9 ["Key"]
       65 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       67 GETTABLEKS                       R15 R0 K13 ["Position"]
       69 SETTABLEKS                       R15 R14 K13 ["Position"]
       71 SETTABLEKS                       R8 R14 K14 ["ref"]
       73 NEWTABLE                         R15 8 0
       75 LOADB                            R16 1
       76 SETTABLEKS                       R16 R15 K17 ["am-size-itemrow auto-x"]
       78 SETTABLEKS                       R7 R15 K18 ["bg-action-soft-emphasis"]
       80 NOT                              R17 R7
       81 AND                              R16 R17 R9
       82 SETTABLEKS                       R16 R15 K19 ["bg-shift-200"]
       84 GETUPVAL                         R17 12
       85 CALL                             R17 0 1
       86 NOT                              R16 R17
       87 JUMPIF                           R16 ; [+1]
       88 NOT                              R16 R10
       89 SETTABLEKS                       R16 R15 K20 ["stroke-default stroke-thin"]
       91 GETUPVAL                         R17 12
       92 CALL                             R17 0 1
       93 AND                              R16 R17 R10
       94 SETTABLEKS                       R16 R15 K21 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
       96 SETTABLEKS                       R15 R14 K15 ["tag"]
       98 DUPTABLE                         R15 K23 [{"InputHandler"}]
       99 GETUPVAL                         R16 6
      100 GETTABLEKS                       R16 R16 K10 ["createElement"]
      102 LOADK                            R17 K24 ["ImageButton"]
      103 NEWTABLE                         R18 4 0
      105 GETUPVAL                         R19 6
      106 GETTABLEKS                       R19 R19 K25 ["Event"]
      108 GETTABLEKS                       R19 R19 K26 ["MouseButton2Click"]
      110 NEWCLOSURE                       R20 P0
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R1
      113 CAPTURE                          UPVAL U10
      114 CAPTURE                          VAL R11
      115 SETTABLE                         R20 R18 R19
      116 GETUPVAL                         R19 6
      117 GETTABLEKS                       R19 R19 K25 ["Event"]
      119 GETTABLEKS                       R19 R19 K27 ["MouseButton1Down"]
      121 NEWCLOSURE                       R20 P1
      122 CAPTURE                          VAL R1
      123 CAPTURE                          UPVAL U10
      124 CAPTURE                          VAL R0
      125 SETTABLE                         R20 R18 R19
      126 GETUPVAL                         R19 6
      127 GETTABLEKS                       R19 R19 K25 ["Event"]
      129 GETTABLEKS                       R19 R19 K28 ["MouseButton1Up"]
      131 NEWCLOSURE                       R20 P2
      132 CAPTURE                          VAL R1
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          VAL R0
      135 SETTABLE                         R20 R18 R19
      136 GETUPVAL                         R19 6
      137 GETTABLEKS                       R19 R19 K29 ["Tag"]
      139 LOADK                            R20 K30 ["gui-object-defaults size-full row align-x-left align-y-center"]
      140 SETTABLE                         R20 R18 R19
      141 MOVE                             R19 R6
      142 CALL                             R16 3 1
      143 SETTABLEKS                       R16 R15 K22 ["InputHandler"]
      145 CALL                             R12 3 -1
      146 RETURN                           R12 -1

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
       40 GETTABLEKS                       R7 R7 K15 ["EditNameInput_DEPRECATED"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["EditNameInput"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["Shared"]
       62 GETTABLEKS                       R9 R9 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K12 ["Src"]
       69 GETTABLEKS                       R10 R10 K18 ["Controllers"]
       71 GETTABLEKS                       R10 R10 K19 ["Input"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K12 ["Src"]
       78 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       80 GETTABLEKS                       R11 R11 K20 ["ItemsController"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K12 ["Src"]
       87 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R12 K22 ["useColumns"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K12 ["Src"]
       96 GETTABLEKS                       R13 R13 K21 ["Hooks"]
       98 GETTABLEKS                       R13 R13 K23 ["useContextMenu"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K12 ["Src"]
      105 GETTABLEKS                       R14 R14 K21 ["Hooks"]
      107 GETTABLEKS                       R14 R14 K24 ["useIsEditItem"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K12 ["Src"]
      114 GETTABLEKS                       R15 R15 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R15 K25 ["useItemHovered"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K12 ["Src"]
      123 GETTABLEKS                       R16 R16 K21 ["Hooks"]
      125 GETTABLEKS                       R16 R16 K26 ["useItemDragHovered"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K12 ["Src"]
      132 GETTABLEKS                       R17 R17 K21 ["Hooks"]
      134 GETTABLEKS                       R17 R17 K27 ["useItemSelection"]
      136 CALL                             R16 1 1
      137 GETIMPORT                        R17 K5 [require]
      139 GETTABLEKS                       R18 R0 K12 ["Src"]
      141 GETTABLEKS                       R18 R18 K21 ["Hooks"]
      143 GETTABLEKS                       R18 R18 K28 ["useRenamePlaceId_DEPRECATED"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K5 [require]
      148 GETTABLEKS                       R19 R0 K12 ["Src"]
      150 GETTABLEKS                       R19 R19 K29 ["Types"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R20 R0 K12 ["Src"]
      157 GETTABLEKS                       R20 R20 K30 ["Resources"]
      159 GETTABLEKS                       R20 R20 K31 ["Constants"]
      161 CALL                             R19 1 1
      162 GETTABLEKS                       R20 R3 K32 ["Util"]
      164 GETTABLEKS                       R20 R20 K33 ["GetTextSize"]
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R22 R0 K12 ["Src"]
      170 GETTABLEKS                       R22 R22 K32 ["Util"]
      172 GETTABLEKS                       R22 R22 K34 ["logIfDebug"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K5 [require]
      177 GETTABLEKS                       R23 R0 K12 ["Src"]
      179 GETTABLEKS                       R23 R23 K30 ["Resources"]
      181 GETTABLEKS                       R23 R23 K35 ["PluginStyles"]
      183 CALL                             R22 1 1
      184 GETIMPORT                        R23 K5 [require]
      186 GETTABLEKS                       R24 R0 K12 ["Src"]
      188 GETTABLEKS                       R24 R24 K36 ["Flags"]
      190 GETTABLEKS                       R24 R24 K37 ["getFFlagAmrOrganizationFoundation"]
      192 CALL                             R23 1 1
      193 GETIMPORT                        R24 K5 [require]
      195 GETTABLEKS                       R25 R0 K12 ["Src"]
      197 GETTABLEKS                       R25 R25 K36 ["Flags"]
      199 GETTABLEKS                       R25 R25 K38 ["getFFlagAmrRefactorEditNameInput"]
      201 CALL                             R24 1 1
      202 DUPCLOSURE                       R25 K39 [PROTO_0]
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R19
      207 DUPCLOSURE                       R26 K40 [PROTO_1]
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R21
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R20
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R6
      222 DUPCLOSURE                       R27 K41 [PROTO_5]
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R23
      236 RETURN                           R27 1
