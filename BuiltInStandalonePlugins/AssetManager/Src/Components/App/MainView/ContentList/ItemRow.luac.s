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
       33 JUMPIFNOTEQ                      R1 R3 ; [+31]
       35 GETUPVAL                         R3 2
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+14]
       38 JUMPIFNOTEQKN                    R0 K8 [0] ; [+3]
       40 LOADK                            R3 K9 ["--"]
       41 RETURN                           R3 1
       42 GETIMPORT                        R3 K12 [DateTime.fromUnixTimestampMillis]
       44 MOVE                             R4 R0
       45 CALL                             R3 1 1
       46 LOADK                            R6 K13 ["lll"]
       47 LOADK                            R7 K14 ["en-us"]
       48 NAMECALL                         R4 R3 K15 ["FormatLocalTime"]
       50 CALL                             R4 3 -1
       51 RETURN                           R4 -1
       52 GETIMPORT                        R3 K17 [DateTime.fromIsoDate]
       54 MOVE                             R4 R0
       55 CALL                             R3 1 1
       56 JUMPIFNOT                        R3 ; [+6]
       57 LOADK                            R6 K13 ["lll"]
       58 LOADK                            R7 K14 ["en-us"]
       59 NAMECALL                         R4 R3 K15 ["FormatLocalTime"]
       61 CALL                             R4 3 1
       62 RETURN                           R4 1
       63 LOADK                            R4 K9 ["--"]
       64 RETURN                           R4 1
       65 GETUPVAL                         R3 1
       66 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       68 GETTABLEKS                       R3 R3 K18 ["AssetType"]
       70 JUMPIFNOTEQ                      R1 R3 ; [+7]
       72 LOADK                            R5 K18 ["AssetType"]
       73 MOVE                             R6 R0
       74 NAMECALL                         R3 R2 K19 ["getText"]
       76 CALL                             R3 3 -1
       77 RETURN                           R3 -1
       78 GETUPVAL                         R3 1
       79 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       81 GETTABLEKS                       R3 R3 K20 ["Source"]
       83 JUMPIFNOTEQ                      R1 R3 ; [+7]
       85 LOADK                            R5 K21 ["AssetSource"]
       86 MOVE                             R6 R0
       87 NAMECALL                         R3 R2 K19 ["getText"]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1
       91 GETUPVAL                         R3 1
       92 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       94 GETTABLEKS                       R3 R3 K22 ["AssetId"]
       96 JUMPIFNOTEQ                      R1 R3 ; [+7]
       98 JUMPIFNOTEQKN                    R0 K8 [0] ; [+5]
      100 GETUPVAL                         R3 3
      101 GETTABLEKS                       R3 R3 K23 ["PlaceholderText"]
      103 RETURN                           R3 1
      104 FASTCALL1                        TOSTRING R0 ; [+3]
      105 MOVE                             R4 R0
      106 GETIMPORT                        R3 K25 [tostring]
      108 CALL                             R3 1 1
      109 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 2
        4 GETUPVAL                         R7 1
        5 CALL                             R7 0 1
        6 GETUPVAL                         R8 2
        7 GETTABLEKS                       R8 R8 K0 ["useRef"]
        9 LOADNIL                          R9
       10 CALL                             R8 1 1
       11 GETUPVAL                         R9 3
       12 MOVE                             R10 R8
       13 CALL                             R9 1 1
       14 GETTABLEKS                       R10 R0 K1 ["ParentScope"]
       16 GETTABLEKS                       R10 R10 K2 ["Uid"]
       18 GETTABLEKS                       R11 R0 K3 ["ItemPath"]
       20 GETTABLEKS                       R14 R7 K4 ["ListRowHeight"]
       22 GETUPVAL                         R15 4
       23 GETTABLEKS                       R15 R15 K5 ["ListThumbnailContainerScale"]
       25 MUL                              R13 R14 R15
       26 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       27 GETIMPORT                        R12 K8 [math.floor]
       29 CALL                             R12 1 1
       30 MOVE                             R13 R5
       31 LOADNIL                          R14
       32 LOADNIL                          R15
       33 FORGPREP                         R13
       34 MOVE                             R20 R10
       35 MOVE                             R21 R11
       36 MOVE                             R22 R17
       37 NAMECALL                         R18 R1 K9 ["getItemField"]
       39 CALL                             R18 4 1
       40 JUMPIFNOT                        R18 ; [+5]
       41 GETUPVAL                         R19 5
       42 MOVE                             R20 R18
       43 MOVE                             R21 R17
       44 CALL                             R19 2 1
       45 JUMP                             ; [+3]
       46 GETUPVAL                         R19 6
       47 GETTABLEKS                       R19 R19 K10 ["PlaceholderText"]
       49 GETTABLE                         R20 R6 R16
       50 GETTABLEKS                       R20 R20 K11 ["Offset"]
       52 GETUPVAL                         R22 7
       53 MOVE                             R23 R19
       54 CALL                             R22 1 1
       55 GETTABLEKS                       R22 R22 K12 ["X"]
       57 GETUPVAL                         R25 8
       58 LOADK                            R27 K14 ["CellContentPadding"]
       59 NAMECALL                         R25 R25 K15 ["GetAttribute"]
       61 CALL                             R25 2 1
       62 MULK                             R24 R25 K13 [2]
       63 SUB                              R23 R20 R24
       64 JUMPIFLT                         R23 R22 ; [+2]
       66 LOADB                            R21 0 +1
       67 LOADB                            R21 1
       68 JUMPIFNOTEQKN                    R16 K16 [1] ; [+218]
       70 MOVE                             R24 R10
       71 MOVE                             R25 R11
       72 GETUPVAL                         R26 9
       73 GETTABLEKS                       R26 R26 K17 ["AssetInfoField"]
       75 GETTABLEKS                       R26 R26 K18 ["AssetType"]
       77 NAMECALL                         R22 R1 K9 ["getItemField"]
       79 CALL                             R22 4 1
       80 MOVE                             R25 R10
       81 MOVE                             R26 R11
       82 GETUPVAL                         R27 9
       83 GETTABLEKS                       R27 R27 K17 ["AssetInfoField"]
       85 GETTABLEKS                       R27 R27 K19 ["AssetId"]
       87 NAMECALL                         R23 R1 K9 ["getItemField"]
       89 CALL                             R23 4 1
       90 MOVE                             R26 R10
       91 MOVE                             R27 R11
       92 GETUPVAL                         R28 9
       93 GETTABLEKS                       R28 R28 K17 ["AssetInfoField"]
       95 GETTABLEKS                       R28 R28 K20 ["IsPackage"]
       97 NAMECALL                         R24 R1 K9 ["getItemField"]
       99 CALL                             R24 4 1
      100 SUB                              R26 R20 R12
      101 GETUPVAL                         R27 8
      102 LOADK                            R29 K14 ["CellContentPadding"]
      103 NAMECALL                         R27 R27 K15 ["GetAttribute"]
      105 CALL                             R27 2 1
      106 SUB                              R25 R26 R27
      107 GETUPVAL                         R26 2
      108 GETTABLEKS                       R26 R26 K21 ["createElement"]
      110 GETUPVAL                         R27 10
      111 GETTABLEKS                       R27 R27 K22 ["View"]
      113 DUPTABLE                         R28 K27 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-left align-y-center padding-left-small"}]
      114 SETTABLEKS                       R16 R28 K23 ["LayoutOrder"]
      116 GETIMPORT                        R29 K30 [UDim2.new]
      118 LOADN                            R30 0
      119 MOVE                             R31 R20
      120 LOADN                            R32 1
      121 LOADN                            R33 0
      122 CALL                             R29 4 1
      123 SETTABLEKS                       R29 R28 K24 ["Size"]
      125 DUPTABLE                         R29 K33 [{"ThumbnailContainer", "AssetName"}]
      126 GETUPVAL                         R30 2
      127 GETTABLEKS                       R30 R30 K21 ["createElement"]
      129 GETUPVAL                         R31 10
      130 GETTABLEKS                       R31 R31 K22 ["View"]
      132 DUPTABLE                         R32 K35 [{["LayoutOrder"] = 1, ["Size"], ["ref"], ["tag"]}]
      133 GETIMPORT                        R33 K37 [UDim2.fromOffset]
      135 MOVE                             R34 R12
      136 MOVE                             R35 R12
      137 CALL                             R33 2 1
      138 SETTABLEKS                       R33 R32 K24 ["Size"]
      140 SETTABLEKS                       R8 R32 K34 ["ref"]
      142 NEWTABLE                         R33 1 0
      144 LOADB                            R34 1
      145 SETTABLEKS                       R34 R33 K38 ["bg-foreground-contrast radius-small"]
      147 SETTABLEKS                       R33 R32 K25 ["tag"]
      149 DUPTABLE                         R33 K42 [{"Thumbnail", "AudioOverlay", "PackageLinkIcon"}]
      150 GETUPVAL                         R34 2
      151 GETTABLEKS                       R34 R34 K21 ["createElement"]
      153 GETUPVAL                         R35 11
      154 DUPTABLE                         R36 K43 [{"AssetId", "AssetType"}]
      155 SETTABLEKS                       R23 R36 K19 ["AssetId"]
      157 SETTABLEKS                       R22 R36 K18 ["AssetType"]
      159 CALL                             R34 2 1
      160 SETTABLEKS                       R34 R33 K39 ["Thumbnail"]
      162 GETUPVAL                         R35 12
      163 CALL                             R35 0 1
      164 JUMPIFNOT                        R35 ; [+20]
      165 GETUPVAL                         R35 9
      166 GETTABLEKS                       R35 R35 K18 ["AssetType"]
      168 GETTABLEKS                       R35 R35 K44 ["Audio"]
      170 JUMPIFNOTEQ                      R22 R35 ; [+14]
      172 GETUPVAL                         R34 2
      173 GETTABLEKS                       R34 R34 K21 ["createElement"]
      175 GETUPVAL                         R35 13
      176 DUPTABLE                         R36 K47 [{"AssetId", "IsHovered", "OnRightClick"}]
      177 SETTABLEKS                       R23 R36 K19 ["AssetId"]
      179 SETTABLEKS                       R9 R36 K45 ["IsHovered"]
      181 SETTABLEKS                       R3 R36 K46 ["OnRightClick"]
      183 CALL                             R34 2 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R34
      186 SETTABLEKS                       R34 R33 K40 ["AudioOverlay"]
      188 JUMPIFNOT                        R24 ; [+9]
      189 GETUPVAL                         R34 2
      190 GETTABLEKS                       R34 R34 K21 ["createElement"]
      192 GETUPVAL                         R35 10
      193 GETTABLEKS                       R35 R35 K48 ["Image"]
      195 DUPTABLE                         R36 K53 [{["ZIndex"] = 2, ["tag"] = "am-size-icon-xsmall icon-packageLink anchor-bottom-right radius-xsmall bg-over-media-0", ["testId"] = "package-link-icon"}]
      196 CALL                             R34 2 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R34
      199 SETTABLEKS                       R34 R33 K41 ["PackageLinkIcon"]
      201 CALL                             R30 3 1
      202 SETTABLEKS                       R30 R29 K31 ["ThumbnailContainer"]
      204 JUMPIFNOT                        R2 ; [+22]
      205 GETUPVAL                         R30 2
      206 GETTABLEKS                       R30 R30 K21 ["createElement"]
      208 GETUPVAL                         R31 14
      209 DUPTABLE                         R32 K56 [{["LayoutOrder"] = 2, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      210 SETTABLEKS                       R19 R32 K54 ["InitialText"]
      212 SETTABLEKS                       R22 R32 K55 ["ItemType"]
      214 SETTABLEKS                       R11 R32 K3 ["ItemPath"]
      216 GETIMPORT                        R33 K30 [UDim2.new]
      218 LOADN                            R34 0
      219 MOVE                             R35 R25
      220 LOADN                            R36 1
      221 LOADN                            R37 0
      222 CALL                             R33 4 1
      223 SETTABLEKS                       R33 R32 K24 ["Size"]
      225 CALL                             R30 2 1
      226 JUMP                             ; [+55]
      227 JUMPIFNOT                        R21 ; [+37]
      228 GETUPVAL                         R30 2
      229 GETTABLEKS                       R30 R30 K21 ["createElement"]
      231 GETUPVAL                         R31 10
      232 GETTABLEKS                       R31 R31 K57 ["Tooltip"]
      234 DUPTABLE                         R32 K60 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      235 SETTABLEKS                       R19 R32 K58 ["title"]
      237 GETUPVAL                         R33 10
      238 GETTABLEKS                       R33 R33 K61 ["Enums"]
      240 GETTABLEKS                       R33 R33 K62 ["PopoverSide"]
      242 GETTABLEKS                       R33 R33 K63 ["Bottom"]
      244 SETTABLEKS                       R33 R32 K59 ["side"]
      246 GETUPVAL                         R33 2
      247 GETTABLEKS                       R33 R33 K21 ["createElement"]
      249 GETUPVAL                         R34 10
      250 GETTABLEKS                       R34 R34 K64 ["Text"]
      252 DUPTABLE                         R35 K66 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      253 SETTABLEKS                       R19 R35 K64 ["Text"]
      255 GETIMPORT                        R36 K37 [UDim2.fromOffset]
      257 MOVE                             R37 R25
      258 LOADN                            R38 0
      259 CALL                             R36 2 1
      260 SETTABLEKS                       R36 R35 K24 ["Size"]
      262 CALL                             R33 2 -1
      263 CALL                             R30 -1 1
      264 JUMP                             ; [+17]
      265 GETUPVAL                         R30 2
      266 GETTABLEKS                       R30 R30 K21 ["createElement"]
      268 GETUPVAL                         R31 10
      269 GETTABLEKS                       R31 R31 K64 ["Text"]
      271 DUPTABLE                         R32 K66 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      272 SETTABLEKS                       R19 R32 K64 ["Text"]
      274 GETIMPORT                        R33 K37 [UDim2.fromOffset]
      276 MOVE                             R34 R25
      277 LOADN                            R35 0
      278 CALL                             R33 2 1
      279 SETTABLEKS                       R33 R32 K24 ["Size"]
      281 CALL                             R30 2 1
      282 SETTABLEKS                       R30 R29 K32 ["AssetName"]
      284 CALL                             R26 3 1
      285 SETTABLE                         R26 R4 R16
      286 JUMP                             ; [+66]
      287 JUMPIFNOT                        R21 ; [+43]
      288 GETUPVAL                         R22 2
      289 GETTABLEKS                       R22 R22 K21 ["createElement"]
      291 GETUPVAL                         R23 10
      292 GETTABLEKS                       R23 R23 K57 ["Tooltip"]
      294 DUPTABLE                         R24 K67 [{"LayoutOrder", "title", "side"}]
      295 SETTABLEKS                       R16 R24 K23 ["LayoutOrder"]
      297 SETTABLEKS                       R19 R24 K58 ["title"]
      299 GETUPVAL                         R25 10
      300 GETTABLEKS                       R25 R25 K61 ["Enums"]
      302 GETTABLEKS                       R25 R25 K62 ["PopoverSide"]
      304 GETTABLEKS                       R25 R25 K63 ["Bottom"]
      306 SETTABLEKS                       R25 R24 K59 ["side"]
      308 GETUPVAL                         R25 2
      309 GETTABLEKS                       R25 R25 K21 ["createElement"]
      311 GETUPVAL                         R26 10
      312 GETTABLEKS                       R26 R26 K64 ["Text"]
      314 DUPTABLE                         R27 K69 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      315 SETTABLEKS                       R16 R27 K23 ["LayoutOrder"]
      317 SETTABLEKS                       R19 R27 K64 ["Text"]
      319 GETIMPORT                        R28 K30 [UDim2.new]
      321 LOADN                            R29 0
      322 MOVE                             R30 R20
      323 LOADN                            R31 1
      324 LOADN                            R32 0
      325 CALL                             R28 4 1
      326 SETTABLEKS                       R28 R27 K24 ["Size"]
      328 CALL                             R25 2 -1
      329 CALL                             R22 -1 1
      330 JUMP                             ; [+21]
      331 GETUPVAL                         R22 2
      332 GETTABLEKS                       R22 R22 K21 ["createElement"]
      334 GETUPVAL                         R23 10
      335 GETTABLEKS                       R23 R23 K64 ["Text"]
      337 DUPTABLE                         R24 K69 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      338 SETTABLEKS                       R16 R24 K23 ["LayoutOrder"]
      340 SETTABLEKS                       R19 R24 K64 ["Text"]
      342 GETIMPORT                        R25 K30 [UDim2.new]
      344 LOADN                            R26 0
      345 MOVE                             R27 R20
      346 LOADN                            R28 1
      347 LOADN                            R29 0
      348 CALL                             R25 4 1
      349 SETTABLEKS                       R25 R24 K24 ["Size"]
      351 CALL                             R22 2 1
      352 SETTABLE                         R22 R4 R16
      353 FORGLOOP                         R13 2 ; [-320]
      355 RETURN                           R4 1

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
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R6 R6 K2 ["useRef"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 6
       22 MOVE                             R8 R6
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 7
       25 MOVE                             R9 R7
       26 GETTABLEKS                       R10 R0 K1 ["ItemPath"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 8
       30 LOADK                            R10 K3 ["gui-object-defaults row align-x-left align-y-center"]
       31 CALL                             R9 1 1
       32 GETUPVAL                         R10 9
       33 GETUPVAL                         R11 10
       34 GETTABLEKS                       R11 R11 K4 ["MenuContext"]
       36 GETTABLEKS                       R11 R11 K5 ["Asset"]
       38 DUPTABLE                         R12 K8 [{"Path", "Index"}]
       39 GETTABLEKS                       R13 R0 K1 ["ItemPath"]
       41 SETTABLEKS                       R13 R12 K6 ["Path"]
       43 GETTABLEKS                       R13 R0 K9 ["Key"]
       45 SETTABLEKS                       R13 R12 K7 ["Index"]
       47 CALL                             R10 2 1
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          VAL R10
       53 GETUPVAL                         R12 11
       54 MOVE                             R13 R0
       55 NAMECALL                         R14 R2 K10 ["getItemsCache"]
       57 CALL                             R14 1 1
       58 MOVE                             R15 R4
       59 MOVE                             R16 R11
       60 CALL                             R12 4 1
       61 GETTABLEKS                       R14 R0 K1 ["ItemPath"]
       63 GETTABLE                         R13 R3 R14
       64 GETUPVAL                         R14 5
       65 GETTABLEKS                       R14 R14 K11 ["createElement"]
       67 GETUPVAL                         R15 12
       68 GETTABLEKS                       R15 R15 K12 ["View"]
       70 DUPTABLE                         R16 K18 [{"LayoutOrder", "Position", "Size", "ref", "tag"}]
       71 GETTABLEKS                       R17 R0 K9 ["Key"]
       73 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       75 GETTABLEKS                       R17 R0 K14 ["Position"]
       77 SETTABLEKS                       R17 R16 K14 ["Position"]
       79 GETIMPORT                        R17 K21 [UDim2.new]
       81 LOADN                            R18 1
       82 LOADN                            R19 0
       83 LOADN                            R20 0
       84 GETTABLEKS                       R21 R5 K22 ["ListRowHeight"]
       86 CALL                             R17 4 1
       87 SETTABLEKS                       R17 R16 K15 ["Size"]
       89 SETTABLEKS                       R6 R16 K16 ["ref"]
       91 NEWTABLE                         R17 8 0
       93 LOADB                            R18 1
       94 SETTABLEKS                       R18 R17 K23 ["auto-x"]
       96 SETTABLEKS                       R13 R17 K24 ["bg-action-soft-emphasis"]
       98 NOT                              R19 R13
       99 AND                              R18 R19 R7
      100 SETTABLEKS                       R18 R17 K25 ["bg-shift-200"]
      102 NOT                              R18 R8
      103 SETTABLEKS                       R18 R17 K26 ["stroke-thin stroke-default"]
      105 SETTABLEKS                       R8 R17 K27 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      107 SETTABLEKS                       R17 R16 K17 ["tag"]
      109 DUPTABLE                         R17 K29 [{"InputHandler"}]
      110 GETUPVAL                         R18 5
      111 GETTABLEKS                       R18 R18 K11 ["createElement"]
      113 LOADK                            R19 K30 ["ImageButton"]
      114 NEWTABLE                         R20 8 0
      116 GETUPVAL                         R21 5
      117 GETTABLEKS                       R21 R21 K31 ["Event"]
      119 GETTABLEKS                       R21 R21 K32 ["MouseButton2Click"]
      121 SETTABLE                         R11 R20 R21
      122 GETUPVAL                         R21 5
      123 GETTABLEKS                       R21 R21 K31 ["Event"]
      125 GETTABLEKS                       R21 R21 K33 ["MouseButton1Down"]
      127 NEWCLOSURE                       R22 P1
      128 CAPTURE                          VAL R1
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R0
      131 SETTABLE                         R22 R20 R21
      132 GETUPVAL                         R21 5
      133 GETTABLEKS                       R21 R21 K31 ["Event"]
      135 GETTABLEKS                       R21 R21 K34 ["MouseButton1Up"]
      137 NEWCLOSURE                       R22 P2
      138 CAPTURE                          VAL R1
      139 CAPTURE                          UPVAL U10
      140 CAPTURE                          VAL R0
      141 SETTABLE                         R22 R20 R21
      142 GETIMPORT                        R21 K21 [UDim2.new]
      144 LOADN                            R22 1
      145 LOADN                            R23 0
      146 LOADN                            R24 0
      147 GETTABLEKS                       R25 R5 K22 ["ListRowHeight"]
      149 CALL                             R21 4 1
      150 SETTABLEKS                       R21 R20 K15 ["Size"]
      152 GETUPVAL                         R21 5
      153 GETTABLEKS                       R21 R21 K35 ["Tag"]
      155 SETTABLE                         R9 R20 R21
      156 MOVE                             R21 R12
      157 CALL                             R18 3 1
      158 SETTABLEKS                       R18 R17 K28 ["InputHandler"]
      160 CALL                             R14 3 -1
      161 RETURN                           R14 -1

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
       40 GETTABLEKS                       R7 R7 K15 ["AudioPreviewOverlay"]
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
       83 GETTABLEKS                       R11 R2 K21 ["Hooks"]
       85 GETTABLEKS                       R11 R11 K22 ["useStyleTags"]
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K12 ["Src"]
       91 GETTABLEKS                       R13 R13 K21 ["Hooks"]
       93 GETTABLEKS                       R13 R13 K23 ["useColumns"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R14 R0 K12 ["Src"]
      100 GETTABLEKS                       R14 R14 K21 ["Hooks"]
      102 GETTABLEKS                       R14 R14 K24 ["useContextMenu"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K5 [require]
      107 GETTABLEKS                       R15 R0 K12 ["Src"]
      109 GETTABLEKS                       R15 R15 K21 ["Hooks"]
      111 GETTABLEKS                       R15 R15 K25 ["useIsEditItem"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K5 [require]
      116 GETTABLEKS                       R16 R0 K12 ["Src"]
      118 GETTABLEKS                       R16 R16 K21 ["Hooks"]
      120 GETTABLEKS                       R16 R16 K26 ["useItemHovered"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K5 [require]
      125 GETTABLEKS                       R17 R0 K12 ["Src"]
      127 GETTABLEKS                       R17 R17 K21 ["Hooks"]
      129 GETTABLEKS                       R17 R17 K27 ["useItemDragHovered"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K5 [require]
      134 GETTABLEKS                       R18 R0 K12 ["Src"]
      136 GETTABLEKS                       R18 R18 K21 ["Hooks"]
      138 GETTABLEKS                       R18 R18 K28 ["useItemSelection"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K5 [require]
      143 GETTABLEKS                       R19 R0 K12 ["Src"]
      145 GETTABLEKS                       R19 R19 K21 ["Hooks"]
      147 GETTABLEKS                       R19 R19 K29 ["useLayoutInfo"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K5 [require]
      152 GETTABLEKS                       R20 R0 K12 ["Src"]
      154 GETTABLEKS                       R20 R20 K30 ["Types"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K5 [require]
      159 GETTABLEKS                       R21 R0 K12 ["Src"]
      161 GETTABLEKS                       R21 R21 K31 ["Resources"]
      163 GETTABLEKS                       R21 R21 K32 ["Constants"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R22 R0 K12 ["Src"]
      170 GETTABLEKS                       R22 R22 K31 ["Resources"]
      172 GETTABLEKS                       R22 R22 K33 ["StyleConstants"]
      174 CALL                             R21 1 1
      175 GETTABLEKS                       R22 R3 K34 ["Util"]
      177 GETTABLEKS                       R22 R22 K35 ["GetTextSize"]
      179 GETIMPORT                        R23 K5 [require]
      181 GETTABLEKS                       R24 R0 K12 ["Src"]
      183 GETTABLEKS                       R24 R24 K31 ["Resources"]
      185 GETTABLEKS                       R24 R24 K36 ["PluginStyles"]
      187 CALL                             R23 1 1
      188 GETIMPORT                        R24 K5 [require]
      190 GETTABLEKS                       R25 R0 K12 ["Src"]
      192 GETTABLEKS                       R25 R25 K37 ["Flags"]
      194 GETTABLEKS                       R25 R25 K38 ["getFFlagAmrAudioInlinePlay"]
      196 CALL                             R24 1 1
      197 GETIMPORT                        R25 K5 [require]
      199 GETTABLEKS                       R26 R0 K12 ["Src"]
      201 GETTABLEKS                       R26 R26 K37 ["Flags"]
      203 GETTABLEKS                       R26 R26 K39 ["getFFlagAmrOptimizeLoadingPerformance"]
      205 CALL                             R25 1 1
      206 DUPCLOSURE                       R26 K40 [PROTO_0]
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R19
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R20
      211 DUPCLOSURE                       R27 K41 [PROTO_1]
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R22
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R6
      226 CAPTURE                          VAL R7
      227 DUPCLOSURE                       R28 K42 [PROTO_5]
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R10
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R14
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R13
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R2
      241 RETURN                           R28 1
