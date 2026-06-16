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
        4 GETTABLEKS                       R6 R0 K0 ["ParentScope"]
        6 GETTABLEKS                       R6 R6 K1 ["Uid"]
        8 GETTABLEKS                       R7 R0 K2 ["ItemPath"]
       10 MOVE                             R8 R4
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 FORGPREP                         R8
       14 MOVE                             R15 R6
       15 MOVE                             R16 R7
       16 MOVE                             R17 R12
       17 NAMECALL                         R13 R1 K3 ["getItemField"]
       19 CALL                             R13 4 1
       20 GETUPVAL                         R14 1
       21 CALL                             R14 0 1
       22 JUMPIF                           R14 ; [+13]
       23 JUMPIF                           R13 ; [+12]
       24 GETUPVAL                         R14 2
       25 LOADK                            R16 K4 ["Cannot construct item row for item %* due to missing property %*"]
       26 MOVE                             R18 R7
       27 MOVE                             R19 R12
       28 NAMECALL                         R16 R16 K5 ["format"]
       30 CALL                             R16 3 1
       31 MOVE                             R15 R16
       32 CALL                             R14 1 0
       33 NEWTABLE                         R14 0 0
       35 RETURN                           R14 1
       36 LOADNIL                          R14
       37 GETUPVAL                         R15 1
       38 CALL                             R15 0 1
       39 JUMPIFNOT                        R15 ; [+11]
       40 JUMPIFNOT                        R13 ; [+6]
       41 GETUPVAL                         R15 3
       42 MOVE                             R16 R13
       43 MOVE                             R17 R12
       44 CALL                             R15 2 1
       45 MOVE                             R14 R15
       46 JUMP                             ; [+9]
       47 GETUPVAL                         R15 4
       48 GETTABLEKS                       R14 R15 K6 ["PlaceholderText"]
       50 JUMP                             ; [+5]
       51 GETUPVAL                         R15 3
       52 MOVE                             R16 R13
       53 MOVE                             R17 R12
       54 CALL                             R15 2 1
       55 MOVE                             R14 R15
       56 GETTABLE                         R15 R5 R11
       57 GETTABLEKS                       R15 R15 K7 ["Offset"]
       59 GETUPVAL                         R17 5
       60 MOVE                             R18 R14
       61 CALL                             R17 1 1
       62 GETTABLEKS                       R17 R17 K8 ["X"]
       64 GETUPVAL                         R20 6
       65 LOADK                            R22 K10 ["CellContentPadding"]
       66 NAMECALL                         R20 R20 K11 ["GetAttribute"]
       68 CALL                             R20 2 1
       69 MULK                             R19 R20 K9 [2]
       70 SUB                              R18 R15 R19
       71 JUMPIFLT                         R18 R17 ; [+2]
       73 LOADB                            R16 0 +1
       74 LOADB                            R16 1
       75 JUMPIFNOTEQKN                    R11 K12 [1] ; [+214]
       77 MOVE                             R19 R6
       78 MOVE                             R20 R7
       79 GETUPVAL                         R21 7
       80 GETTABLEKS                       R21 R21 K13 ["AssetInfoField"]
       82 GETTABLEKS                       R21 R21 K14 ["AssetType"]
       84 NAMECALL                         R17 R1 K3 ["getItemField"]
       86 CALL                             R17 4 1
       87 MOVE                             R20 R6
       88 MOVE                             R21 R7
       89 GETUPVAL                         R22 7
       90 GETTABLEKS                       R22 R22 K13 ["AssetInfoField"]
       92 GETTABLEKS                       R22 R22 K15 ["AssetId"]
       94 NAMECALL                         R18 R1 K3 ["getItemField"]
       96 CALL                             R18 4 1
       97 MOVE                             R21 R6
       98 MOVE                             R22 R7
       99 GETUPVAL                         R23 7
      100 GETTABLEKS                       R23 R23 K13 ["AssetInfoField"]
      102 GETTABLEKS                       R23 R23 K16 ["IsPackage"]
      104 NAMECALL                         R19 R1 K3 ["getItemField"]
      106 CALL                             R19 4 1
      107 GETUPVAL                         R22 6
      108 LOADK                            R24 K17 ["ListThumbnailSize"]
      109 NAMECALL                         R22 R22 K11 ["GetAttribute"]
      111 CALL                             R22 2 1
      112 SUB                              R21 R15 R22
      113 GETUPVAL                         R22 6
      114 LOADK                            R24 K10 ["CellContentPadding"]
      115 NAMECALL                         R22 R22 K11 ["GetAttribute"]
      117 CALL                             R22 2 1
      118 SUB                              R20 R21 R22
      119 GETUPVAL                         R21 8
      120 GETTABLEKS                       R21 R21 K18 ["createElement"]
      122 GETUPVAL                         R22 9
      123 GETTABLEKS                       R22 R22 K19 ["View"]
      125 DUPTABLE                         R23 K23 [{"LayoutOrder", "Size", "tag"}]
      126 SETTABLEKS                       R11 R23 K20 ["LayoutOrder"]
      128 GETIMPORT                        R24 K26 [UDim2.new]
      130 LOADN                            R25 0
      131 MOVE                             R26 R15
      132 LOADN                            R27 1
      133 LOADN                            R28 0
      134 CALL                             R24 4 1
      135 SETTABLEKS                       R24 R23 K21 ["Size"]
      137 LOADK                            R24 K27 ["padding-left-small row align-x-left align-y-center"]
      138 SETTABLEKS                       R24 R23 K22 ["tag"]
      140 DUPTABLE                         R24 K30 [{"ThumbnailContainer", "AssetName"}]
      141 GETUPVAL                         R25 8
      142 GETTABLEKS                       R25 R25 K18 ["createElement"]
      144 GETUPVAL                         R26 9
      145 GETTABLEKS                       R26 R26 K19 ["View"]
      147 DUPTABLE                         R27 K31 [{"LayoutOrder", "tag"}]
      148 LOADN                            R28 1
      149 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      151 LOADK                            R28 K32 ["size-900 bg-foreground-contrast radius-small"]
      152 SETTABLEKS                       R28 R27 K22 ["tag"]
      154 DUPTABLE                         R28 K35 [{"Thumbnail", "PackageLinkIcon"}]
      155 GETUPVAL                         R29 8
      156 GETTABLEKS                       R29 R29 K18 ["createElement"]
      158 GETUPVAL                         R30 10
      159 DUPTABLE                         R31 K36 [{"AssetId", "AssetType"}]
      160 SETTABLEKS                       R18 R31 K15 ["AssetId"]
      162 SETTABLEKS                       R17 R31 K14 ["AssetType"]
      164 CALL                             R29 2 1
      165 SETTABLEKS                       R29 R28 K33 ["Thumbnail"]
      167 JUMPIFNOT                        R19 ; [+15]
      168 GETUPVAL                         R29 8
      169 GETTABLEKS                       R29 R29 K18 ["createElement"]
      171 GETUPVAL                         R30 9
      172 GETTABLEKS                       R30 R30 K37 ["Image"]
      174 DUPTABLE                         R31 K39 [{"ZIndex", "tag"}]
      175 LOADN                            R32 2
      176 SETTABLEKS                       R32 R31 K38 ["ZIndex"]
      178 LOADK                            R32 K40 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      179 SETTABLEKS                       R32 R31 K22 ["tag"]
      181 CALL                             R29 2 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R29
      184 SETTABLEKS                       R29 R28 K34 ["PackageLinkIcon"]
      186 CALL                             R25 3 1
      187 SETTABLEKS                       R25 R24 K28 ["ThumbnailContainer"]
      189 JUMPIFNOT                        R2 ; [+25]
      190 GETUPVAL                         R25 8
      191 GETTABLEKS                       R25 R25 K18 ["createElement"]
      193 GETUPVAL                         R26 11
      194 DUPTABLE                         R27 K43 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      195 LOADN                            R28 2
      196 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      198 SETTABLEKS                       R14 R27 K41 ["InitialText"]
      200 SETTABLEKS                       R17 R27 K42 ["ItemType"]
      202 SETTABLEKS                       R7 R27 K2 ["ItemPath"]
      204 GETIMPORT                        R28 K26 [UDim2.new]
      206 LOADN                            R29 0
      207 MOVE                             R30 R20
      208 LOADN                            R31 1
      209 LOADN                            R32 0
      210 CALL                             R28 4 1
      211 SETTABLEKS                       R28 R27 K21 ["Size"]
      213 CALL                             R25 2 1
      214 JUMP                             ; [+70]
      215 JUMPIFNOT                        R16 ; [+46]
      216 GETUPVAL                         R25 8
      217 GETTABLEKS                       R25 R25 K18 ["createElement"]
      219 GETUPVAL                         R26 9
      220 GETTABLEKS                       R26 R26 K44 ["Tooltip"]
      222 DUPTABLE                         R27 K47 [{"LayoutOrder", "title", "side"}]
      223 LOADN                            R28 2
      224 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      226 SETTABLEKS                       R14 R27 K45 ["title"]
      228 GETUPVAL                         R28 9
      229 GETTABLEKS                       R28 R28 K48 ["Enums"]
      231 GETTABLEKS                       R28 R28 K49 ["PopoverSide"]
      233 GETTABLEKS                       R28 R28 K50 ["Bottom"]
      235 SETTABLEKS                       R28 R27 K46 ["side"]
      237 GETUPVAL                         R28 8
      238 GETTABLEKS                       R28 R28 K18 ["createElement"]
      240 GETUPVAL                         R29 9
      241 GETTABLEKS                       R29 R29 K51 ["Text"]
      243 DUPTABLE                         R30 K52 [{"LayoutOrder", "Text", "Size", "tag"}]
      244 LOADN                            R31 2
      245 SETTABLEKS                       R31 R30 K20 ["LayoutOrder"]
      247 SETTABLEKS                       R14 R30 K51 ["Text"]
      249 GETIMPORT                        R31 K54 [UDim2.fromOffset]
      251 MOVE                             R32 R20
      252 LOADN                            R33 0
      253 CALL                             R31 2 1
      254 SETTABLEKS                       R31 R30 K21 ["Size"]
      256 LOADK                            R31 K55 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      257 SETTABLEKS                       R31 R30 K22 ["tag"]
      259 CALL                             R28 2 -1
      260 CALL                             R25 -1 1
      261 JUMP                             ; [+23]
      262 GETUPVAL                         R25 8
      263 GETTABLEKS                       R25 R25 K18 ["createElement"]
      265 GETUPVAL                         R26 9
      266 GETTABLEKS                       R26 R26 K51 ["Text"]
      268 DUPTABLE                         R27 K52 [{"LayoutOrder", "Text", "Size", "tag"}]
      269 LOADN                            R28 2
      270 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      272 SETTABLEKS                       R14 R27 K51 ["Text"]
      274 GETIMPORT                        R28 K54 [UDim2.fromOffset]
      276 MOVE                             R29 R20
      277 LOADN                            R30 0
      278 CALL                             R28 2 1
      279 SETTABLEKS                       R28 R27 K21 ["Size"]
      281 LOADK                            R28 K55 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      282 SETTABLEKS                       R28 R27 K22 ["tag"]
      284 CALL                             R25 2 1
      285 SETTABLEKS                       R25 R24 K29 ["AssetName"]
      287 CALL                             R21 3 1
      288 SETTABLE                         R21 R3 R11
      289 JUMP                             ; [+72]
      290 JUMPIFNOT                        R16 ; [+46]
      291 GETUPVAL                         R17 8
      292 GETTABLEKS                       R17 R17 K18 ["createElement"]
      294 GETUPVAL                         R18 9
      295 GETTABLEKS                       R18 R18 K44 ["Tooltip"]
      297 DUPTABLE                         R19 K47 [{"LayoutOrder", "title", "side"}]
      298 SETTABLEKS                       R11 R19 K20 ["LayoutOrder"]
      300 SETTABLEKS                       R14 R19 K45 ["title"]
      302 GETUPVAL                         R20 9
      303 GETTABLEKS                       R20 R20 K48 ["Enums"]
      305 GETTABLEKS                       R20 R20 K49 ["PopoverSide"]
      307 GETTABLEKS                       R20 R20 K50 ["Bottom"]
      309 SETTABLEKS                       R20 R19 K46 ["side"]
      311 GETUPVAL                         R20 8
      312 GETTABLEKS                       R20 R20 K18 ["createElement"]
      314 GETUPVAL                         R21 9
      315 GETTABLEKS                       R21 R21 K51 ["Text"]
      317 DUPTABLE                         R22 K52 [{"LayoutOrder", "Text", "Size", "tag"}]
      318 SETTABLEKS                       R11 R22 K20 ["LayoutOrder"]
      320 SETTABLEKS                       R14 R22 K51 ["Text"]
      322 GETIMPORT                        R23 K26 [UDim2.new]
      324 LOADN                            R24 0
      325 MOVE                             R25 R15
      326 LOADN                            R26 1
      327 LOADN                            R27 0
      328 CALL                             R23 4 1
      329 SETTABLEKS                       R23 R22 K21 ["Size"]
      331 LOADK                            R23 K56 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      332 SETTABLEKS                       R23 R22 K22 ["tag"]
      334 CALL                             R20 2 -1
      335 CALL                             R17 -1 1
      336 JUMP                             ; [+24]
      337 GETUPVAL                         R17 8
      338 GETTABLEKS                       R17 R17 K18 ["createElement"]
      340 GETUPVAL                         R18 9
      341 GETTABLEKS                       R18 R18 K51 ["Text"]
      343 DUPTABLE                         R19 K52 [{"LayoutOrder", "Text", "Size", "tag"}]
      344 SETTABLEKS                       R11 R19 K20 ["LayoutOrder"]
      346 SETTABLEKS                       R14 R19 K51 ["Text"]
      348 GETIMPORT                        R20 K26 [UDim2.new]
      350 LOADN                            R21 0
      351 MOVE                             R22 R15
      352 LOADN                            R23 1
      353 LOADN                            R24 0
      354 CALL                             R20 4 1
      355 SETTABLEKS                       R20 R19 K21 ["Size"]
      357 LOADK                            R20 K56 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      358 SETTABLEKS                       R20 R19 K22 ["tag"]
      360 CALL                             R17 2 1
      361 SETTABLE                         R17 R3 R11
      362 FORGLOOP                         R8 2 ; [-349]
      364 RETURN                           R3 1

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
       25 GETTABLEKS                       R7 R7 K3 ["useRef"]
       27 LOADNIL                          R8
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 6
       30 MOVE                             R9 R7
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 7
       33 MOVE                             R10 R8
       34 GETTABLEKS                       R11 R0 K1 ["ItemPath"]
       36 CALL                             R9 2 1
       37 GETUPVAL                         R10 8
       38 GETUPVAL                         R11 9
       39 GETTABLEKS                       R11 R11 K4 ["MenuContext"]
       41 GETTABLEKS                       R11 R11 K5 ["Asset"]
       43 DUPTABLE                         R12 K8 [{"Path", "Index"}]
       44 GETTABLEKS                       R13 R0 K1 ["ItemPath"]
       46 SETTABLEKS                       R13 R12 K6 ["Path"]
       48 GETTABLEKS                       R13 R0 K9 ["Key"]
       50 SETTABLEKS                       R13 R12 K7 ["Index"]
       52 CALL                             R10 2 1
       53 GETUPVAL                         R11 5
       54 GETTABLEKS                       R11 R11 K10 ["createElement"]
       56 GETUPVAL                         R12 10
       57 GETTABLEKS                       R12 R12 K11 ["View"]
       59 DUPTABLE                         R13 K16 [{"LayoutOrder", "Position", "ref", "tag"}]
       60 GETTABLEKS                       R14 R0 K9 ["Key"]
       62 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       64 GETTABLEKS                       R14 R0 K13 ["Position"]
       66 SETTABLEKS                       R14 R13 K13 ["Position"]
       68 SETTABLEKS                       R7 R13 K14 ["ref"]
       70 NEWTABLE                         R14 8 0
       72 LOADB                            R15 1
       73 SETTABLEKS                       R15 R14 K17 ["am-size-itemrow auto-x"]
       75 SETTABLEKS                       R6 R14 K18 ["bg-action-soft-emphasis"]
       77 NOT                              R16 R6
       78 AND                              R15 R16 R8
       79 SETTABLEKS                       R15 R14 K19 ["bg-shift-200"]
       81 GETUPVAL                         R16 11
       82 CALL                             R16 0 1
       83 NOT                              R15 R16
       84 JUMPIF                           R15 ; [+1]
       85 NOT                              R15 R9
       86 SETTABLEKS                       R15 R14 K20 ["stroke-default stroke-thin"]
       88 GETUPVAL                         R16 11
       89 CALL                             R16 0 1
       90 AND                              R15 R16 R9
       91 SETTABLEKS                       R15 R14 K21 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
       93 SETTABLEKS                       R14 R13 K15 ["tag"]
       95 DUPTABLE                         R14 K23 [{"InputHandler"}]
       96 GETUPVAL                         R15 5
       97 GETTABLEKS                       R15 R15 K10 ["createElement"]
       99 LOADK                            R16 K24 ["ImageButton"]
      100 NEWTABLE                         R17 4 0
      102 GETUPVAL                         R18 5
      103 GETTABLEKS                       R18 R18 K25 ["Event"]
      105 GETTABLEKS                       R18 R18 K26 ["MouseButton2Click"]
      107 NEWCLOSURE                       R19 P0
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R1
      110 CAPTURE                          UPVAL U9
      111 CAPTURE                          VAL R10
      112 SETTABLE                         R19 R17 R18
      113 GETUPVAL                         R18 5
      114 GETTABLEKS                       R18 R18 K25 ["Event"]
      116 GETTABLEKS                       R18 R18 K27 ["MouseButton1Down"]
      118 NEWCLOSURE                       R19 P1
      119 CAPTURE                          VAL R1
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          VAL R0
      122 SETTABLE                         R19 R17 R18
      123 GETUPVAL                         R18 5
      124 GETTABLEKS                       R18 R18 K25 ["Event"]
      126 GETTABLEKS                       R18 R18 K28 ["MouseButton1Up"]
      128 NEWCLOSURE                       R19 P2
      129 CAPTURE                          VAL R1
      130 CAPTURE                          UPVAL U9
      131 CAPTURE                          VAL R0
      132 SETTABLE                         R19 R17 R18
      133 GETUPVAL                         R18 5
      134 GETTABLEKS                       R18 R18 K29 ["Tag"]
      136 LOADK                            R19 K30 ["gui-object-defaults size-full row align-x-left align-y-center"]
      137 SETTABLE                         R19 R17 R18
      138 MOVE                             R18 R5
      139 CALL                             R15 3 1
      140 SETTABLEKS                       R15 R14 K22 ["InputHandler"]
      142 CALL                             R11 3 -1
      143 RETURN                           R11 -1

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
      130 GETTABLEKS                       R17 R17 K27 ["Types"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R18 R0 K12 ["Src"]
      137 GETTABLEKS                       R18 R18 K28 ["Resources"]
      139 GETTABLEKS                       R18 R18 K29 ["Constants"]
      141 CALL                             R17 1 1
      142 GETTABLEKS                       R18 R3 K30 ["Util"]
      144 GETTABLEKS                       R18 R18 K31 ["GetTextSize"]
      146 GETIMPORT                        R19 K5 [require]
      148 GETTABLEKS                       R20 R0 K12 ["Src"]
      150 GETTABLEKS                       R20 R20 K30 ["Util"]
      152 GETTABLEKS                       R20 R20 K32 ["logIfDebug"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R21 R0 K12 ["Src"]
      159 GETTABLEKS                       R21 R21 K28 ["Resources"]
      161 GETTABLEKS                       R21 R21 K33 ["PluginStyles"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K5 [require]
      166 GETTABLEKS                       R22 R0 K12 ["Src"]
      168 GETTABLEKS                       R22 R22 K34 ["Flags"]
      170 GETTABLEKS                       R22 R22 K35 ["getFFlagAmrOrganizationFoundation"]
      172 CALL                             R21 1 1
      173 DUPCLOSURE                       R22 K36 [PROTO_0]
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R17
      178 DUPCLOSURE                       R23 K37 [PROTO_1]
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R6
      191 DUPCLOSURE                       R24 K38 [PROTO_5]
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R21
      204 RETURN                           R24 1
