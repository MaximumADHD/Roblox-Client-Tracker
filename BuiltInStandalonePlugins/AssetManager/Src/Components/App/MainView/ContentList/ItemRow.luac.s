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
       56 JUMPIFNOTEQKN                    R12 K11 [1] ; [+238]
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
      198 JUMP                             ; [+91]
      199 JUMPIFNOTEQ                      R19 R1 ; [+20]
      201 GETUPVAL                         R27 6
      202 GETTABLEKS                       R26 R27 K17 ["createElement"]
      204 GETUPVAL                         R27 11
      205 DUPTABLE                         R28 K43 [{"LayoutOrder", "InitialText", "Size"}]
      206 LOADN                            R29 2
      207 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      209 SETTABLEKS                       R15 R28 K40 ["InitialText"]
      211 GETIMPORT                        R29 K45 [UDim2.fromOffset]
      213 MOVE                             R30 R21
      214 LOADN                            R31 0
      215 CALL                             R29 2 1
      216 SETTABLEKS                       R29 R28 K20 ["Size"]
      218 CALL                             R26 2 1
      219 JUMP                             ; [+70]
      220 JUMPIFNOT                        R17 ; [+46]
      221 GETUPVAL                         R27 6
      222 GETTABLEKS                       R26 R27 K17 ["createElement"]
      224 GETUPVAL                         R28 7
      225 GETTABLEKS                       R27 R28 K46 ["Tooltip"]
      227 DUPTABLE                         R28 K49 [{"LayoutOrder", "title", "side"}]
      228 LOADN                            R29 2
      229 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      231 SETTABLEKS                       R15 R28 K47 ["title"]
      233 GETUPVAL                         R32 7
      234 GETTABLEKS                       R31 R32 K50 ["Enums"]
      236 GETTABLEKS                       R30 R31 K51 ["PopoverSide"]
      238 GETTABLEKS                       R29 R30 K52 ["Bottom"]
      240 SETTABLEKS                       R29 R28 K48 ["side"]
      242 GETUPVAL                         R30 6
      243 GETTABLEKS                       R29 R30 K17 ["createElement"]
      245 GETUPVAL                         R31 7
      246 GETTABLEKS                       R30 R31 K53 ["Text"]
      248 DUPTABLE                         R31 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      249 LOADN                            R32 2
      250 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      252 SETTABLEKS                       R15 R31 K53 ["Text"]
      254 GETIMPORT                        R32 K45 [UDim2.fromOffset]
      256 MOVE                             R33 R21
      257 LOADN                            R34 0
      258 CALL                             R32 2 1
      259 SETTABLEKS                       R32 R31 K20 ["Size"]
      261 LOADK                            R32 K55 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      262 SETTABLEKS                       R32 R31 K21 ["tag"]
      264 CALL                             R29 2 -1
      265 CALL                             R26 -1 1
      266 JUMP                             ; [+23]
      267 GETUPVAL                         R27 6
      268 GETTABLEKS                       R26 R27 K17 ["createElement"]
      270 GETUPVAL                         R28 7
      271 GETTABLEKS                       R27 R28 K53 ["Text"]
      273 DUPTABLE                         R28 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      274 LOADN                            R29 2
      275 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      277 SETTABLEKS                       R15 R28 K53 ["Text"]
      279 GETIMPORT                        R29 K45 [UDim2.fromOffset]
      281 MOVE                             R30 R21
      282 LOADN                            R31 0
      283 CALL                             R29 2 1
      284 SETTABLEKS                       R29 R28 K20 ["Size"]
      286 LOADK                            R29 K55 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      287 SETTABLEKS                       R29 R28 K21 ["tag"]
      289 CALL                             R26 2 1
      290 SETTABLEKS                       R26 R25 K28 ["AssetName"]
      292 CALL                             R22 3 1
      293 SETTABLE                         R22 R4 R12
      294 JUMP                             ; [+72]
      295 JUMPIFNOT                        R17 ; [+46]
      296 GETUPVAL                         R19 6
      297 GETTABLEKS                       R18 R19 K17 ["createElement"]
      299 GETUPVAL                         R20 7
      300 GETTABLEKS                       R19 R20 K46 ["Tooltip"]
      302 DUPTABLE                         R20 K49 [{"LayoutOrder", "title", "side"}]
      303 SETTABLEKS                       R12 R20 K19 ["LayoutOrder"]
      305 SETTABLEKS                       R15 R20 K47 ["title"]
      307 GETUPVAL                         R24 7
      308 GETTABLEKS                       R23 R24 K50 ["Enums"]
      310 GETTABLEKS                       R22 R23 K51 ["PopoverSide"]
      312 GETTABLEKS                       R21 R22 K52 ["Bottom"]
      314 SETTABLEKS                       R21 R20 K48 ["side"]
      316 GETUPVAL                         R22 6
      317 GETTABLEKS                       R21 R22 K17 ["createElement"]
      319 GETUPVAL                         R23 7
      320 GETTABLEKS                       R22 R23 K53 ["Text"]
      322 DUPTABLE                         R23 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      323 SETTABLEKS                       R12 R23 K19 ["LayoutOrder"]
      325 SETTABLEKS                       R15 R23 K53 ["Text"]
      327 GETIMPORT                        R24 K25 [UDim2.new]
      329 LOADN                            R25 0
      330 MOVE                             R26 R16
      331 LOADN                            R27 1
      332 LOADN                            R28 0
      333 CALL                             R24 4 1
      334 SETTABLEKS                       R24 R23 K20 ["Size"]
      336 LOADK                            R24 K56 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      337 SETTABLEKS                       R24 R23 K21 ["tag"]
      339 CALL                             R21 2 -1
      340 CALL                             R18 -1 1
      341 JUMP                             ; [+24]
      342 GETUPVAL                         R19 6
      343 GETTABLEKS                       R18 R19 K17 ["createElement"]
      345 GETUPVAL                         R20 7
      346 GETTABLEKS                       R19 R20 K53 ["Text"]
      348 DUPTABLE                         R20 K54 [{"LayoutOrder", "Text", "Size", "tag"}]
      349 SETTABLEKS                       R12 R20 K19 ["LayoutOrder"]
      351 SETTABLEKS                       R15 R20 K53 ["Text"]
      353 GETIMPORT                        R21 K25 [UDim2.new]
      355 LOADN                            R22 0
      356 MOVE                             R23 R16
      357 LOADN                            R24 1
      358 LOADN                            R25 0
      359 CALL                             R21 4 1
      360 SETTABLEKS                       R21 R20 K20 ["Size"]
      362 LOADK                            R21 K56 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      363 SETTABLEKS                       R21 R20 K21 ["tag"]
      365 CALL                             R18 2 1
      366 SETTABLE                         R18 R4 R12
      367 FORGLOOP                         R9 2 ; [-354]
      369 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ItemPath"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["UiZone"]
       10 GETTABLEKS                       R3 R4 K2 ["Browser"]
       12 LOADNIL                          R4
       13 MOVE                             R5 R0
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K3 ["Key"]
       17 GETUPVAL                         R7 4
       18 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       20 CALL                             R1 6 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K1 ["UiZone"]
       26 GETTABLEKS                       R3 R4 K2 ["Browser"]
       28 GETUPVAL                         R4 5
       29 MOVE                             R5 R0
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K3 ["Key"]
       33 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       35 CALL                             R1 5 0
       36 RETURN                           R0 0

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
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R7 R0 K1 ["ItemPath"]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 6
       21 MOVE                             R8 R0
       22 MOVE                             R9 R5
       23 NAMECALL                         R10 R3 K2 ["getItemsCache"]
       25 CALL                             R10 1 1
       26 MOVE                             R11 R6
       27 CALL                             R7 4 1
       28 GETTABLEKS                       R10 R0 K1 ["ItemPath"]
       30 GETTABLE                         R9 R4 R10
       31 JUMPIFNOT                        R9 ; [+2]
       32 LOADK                            R8 K3 ["bg-action-selected"]
       33 JUMP                             ; [+1]
       34 LOADK                            R8 K4 ["am-hover"]
       35 GETUPVAL                         R10 7
       36 GETTABLEKS                       R9 R10 K5 ["useRef"]
       38 LOADNIL                          R10
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 8
       41 MOVE                             R11 R9
       42 GETTABLEKS                       R12 R0 K1 ["ItemPath"]
       44 CALL                             R10 2 1
       45 GETUPVAL                         R11 9
       46 GETUPVAL                         R14 10
       47 GETTABLEKS                       R13 R14 K6 ["MenuContext"]
       49 GETTABLEKS                       R12 R13 K7 ["Asset"]
       51 DUPTABLE                         R13 K10 [{"Path", "Index"}]
       52 GETTABLEKS                       R14 R0 K1 ["ItemPath"]
       54 SETTABLEKS                       R14 R13 K8 ["Path"]
       56 GETTABLEKS                       R14 R0 K11 ["Key"]
       58 SETTABLEKS                       R14 R13 K9 ["Index"]
       60 CALL                             R11 2 1
       61 GETUPVAL                         R13 7
       62 GETTABLEKS                       R12 R13 K12 ["createElement"]
       64 GETUPVAL                         R14 11
       65 GETTABLEKS                       R13 R14 K13 ["View"]
       67 DUPTABLE                         R14 K18 [{"LayoutOrder", "Position", "ref", "tag"}]
       68 GETTABLEKS                       R15 R0 K11 ["Key"]
       70 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
       72 GETTABLEKS                       R15 R0 K15 ["Position"]
       74 SETTABLEKS                       R15 R14 K15 ["Position"]
       76 SETTABLEKS                       R9 R14 K16 ["ref"]
       78 NEWTABLE                         R15 4 0
       80 LOADB                            R16 1
       81 SETTABLEKS                       R16 R15 K19 ["am-size-itemrow auto-x"]
       83 LOADB                            R16 1
       84 SETTABLE                         R16 R15 R8
       85 GETUPVAL                         R17 12
       86 CALL                             R17 0 1
       87 NOT                              R16 R17
       88 JUMPIF                           R16 ; [+1]
       89 NOT                              R16 R10
       90 SETTABLEKS                       R16 R15 K20 ["stroke-default stroke-thin"]
       92 GETUPVAL                         R17 12
       93 CALL                             R17 0 1
       94 AND                              R16 R17 R10
       95 SETTABLEKS                       R16 R15 K21 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
       97 SETTABLEKS                       R15 R14 K17 ["tag"]
       99 DUPTABLE                         R15 K23 [{"InputHandler"}]
      100 GETUPVAL                         R17 7
      101 GETTABLEKS                       R16 R17 K12 ["createElement"]
      103 LOADK                            R17 K24 ["ImageButton"]
      104 NEWTABLE                         R18 4 0
      106 GETUPVAL                         R21 7
      107 GETTABLEKS                       R20 R21 K25 ["Event"]
      109 GETTABLEKS                       R19 R20 K26 ["MouseButton2Click"]
      111 NEWCLOSURE                       R20 P0
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U13
      114 CAPTURE                          VAL R2
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R1
      118 SETTABLE                         R20 R18 R19
      119 GETUPVAL                         R21 7
      120 GETTABLEKS                       R20 R21 K25 ["Event"]
      122 GETTABLEKS                       R19 R20 K27 ["MouseButton1Down"]
      124 NEWCLOSURE                       R20 P1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U10
      127 CAPTURE                          VAL R0
      128 SETTABLE                         R20 R18 R19
      129 GETUPVAL                         R21 7
      130 GETTABLEKS                       R20 R21 K25 ["Event"]
      132 GETTABLEKS                       R19 R20 K28 ["MouseButton1Up"]
      134 NEWCLOSURE                       R20 P2
      135 CAPTURE                          VAL R2
      136 CAPTURE                          UPVAL U10
      137 CAPTURE                          VAL R0
      138 SETTABLE                         R20 R18 R19
      139 GETUPVAL                         R20 7
      140 GETTABLEKS                       R19 R20 K29 ["Tag"]
      142 LOADK                            R20 K30 ["gui-object-defaults size-full row align-x-left align-y-center"]
      143 SETTABLE                         R20 R18 R19
      144 MOVE                             R19 R7
      145 CALL                             R16 3 1
      146 SETTABLEKS                       R16 R15 K22 ["InputHandler"]
      148 CALL                             R12 3 -1
      149 RETURN                           R12 -1

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
      181 GETTABLEKS                       R23 R24 K36 ["getFFlagAmrContextMenuRefactor"]
      183 CALL                             R22 1 1
      184 GETIMPORT                        R23 K5 [require]
      186 GETTABLEKS                       R26 R0 K12 ["Src"]
      188 GETTABLEKS                       R25 R26 K34 ["Flags"]
      190 GETTABLEKS                       R24 R25 K37 ["getFFlagAmrRefactorEditNameInput"]
      192 CALL                             R23 1 1
      193 DUPCLOSURE                       R24 K38 [PROTO_0]
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R17
      196 DUPCLOSURE                       R25 K39 [PROTO_1]
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R6
      209 DUPCLOSURE                       R26 K40 [PROTO_5]
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R22
      224 RETURN                           R26 1
