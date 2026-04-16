PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Image"]
        6 DUPTABLE                         R3 K4 [{"Image", "LayoutOrder", "tag"}]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K5 ["get"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K6 ["AvailableImages"]
       13 GETTABLEKS                       R5 R6 K7 ["Folder"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K1 ["Image"]
       18 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       20 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       22 LOADK                            R4 K8 ["size-900 bg-action-subtle"]
       23 SETTABLEKS                       R4 R3 K3 ["tag"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_1:
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

PROTO_2:
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
       56 JUMPIFNOTEQKN                    R12 K11 [1] ; [+258]
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
      122 GETUPVAL                         R27 8
      123 CALL                             R27 0 1
      124 JUMPIFNOT                        R27 ; [+17]
      125 GETUPVAL                         R29 5
      126 GETTABLEKS                       R28 R29 K13 ["AssetType"]
      128 GETTABLEKS                       R27 R28 K30 ["Folder"]
      130 JUMPIFNOTEQ                      R18 R27 ; [+11]
      132 GETUPVAL                         R27 6
      133 GETTABLEKS                       R26 R27 K17 ["createElement"]
      135 GETUPVAL                         R27 9
      136 DUPTABLE                         R28 K31 [{"LayoutOrder"}]
      137 LOADN                            R29 1
      138 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      140 CALL                             R26 2 1
      141 JUMP                             ; [+46]
      142 GETUPVAL                         R27 6
      143 GETTABLEKS                       R26 R27 K17 ["createElement"]
      145 GETUPVAL                         R28 7
      146 GETTABLEKS                       R27 R28 K18 ["View"]
      148 DUPTABLE                         R28 K32 [{"LayoutOrder", "tag"}]
      149 LOADN                            R29 1
      150 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      152 LOADK                            R29 K33 ["size-900 bg-foreground-contrast radius-small"]
      153 SETTABLEKS                       R29 R28 K21 ["tag"]
      155 DUPTABLE                         R29 K36 [{"Thumbnail", "PackageLinkIcon"}]
      156 GETUPVAL                         R31 6
      157 GETTABLEKS                       R30 R31 K17 ["createElement"]
      159 GETUPVAL                         R31 10
      160 DUPTABLE                         R32 K37 [{"AssetId", "AssetType"}]
      161 SETTABLEKS                       R19 R32 K14 ["AssetId"]
      163 SETTABLEKS                       R18 R32 K13 ["AssetType"]
      165 CALL                             R30 2 1
      166 SETTABLEKS                       R30 R29 K34 ["Thumbnail"]
      168 JUMPIFNOT                        R20 ; [+15]
      169 GETUPVAL                         R31 6
      170 GETTABLEKS                       R30 R31 K17 ["createElement"]
      172 GETUPVAL                         R32 7
      173 GETTABLEKS                       R31 R32 K38 ["Image"]
      175 DUPTABLE                         R32 K40 [{"ZIndex", "tag"}]
      176 LOADN                            R33 2
      177 SETTABLEKS                       R33 R32 K39 ["ZIndex"]
      179 LOADK                            R33 K41 ["icon-packageLink am-size-icon-xsmall radius-xsmall anchor-bottom-right bg-over-media-0 data-testid=package-link-icon"]
      180 SETTABLEKS                       R33 R32 K21 ["tag"]
      182 CALL                             R30 2 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R30
      185 SETTABLEKS                       R30 R29 K35 ["PackageLinkIcon"]
      187 CALL                             R26 3 1
      188 SETTABLEKS                       R26 R25 K27 ["ThumbnailContainer"]
      190 GETUPVAL                         R27 11
      191 CALL                             R27 0 1
      192 JUMPIFNOT                        R27 ; [+26]
      193 JUMPIFNOT                        R3 ; [+25]
      194 GETUPVAL                         R27 6
      195 GETTABLEKS                       R26 R27 K17 ["createElement"]
      197 GETUPVAL                         R27 12
      198 DUPTABLE                         R28 K44 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      199 LOADN                            R29 2
      200 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      202 SETTABLEKS                       R15 R28 K42 ["InitialText"]
      204 SETTABLEKS                       R18 R28 K43 ["ItemType"]
      206 SETTABLEKS                       R8 R28 K2 ["ItemPath"]
      208 GETIMPORT                        R29 K25 [UDim2.new]
      210 LOADN                            R30 0
      211 MOVE                             R31 R21
      212 LOADN                            R32 1
      213 LOADN                            R33 0
      214 CALL                             R29 4 1
      215 SETTABLEKS                       R29 R28 K20 ["Size"]
      217 CALL                             R26 2 1
      218 JUMP                             ; [+91]
      219 JUMPIFNOTEQ                      R19 R1 ; [+20]
      221 GETUPVAL                         R27 6
      222 GETTABLEKS                       R26 R27 K17 ["createElement"]
      224 GETUPVAL                         R27 13
      225 DUPTABLE                         R28 K45 [{"LayoutOrder", "InitialText", "Size"}]
      226 LOADN                            R29 2
      227 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      229 SETTABLEKS                       R15 R28 K42 ["InitialText"]
      231 GETIMPORT                        R29 K47 [UDim2.fromOffset]
      233 MOVE                             R30 R21
      234 LOADN                            R31 0
      235 CALL                             R29 2 1
      236 SETTABLEKS                       R29 R28 K20 ["Size"]
      238 CALL                             R26 2 1
      239 JUMP                             ; [+70]
      240 JUMPIFNOT                        R17 ; [+46]
      241 GETUPVAL                         R27 6
      242 GETTABLEKS                       R26 R27 K17 ["createElement"]
      244 GETUPVAL                         R28 7
      245 GETTABLEKS                       R27 R28 K48 ["Tooltip"]
      247 DUPTABLE                         R28 K51 [{"LayoutOrder", "title", "side"}]
      248 LOADN                            R29 2
      249 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      251 SETTABLEKS                       R15 R28 K49 ["title"]
      253 GETUPVAL                         R32 7
      254 GETTABLEKS                       R31 R32 K52 ["Enums"]
      256 GETTABLEKS                       R30 R31 K53 ["PopoverSide"]
      258 GETTABLEKS                       R29 R30 K54 ["Bottom"]
      260 SETTABLEKS                       R29 R28 K50 ["side"]
      262 GETUPVAL                         R30 6
      263 GETTABLEKS                       R29 R30 K17 ["createElement"]
      265 GETUPVAL                         R31 7
      266 GETTABLEKS                       R30 R31 K55 ["Text"]
      268 DUPTABLE                         R31 K56 [{"LayoutOrder", "Text", "Size", "tag"}]
      269 LOADN                            R32 2
      270 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      272 SETTABLEKS                       R15 R31 K55 ["Text"]
      274 GETIMPORT                        R32 K47 [UDim2.fromOffset]
      276 MOVE                             R33 R21
      277 LOADN                            R34 0
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K20 ["Size"]
      281 LOADK                            R32 K57 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      282 SETTABLEKS                       R32 R31 K21 ["tag"]
      284 CALL                             R29 2 -1
      285 CALL                             R26 -1 1
      286 JUMP                             ; [+23]
      287 GETUPVAL                         R27 6
      288 GETTABLEKS                       R26 R27 K17 ["createElement"]
      290 GETUPVAL                         R28 7
      291 GETTABLEKS                       R27 R28 K55 ["Text"]
      293 DUPTABLE                         R28 K56 [{"LayoutOrder", "Text", "Size", "tag"}]
      294 LOADN                            R29 2
      295 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      297 SETTABLEKS                       R15 R28 K55 ["Text"]
      299 GETIMPORT                        R29 K47 [UDim2.fromOffset]
      301 MOVE                             R30 R21
      302 LOADN                            R31 0
      303 CALL                             R29 2 1
      304 SETTABLEKS                       R29 R28 K20 ["Size"]
      306 LOADK                            R29 K57 ["text-align-x-left text-truncate-end auto-y text-body-small padding-x-small"]
      307 SETTABLEKS                       R29 R28 K21 ["tag"]
      309 CALL                             R26 2 1
      310 SETTABLEKS                       R26 R25 K28 ["AssetName"]
      312 CALL                             R22 3 1
      313 SETTABLE                         R22 R4 R12
      314 JUMP                             ; [+72]
      315 JUMPIFNOT                        R17 ; [+46]
      316 GETUPVAL                         R19 6
      317 GETTABLEKS                       R18 R19 K17 ["createElement"]
      319 GETUPVAL                         R20 7
      320 GETTABLEKS                       R19 R20 K48 ["Tooltip"]
      322 DUPTABLE                         R20 K51 [{"LayoutOrder", "title", "side"}]
      323 SETTABLEKS                       R12 R20 K19 ["LayoutOrder"]
      325 SETTABLEKS                       R15 R20 K49 ["title"]
      327 GETUPVAL                         R24 7
      328 GETTABLEKS                       R23 R24 K52 ["Enums"]
      330 GETTABLEKS                       R22 R23 K53 ["PopoverSide"]
      332 GETTABLEKS                       R21 R22 K54 ["Bottom"]
      334 SETTABLEKS                       R21 R20 K50 ["side"]
      336 GETUPVAL                         R22 6
      337 GETTABLEKS                       R21 R22 K17 ["createElement"]
      339 GETUPVAL                         R23 7
      340 GETTABLEKS                       R22 R23 K55 ["Text"]
      342 DUPTABLE                         R23 K56 [{"LayoutOrder", "Text", "Size", "tag"}]
      343 SETTABLEKS                       R12 R23 K19 ["LayoutOrder"]
      345 SETTABLEKS                       R15 R23 K55 ["Text"]
      347 GETIMPORT                        R24 K25 [UDim2.new]
      349 LOADN                            R25 0
      350 MOVE                             R26 R16
      351 LOADN                            R27 1
      352 LOADN                            R28 0
      353 CALL                             R24 4 1
      354 SETTABLEKS                       R24 R23 K20 ["Size"]
      356 LOADK                            R24 K58 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      357 SETTABLEKS                       R24 R23 K21 ["tag"]
      359 CALL                             R21 2 -1
      360 CALL                             R18 -1 1
      361 JUMP                             ; [+24]
      362 GETUPVAL                         R19 6
      363 GETTABLEKS                       R18 R19 K17 ["createElement"]
      365 GETUPVAL                         R20 7
      366 GETTABLEKS                       R19 R20 K55 ["Text"]
      368 DUPTABLE                         R20 K56 [{"LayoutOrder", "Text", "Size", "tag"}]
      369 SETTABLEKS                       R12 R20 K19 ["LayoutOrder"]
      371 SETTABLEKS                       R15 R20 K55 ["Text"]
      373 GETIMPORT                        R21 K25 [UDim2.new]
      375 LOADN                            R22 0
      376 MOVE                             R23 R16
      377 LOADN                            R24 1
      378 LOADN                            R25 0
      379 CALL                             R21 4 1
      380 SETTABLEKS                       R21 R20 K20 ["Size"]
      382 LOADK                            R21 K58 ["text-align-x-left text-truncate-end text-body-small padding-x-small"]
      383 SETTABLEKS                       R21 R20 K21 ["tag"]
      385 CALL                             R18 2 1
      386 SETTABLE                         R18 R4 R12
      387 FORGLOOP                         R9 2 ; [-374]
      389 RETURN                           R4 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["isMouse1Down"]
        3 CALL                             R3 1 1
        4 JUMPIFNOT                        R3 ; [+18]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["UiZone"]
        9 GETTABLEKS                       R5 R6 K2 ["Browser"]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K3 ["ItemPath"]
       14 NAMECALL                         R3 R3 K4 ["setCurrentHovered"]
       16 CALL                             R3 3 0
       17 GETUPVAL                         R3 0
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 NAMECALL                         R3 R3 K5 ["updateMousePosition"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_7:
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
       28 LOADK                            R8 K3 [""]
       29 GETUPVAL                         R9 7
       30 CALL                             R9 0 1
       31 JUMPIFNOT                        R9 ; [+8]
       32 GETTABLEKS                       R10 R0 K1 ["ItemPath"]
       34 GETTABLE                         R9 R4 R10
       35 JUMPIFNOT                        R9 ; [+2]
       36 LOADK                            R8 K4 ["bg-action-selected"]
       37 JUMP                             ; [+9]
       38 LOADK                            R8 K5 ["am-hover"]
       39 JUMP                             ; [+7]
       40 GETTABLEKS                       R10 R0 K1 ["ItemPath"]
       42 GETTABLE                         R9 R4 R10
       43 JUMPIFNOT                        R9 ; [+2]
       44 LOADK                            R8 K4 ["bg-action-selected"]
       45 JUMP                             ; [+1]
       46 LOADK                            R8 K5 ["am-hover"]
       47 GETUPVAL                         R9 8
       48 GETUPVAL                         R12 9
       49 GETTABLEKS                       R11 R12 K6 ["MenuContext"]
       51 GETTABLEKS                       R10 R11 K7 ["Asset"]
       53 DUPTABLE                         R11 K10 [{"Path", "Index"}]
       54 GETTABLEKS                       R12 R0 K1 ["ItemPath"]
       56 SETTABLEKS                       R12 R11 K8 ["Path"]
       58 GETTABLEKS                       R12 R0 K11 ["Key"]
       60 SETTABLEKS                       R12 R11 K9 ["Index"]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R11 10
       64 GETTABLEKS                       R10 R11 K12 ["createElement"]
       66 GETUPVAL                         R12 11
       67 GETTABLEKS                       R11 R12 K13 ["View"]
       69 DUPTABLE                         R12 K17 [{"LayoutOrder", "Position", "tag"}]
       70 GETTABLEKS                       R13 R0 K11 ["Key"]
       72 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       74 GETTABLEKS                       R13 R0 K15 ["Position"]
       76 SETTABLEKS                       R13 R12 K15 ["Position"]
       78 LOADK                            R14 K18 ["am-size-itemrow auto-x stroke-default stroke-thin %*"]
       79 MOVE                             R16 R8
       80 NAMECALL                         R14 R14 K19 ["format"]
       82 CALL                             R14 2 1
       83 MOVE                             R13 R14
       84 SETTABLEKS                       R13 R12 K16 ["tag"]
       86 DUPTABLE                         R13 K21 [{"InputHandler"}]
       87 GETUPVAL                         R15 10
       88 GETTABLEKS                       R14 R15 K12 ["createElement"]
       90 LOADK                            R15 K22 ["ImageButton"]
       91 NEWTABLE                         R16 8 0
       93 LOADN                            R17 1
       94 SETTABLEKS                       R17 R16 K23 ["BackgroundTransparency"]
       96 GETUPVAL                         R19 10
       97 GETTABLEKS                       R18 R19 K24 ["Event"]
       99 GETTABLEKS                       R17 R18 K25 ["MouseButton2Click"]
      101 NEWCLOSURE                       R18 P0
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          VAL R2
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R1
      108 SETTABLE                         R18 R16 R17
      109 GETUPVAL                         R19 10
      110 GETTABLEKS                       R18 R19 K24 ["Event"]
      112 GETTABLEKS                       R17 R18 K26 ["MouseButton1Down"]
      114 NEWCLOSURE                       R18 P1
      115 CAPTURE                          VAL R2
      116 CAPTURE                          UPVAL U9
      117 CAPTURE                          VAL R0
      118 SETTABLE                         R18 R16 R17
      119 GETUPVAL                         R19 10
      120 GETTABLEKS                       R18 R19 K24 ["Event"]
      122 GETTABLEKS                       R17 R18 K27 ["MouseButton1Up"]
      124 NEWCLOSURE                       R18 P2
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U9
      127 CAPTURE                          VAL R0
      128 SETTABLE                         R18 R16 R17
      129 GETUPVAL                         R19 10
      130 GETTABLEKS                       R18 R19 K24 ["Event"]
      132 GETTABLEKS                       R17 R18 K28 ["MouseMoved"]
      134 NEWCLOSURE                       R18 P3
      135 CAPTURE                          VAL R2
      136 CAPTURE                          UPVAL U9
      137 CAPTURE                          VAL R0
      138 SETTABLE                         R18 R16 R17
      139 GETUPVAL                         R18 10
      140 GETTABLEKS                       R17 R18 K29 ["Tag"]
      142 LOADK                            R18 K30 ["size-full row align-x-left align-y-center"]
      143 SETTABLE                         R18 R16 R17
      144 MOVE                             R17 R7
      145 CALL                             R14 3 1
      146 SETTABLEKS                       R14 R13 K20 ["InputHandler"]
      148 CALL                             R10 3 -1
      149 RETURN                           R10 -1

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
      107 GETTABLEKS                       R14 R15 K24 ["useItemSelection"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Src"]
      114 GETTABLEKS                       R16 R17 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R16 K25 ["useRenamePlaceId_DEPRECATED"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R18 R0 K12 ["Src"]
      123 GETTABLEKS                       R17 R18 K21 ["Hooks"]
      125 GETTABLEKS                       R16 R17 K26 ["useIsEditItem"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R18 R0 K12 ["Src"]
      132 GETTABLEKS                       R17 R18 K27 ["Types"]
      134 CALL                             R16 1 1
      135 GETTABLEKS                       R18 R3 K28 ["Util"]
      137 GETTABLEKS                       R17 R18 K29 ["GetTextSize"]
      139 GETIMPORT                        R18 K5 [require]
      141 GETTABLEKS                       R21 R0 K12 ["Src"]
      143 GETTABLEKS                       R20 R21 K28 ["Util"]
      145 GETTABLEKS                       R19 R20 K30 ["Images"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R22 R0 K12 ["Src"]
      152 GETTABLEKS                       R21 R22 K28 ["Util"]
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
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R18
      197 DUPCLOSURE                       R25 K39 [PROTO_1]
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R16
      200 DUPCLOSURE                       R26 K40 [PROTO_2]
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R6
      215 DUPCLOSURE                       R27 K41 [PROTO_7]
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R10
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R21
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R22
      229 RETURN                           R27 1
