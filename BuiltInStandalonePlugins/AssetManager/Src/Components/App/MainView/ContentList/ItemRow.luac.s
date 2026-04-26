PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
        7 GETTABLEKS                       R3 R4 K2 ["Creator"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+11]
       11 GETTABLEKS                       R4 R0 K3 ["Name"]
       13 JUMPIFEQKS                       R4 K4 [""] ; [+4]
       15 GETTABLEKS                       R3 R0 K3 ["Name"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R0 K5 ["Id"]
       20 RETURN                           R3 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R3 R4 K6 ["Modified"]
       26 JUMPIFEQ                         R1 R3 ; [+8]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
       31 GETTABLEKS                       R3 R4 K7 ["Created"]
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
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
       51 GETTABLEKS                       R3 R4 K15 ["AssetType"]
       53 JUMPIFNOTEQ                      R1 R3 ; [+7]
       55 LOADK                            R5 K15 ["AssetType"]
       56 MOVE                             R6 R0
       57 NAMECALL                         R3 R2 K16 ["getText"]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R4 R5 K1 ["AssetInfoField"]
       64 GETTABLEKS                       R3 R4 K17 ["Source"]
       66 JUMPIFNOTEQ                      R1 R3 ; [+7]
       68 LOADK                            R5 K18 ["AssetSource"]
       69 MOVE                             R6 R0
       70 NAMECALL                         R3 R2 K16 ["getText"]
       72 CALL                             R3 3 -1
       73 RETURN                           R3 -1
       74 FASTCALL1                        TOSTRING R0 ; [+3]
       75 MOVE                             R4 R0
       76 GETIMPORT                        R3 K20 [tostring]
       78 CALL                             R3 1 1
       79 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 2
        4 GETTABLEKS                       R8 R0 K0 ["ParentScope"]
        6 GETTABLEKS                       R7 R8 K1 ["Uid"]
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
       20 JUMPIF                           R14 ; [+12]
       21 GETUPVAL                         R15 1
       22 LOADK                            R17 K4 ["Cannot construct item row for item %* due to missing property %*"]
       23 MOVE                             R19 R8
       24 MOVE                             R20 R13
       25 NAMECALL                         R17 R17 K5 ["format"]
       27 CALL                             R17 3 1
       28 MOVE                             R16 R17
       29 CALL                             R15 1 0
       30 NEWTABLE                         R15 0 0
       32 RETURN                           R15 1
       33 GETUPVAL                         R15 2
       34 MOVE                             R16 R14
       35 MOVE                             R17 R13
       36 CALL                             R15 2 1
       37 GETTABLE                         R17 R6 R12
       38 GETTABLEKS                       R16 R17 K6 ["Offset"]
       40 GETUPVAL                         R19 3
       41 MOVE                             R20 R15
       42 CALL                             R19 1 1
       43 GETTABLEKS                       R18 R19 K7 ["X"]
       45 GETUPVAL                         R21 4
       46 LOADK                            R23 K9 ["CellContentPadding"]
       47 NAMECALL                         R21 R21 K10 ["GetAttribute"]
       49 CALL                             R21 2 1
       50 MULK                             R20 R21 K8 [2]
       51 SUB                              R19 R16 R20
       52 JUMPIFLT                         R19 R18 ; [+2]
       54 LOADB                            R17 0 +1
       55 LOADB                            R17 1
       56 JUMPIFNOTEQKN                    R12 K11 [1] ; [+241]
       58 MOVE                             R20 R7
       59 MOVE                             R21 R8
       60 GETUPVAL                         R24 5
       61 GETTABLEKS                       R23 R24 K12 ["AssetInfoField"]
       63 GETTABLEKS                       R22 R23 K13 ["AssetType"]
       65 NAMECALL                         R18 R2 K3 ["getItemField"]
       67 CALL                             R18 4 1
       68 MOVE                             R21 R7
       69 MOVE                             R22 R8
       70 GETUPVAL                         R25 5
       71 GETTABLEKS                       R24 R25 K12 ["AssetInfoField"]
       73 GETTABLEKS                       R23 R24 K14 ["AssetId"]
       75 NAMECALL                         R19 R2 K3 ["getItemField"]
       77 CALL                             R19 4 1
       78 MOVE                             R22 R7
       79 MOVE                             R23 R8
       80 GETUPVAL                         R26 5
       81 GETTABLEKS                       R25 R26 K12 ["AssetInfoField"]
       83 GETTABLEKS                       R24 R25 K15 ["IsPackage"]
       85 NAMECALL                         R20 R2 K3 ["getItemField"]
       87 CALL                             R20 4 1
       88 GETUPVAL                         R23 4
       89 LOADK                            R25 K16 ["ListThumbnailSize"]
       90 NAMECALL                         R23 R23 K10 ["GetAttribute"]
       92 CALL                             R23 2 1
       93 SUB                              R22 R16 R23
       94 GETUPVAL                         R23 4
       95 LOADK                            R25 K9 ["CellContentPadding"]
       96 NAMECALL                         R23 R23 K10 ["GetAttribute"]
       98 CALL                             R23 2 1
       99 SUB                              R21 R22 R23
      100 GETUPVAL                         R23 6
      101 GETTABLEKS                       R22 R23 K17 ["createElement"]
      103 GETUPVAL                         R24 7
      104 GETTABLEKS                       R23 R24 K18 ["View"]
      106 DUPTABLE                         R24 K22 [{"LayoutOrder", "Size", "tag"}]
      107 SETTABLEKS                       R12 R24 K19 ["LayoutOrder"]
      109 GETIMPORT                        R25 K25 [UDim2.new]
      111 LOADN                            R26 0
      112 MOVE                             R27 R16
      113 LOADN                            R28 1
      114 LOADN                            R29 0
      115 CALL                             R25 4 1
      116 SETTABLEKS                       R25 R24 K20 ["Size"]
      118 LOADK                            R25 K26 ["padding-left-small row align-x-left align-y-center"]
      119 SETTABLEKS                       R25 R24 K21 ["tag"]
      121 DUPTABLE                         R25 K29 [{"ThumbnailContainer", "AssetName"}]
      122 GETUPVAL                         R27 6
      123 GETTABLEKS                       R26 R27 K17 ["createElement"]
      125 GETUPVAL                         R28 7
      126 GETTABLEKS                       R27 R28 K18 ["View"]
      128 DUPTABLE                         R28 K30 [{"LayoutOrder", "tag"}]
      129 LOADN                            R29 1
      130 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      132 LOADK                            R29 K31 ["size-900 bg-foreground-contrast radius-small"]
      133 SETTABLEKS                       R29 R28 K21 ["tag"]
      135 DUPTABLE                         R29 K34 [{"Thumbnail", "PackageLinkIcon"}]
      136 GETUPVAL                         R31 6
      137 GETTABLEKS                       R30 R31 K17 ["createElement"]
      139 GETUPVAL                         R31 8
      140 DUPTABLE                         R32 K35 [{"AssetId", "AssetType"}]
      141 SETTABLEKS                       R19 R32 K14 ["AssetId"]
      143 SETTABLEKS                       R18 R32 K13 ["AssetType"]
      145 CALL                             R30 2 1
      146 SETTABLEKS                       R30 R29 K32 ["Thumbnail"]
      148 JUMPIFNOT                        R20 ; [+15]
      149 GETUPVAL                         R31 6
      150 GETTABLEKS                       R30 R31 K17 ["createElement"]
      152 GETUPVAL                         R32 7
      153 GETTABLEKS                       R31 R32 K36 ["Image"]
      155 DUPTABLE                         R32 K38 [{"ZIndex", "tag"}]
      156 LOADN                            R33 2
      157 SETTABLEKS                       R33 R32 K37 ["ZIndex"]
      159 LOADK                            R33 K39 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      160 SETTABLEKS                       R33 R32 K21 ["tag"]
      162 CALL                             R30 2 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R30
      165 SETTABLEKS                       R30 R29 K33 ["PackageLinkIcon"]
      167 CALL                             R26 3 1
      168 SETTABLEKS                       R26 R25 K27 ["ThumbnailContainer"]
      170 GETUPVAL                         R27 9
      171 CALL                             R27 0 1
      172 JUMPIFNOT                        R27 ; [+26]
      173 JUMPIFNOT                        R3 ; [+25]
      174 GETUPVAL                         R27 6
      175 GETTABLEKS                       R26 R27 K17 ["createElement"]
      177 GETUPVAL                         R27 10
      178 DUPTABLE                         R28 K42 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      179 LOADN                            R29 2
      180 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      182 SETTABLEKS                       R15 R28 K40 ["InitialText"]
      184 SETTABLEKS                       R18 R28 K41 ["ItemType"]
      186 SETTABLEKS                       R8 R28 K2 ["ItemPath"]
      188 GETIMPORT                        R29 K25 [UDim2.new]
      190 LOADN                            R30 0
      191 MOVE                             R31 R21
      192 LOADN                            R32 1
      193 LOADN                            R33 0
      194 CALL                             R29 4 1
      195 SETTABLEKS                       R29 R28 K20 ["Size"]
      197 CALL                             R26 2 1
      198 JUMP                             ; [+94]
      199 GETUPVAL                         R27 9
      200 CALL                             R27 0 1
      201 JUMPIF                           R27 ; [+21]
      202 JUMPIFNOTEQ                      R19 R1 ; [+20]
      204 GETUPVAL                         R27 6
      205 GETTABLEKS                       R26 R27 K17 ["createElement"]
      207 GETUPVAL                         R27 11
      208 DUPTABLE                         R28 K43 [{"LayoutOrder", "InitialText", "Size"}]
      209 LOADN                            R29 2
      210 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      212 SETTABLEKS                       R15 R28 K40 ["InitialText"]
      214 GETIMPORT                        R29 K45 [UDim2.fromOffset]
      216 MOVE                             R30 R21
      217 LOADN                            R31 0
      218 CALL                             R29 2 1
      219 SETTABLEKS                       R29 R28 K20 ["Size"]
      221 CALL                             R26 2 1
      222 JUMP                             ; [+70]
      223 JUMPIFNOT                        R17 ; [+46]
      224 GETUPVAL                         R27 6
      225 GETTABLEKS                       R26 R27 K17 ["createElement"]
      227 GETUPVAL                         R28 7
      228 GETTABLEKS                       R27 R28 K46 ["Tooltip"]
      230 DUPTABLE                         R28 K49 [{"LayoutOrder", "title", "side"}]
      231 LOADN                            R29 2
      232 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      234 SETTABLEKS                       R15 R28 K47 ["title"]
      236 GETUPVAL                         R32 7
      237 GETTABLEKS                       R31 R32 K50 ["Enums"]
      239 GETTABLEKS                       R30 R31 K51 ["PopoverSide"]
      241 GETTABLEKS                       R29 R30 K52 ["Bottom"]
      243 SETTABLEKS                       R29 R28 K48 ["side"]
      245 GETUPVAL                         R30 6
      246 GETTABLEKS                       R29 R30 K17 ["createElement"]
      248 GETUPVAL                         R31 7
      249 GETTABLEKS                       R30 R31 K53 ["Text"]
      251 DUPTABLE                         R31 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      252 LOADN                            R32 2
      253 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      255 SETTABLEKS                       R15 R31 K53 ["Text"]
      257 GETIMPORT                        R32 K45 [UDim2.fromOffset]
      259 MOVE                             R33 R21
      260 LOADN                            R34 0
      261 CALL                             R32 2 1
      262 SETTABLEKS                       R32 R31 K20 ["Size"]
      264 LOADK                            R32 K55 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      265 SETTABLEKS                       R32 R31 K21 ["tag"]
      267 CALL                             R29 2 -1
      268 CALL                             R26 -1 1
      269 JUMP                             ; [+23]
      270 GETUPVAL                         R27 6
      271 GETTABLEKS                       R26 R27 K17 ["createElement"]
      273 GETUPVAL                         R28 7
      274 GETTABLEKS                       R27 R28 K53 ["Text"]
      276 DUPTABLE                         R28 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      277 LOADN                            R29 2
      278 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      280 SETTABLEKS                       R15 R28 K53 ["Text"]
      282 GETIMPORT                        R29 K45 [UDim2.fromOffset]
      284 MOVE                             R30 R21
      285 LOADN                            R31 0
      286 CALL                             R29 2 1
      287 SETTABLEKS                       R29 R28 K20 ["Size"]
      289 LOADK                            R29 K55 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      290 SETTABLEKS                       R29 R28 K21 ["tag"]
      292 CALL                             R26 2 1
      293 SETTABLEKS                       R26 R25 K28 ["AssetName"]
      295 CALL                             R22 3 1
      296 SETTABLE                         R22 R4 R12
      297 JUMP                             ; [+72]
      298 JUMPIFNOT                        R17 ; [+46]
      299 GETUPVAL                         R19 6
      300 GETTABLEKS                       R18 R19 K17 ["createElement"]
      302 GETUPVAL                         R20 7
      303 GETTABLEKS                       R19 R20 K46 ["Tooltip"]
      305 DUPTABLE                         R20 K49 [{"LayoutOrder", "title", "side"}]
      306 SETTABLEKS                       R12 R20 K19 ["LayoutOrder"]
      308 SETTABLEKS                       R15 R20 K47 ["title"]
      310 GETUPVAL                         R24 7
      311 GETTABLEKS                       R23 R24 K50 ["Enums"]
      313 GETTABLEKS                       R22 R23 K51 ["PopoverSide"]
      315 GETTABLEKS                       R21 R22 K52 ["Bottom"]
      317 SETTABLEKS                       R21 R20 K48 ["side"]
      319 GETUPVAL                         R22 6
      320 GETTABLEKS                       R21 R22 K17 ["createElement"]
      322 GETUPVAL                         R23 7
      323 GETTABLEKS                       R22 R23 K53 ["Text"]
      325 DUPTABLE                         R23 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      326 SETTABLEKS                       R12 R23 K19 ["LayoutOrder"]
      328 SETTABLEKS                       R15 R23 K53 ["Text"]
      330 GETIMPORT                        R24 K25 [UDim2.new]
      332 LOADN                            R25 0
      333 MOVE                             R26 R16
      334 LOADN                            R27 1
      335 LOADN                            R28 0
      336 CALL                             R24 4 1
      337 SETTABLEKS                       R24 R23 K20 ["Size"]
      339 LOADK                            R24 K56 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      340 SETTABLEKS                       R24 R23 K21 ["tag"]
      342 CALL                             R21 2 -1
      343 CALL                             R18 -1 1
      344 JUMP                             ; [+24]
      345 GETUPVAL                         R19 6
      346 GETTABLEKS                       R18 R19 K17 ["createElement"]
      348 GETUPVAL                         R20 7
      349 GETTABLEKS                       R19 R20 K53 ["Text"]
      351 DUPTABLE                         R20 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      352 SETTABLEKS                       R12 R20 K19 ["LayoutOrder"]
      354 SETTABLEKS                       R15 R20 K53 ["Text"]
      356 GETIMPORT                        R21 K25 [UDim2.new]
      358 LOADN                            R22 0
      359 MOVE                             R23 R16
      360 LOADN                            R24 1
      361 LOADN                            R25 0
      362 CALL                             R21 4 1
      363 SETTABLEKS                       R21 R20 K20 ["Size"]
      365 LOADK                            R21 K56 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      366 SETTABLEKS                       R21 R20 K21 ["tag"]
      368 CALL                             R18 2 1
      369 SETTABLE                         R18 R4 R12
      370 FORGLOOP                         R9 2 ; [-357]
      372 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ItemPath"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["UiZone"]
        7 GETTABLEKS                       R3 R4 K2 ["Browser"]
        9 MOVE                             R4 R0
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K3 ["Key"]
       13 GETUPVAL                         R6 3
       14 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       16 CALL                             R1 5 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
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
       24 GETTABLEKS                       R9 R0 K1 ["ItemPath"]
       26 GETTABLE                         R8 R3 R9
       27 JUMPIFNOT                        R8 ; [+2]
       28 LOADK                            R7 K3 ["bg-action-selected"]
       29 JUMP                             ; [+1]
       30 LOADK                            R7 K4 ["am-hover"]
       31 GETUPVAL                         R9 6
       32 GETTABLEKS                       R8 R9 K5 ["useRef"]
       34 LOADNIL                          R9
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 7
       37 MOVE                             R10 R8
       38 GETTABLEKS                       R11 R0 K1 ["ItemPath"]
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 8
       42 GETUPVAL                         R13 9
       43 GETTABLEKS                       R12 R13 K6 ["MenuContext"]
       45 GETTABLEKS                       R11 R12 K7 ["Asset"]
       47 DUPTABLE                         R12 K10 [{"Path", "Index"}]
       48 GETTABLEKS                       R13 R0 K1 ["ItemPath"]
       50 SETTABLEKS                       R13 R12 K8 ["Path"]
       52 GETTABLEKS                       R13 R0 K11 ["Key"]
       54 SETTABLEKS                       R13 R12 K9 ["Index"]
       56 CALL                             R10 2 1
       57 GETUPVAL                         R12 6
       58 GETTABLEKS                       R11 R12 K12 ["createElement"]
       60 GETUPVAL                         R13 10
       61 GETTABLEKS                       R12 R13 K13 ["View"]
       63 DUPTABLE                         R13 K18 [{"LayoutOrder", "Position", "ref", "tag"}]
       64 GETTABLEKS                       R14 R0 K11 ["Key"]
       66 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       68 GETTABLEKS                       R14 R0 K15 ["Position"]
       70 SETTABLEKS                       R14 R13 K15 ["Position"]
       72 SETTABLEKS                       R8 R13 K16 ["ref"]
       74 NEWTABLE                         R14 4 0
       76 LOADB                            R15 1
       77 SETTABLEKS                       R15 R14 K19 ["am-size-itemrow auto-x"]
       79 LOADB                            R15 1
       80 SETTABLE                         R15 R14 R7
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
       93 SETTABLEKS                       R14 R13 K17 ["tag"]
       95 DUPTABLE                         R14 K23 [{"InputHandler"}]
       96 GETUPVAL                         R16 6
       97 GETTABLEKS                       R15 R16 K12 ["createElement"]
       99 LOADK                            R16 K24 ["ImageButton"]
      100 NEWTABLE                         R17 4 0
      102 GETUPVAL                         R20 6
      103 GETTABLEKS                       R19 R20 K25 ["Event"]
      105 GETTABLEKS                       R18 R19 K26 ["MouseButton2Click"]
      107 NEWCLOSURE                       R19 P0
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R1
      110 CAPTURE                          UPVAL U9
      111 CAPTURE                          VAL R10
      112 SETTABLE                         R19 R17 R18
      113 GETUPVAL                         R20 6
      114 GETTABLEKS                       R19 R20 K25 ["Event"]
      116 GETTABLEKS                       R18 R19 K27 ["MouseButton1Down"]
      118 NEWCLOSURE                       R19 P1
      119 CAPTURE                          VAL R1
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          VAL R0
      122 SETTABLE                         R19 R17 R18
      123 GETUPVAL                         R20 6
      124 GETTABLEKS                       R19 R20 K25 ["Event"]
      126 GETTABLEKS                       R18 R19 K28 ["MouseButton1Up"]
      128 NEWCLOSURE                       R19 P2
      129 CAPTURE                          VAL R1
      130 CAPTURE                          UPVAL U9
      131 CAPTURE                          VAL R0
      132 SETTABLE                         R19 R17 R18
      133 GETUPVAL                         R19 6
      134 GETTABLEKS                       R18 R19 K29 ["Tag"]
      136 LOADK                            R19 K30 ["gui-object-defaults size-full row align-x-left align-y-center"]
      137 SETTABLE                         R19 R17 R18
      138 MOVE                             R18 R6
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R10 R0 K12 ["Src"]
       36 GETTABLEKS                       R9 R10 K13 ["Components"]
       38 GETTABLEKS                       R8 R9 K14 ["Shared"]
       40 GETTABLEKS                       R7 R8 K15 ["EditNameInput_DEPRECATED"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R11 R0 K12 ["Src"]
       47 GETTABLEKS                       R10 R11 K13 ["Components"]
       49 GETTABLEKS                       R9 R10 K14 ["Shared"]
       51 GETTABLEKS                       R8 R9 K16 ["EditNameInput"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R12 R0 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K13 ["Components"]
       60 GETTABLEKS                       R10 R11 K14 ["Shared"]
       62 GETTABLEKS                       R9 R10 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K12 ["Src"]
       69 GETTABLEKS                       R11 R12 K18 ["Controllers"]
       71 GETTABLEKS                       R10 R11 K19 ["Input"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R13 R0 K12 ["Src"]
       78 GETTABLEKS                       R12 R13 K18 ["Controllers"]
       80 GETTABLEKS                       R11 R12 K20 ["ItemsController"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R14 R0 K12 ["Src"]
       87 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R13 K22 ["useColumns"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R15 R0 K12 ["Src"]
       96 GETTABLEKS                       R14 R15 K21 ["Hooks"]
       98 GETTABLEKS                       R13 R14 K23 ["useContextMenu"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R16 R0 K12 ["Src"]
      105 GETTABLEKS                       R15 R16 K21 ["Hooks"]
      107 GETTABLEKS                       R14 R15 K24 ["useIsEditItem"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Src"]
      114 GETTABLEKS                       R16 R17 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R16 K25 ["useItemDragHovered"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R18 R0 K12 ["Src"]
      123 GETTABLEKS                       R17 R18 K21 ["Hooks"]
      125 GETTABLEKS                       R16 R17 K26 ["useItemSelection"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R19 R0 K12 ["Src"]
      132 GETTABLEKS                       R18 R19 K21 ["Hooks"]
      134 GETTABLEKS                       R17 R18 K27 ["useRenamePlaceId_DEPRECATED"]
      136 CALL                             R16 1 1
      137 GETIMPORT                        R17 K5 [require]
      139 GETTABLEKS                       R19 R0 K12 ["Src"]
      141 GETTABLEKS                       R18 R19 K28 ["Types"]
      143 CALL                             R17 1 1
      144 GETTABLEKS                       R19 R3 K29 ["Util"]
      146 GETTABLEKS                       R18 R19 K30 ["GetTextSize"]
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R22 R0 K12 ["Src"]
      152 GETTABLEKS                       R21 R22 K29 ["Util"]
      154 GETTABLEKS                       R20 R21 K31 ["logIfDebug"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K5 [require]
      159 GETTABLEKS                       R23 R0 K12 ["Src"]
      161 GETTABLEKS                       R22 R23 K32 ["Resources"]
      163 GETTABLEKS                       R21 R22 K33 ["PluginStyles"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R24 R0 K12 ["Src"]
      170 GETTABLEKS                       R23 R24 K34 ["Flags"]
      172 GETTABLEKS                       R22 R23 K35 ["getFFlagAmrOrganizationFoundation"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K5 [require]
      177 GETTABLEKS                       R25 R0 K12 ["Src"]
      179 GETTABLEKS                       R24 R25 K34 ["Flags"]
      181 GETTABLEKS                       R23 R24 K36 ["getFFlagAmrRefactorEditNameInput"]
      183 CALL                             R22 1 1
      184 DUPCLOSURE                       R23 K37 [PROTO_0]
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R17
      187 DUPCLOSURE                       R24 K38 [PROTO_1]
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R6
      200 DUPCLOSURE                       R25 K39 [PROTO_5]
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R21
      213 RETURN                           R25 1
