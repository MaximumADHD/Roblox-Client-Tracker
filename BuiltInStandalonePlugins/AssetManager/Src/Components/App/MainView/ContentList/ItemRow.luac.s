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
       74 GETUPVAL                         R3 1
       75 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       77 GETTABLEKS                       R3 R3 K19 ["AssetId"]
       79 JUMPIFNOTEQ                      R1 R3 ; [+7]
       81 JUMPIFNOTEQKN                    R0 K20 [0] ; [+5]
       83 GETUPVAL                         R3 2
       84 GETTABLEKS                       R3 R3 K21 ["PlaceholderText"]
       86 RETURN                           R3 1
       87 FASTCALL1                        TOSTRING R0 ; [+3]
       88 MOVE                             R4 R0
       89 GETIMPORT                        R3 K23 [tostring]
       91 CALL                             R3 1 1
       92 RETURN                           R3 1

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
       41 JUMPIFNOT                        R15 ; [+5]
       42 GETUPVAL                         R16 5
       43 MOVE                             R17 R15
       44 MOVE                             R18 R14
       45 CALL                             R16 2 1
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R16 6
       48 GETTABLEKS                       R16 R16 K11 ["PlaceholderText"]
       50 GETTABLE                         R17 R5 R13
       51 GETTABLEKS                       R17 R17 K12 ["Offset"]
       53 GETUPVAL                         R19 7
       54 MOVE                             R20 R16
       55 CALL                             R19 1 1
       56 GETTABLEKS                       R19 R19 K13 ["X"]
       58 GETUPVAL                         R22 4
       59 LOADK                            R24 K15 ["CellContentPadding"]
       60 NAMECALL                         R22 R22 K9 ["GetAttribute"]
       62 CALL                             R22 2 1
       63 MULK                             R21 R22 K14 [2]
       64 SUB                              R20 R17 R21
       65 JUMPIFLT                         R20 R19 ; [+2]
       67 LOADB                            R18 0 +1
       68 LOADB                            R18 1
       69 JUMPIFNOTEQKN                    R13 K16 [1] ; [+200]
       71 MOVE                             R21 R7
       72 MOVE                             R22 R8
       73 GETUPVAL                         R23 8
       74 GETTABLEKS                       R23 R23 K17 ["AssetInfoField"]
       76 GETTABLEKS                       R23 R23 K18 ["AssetType"]
       78 NAMECALL                         R19 R1 K10 ["getItemField"]
       80 CALL                             R19 4 1
       81 MOVE                             R22 R7
       82 MOVE                             R23 R8
       83 GETUPVAL                         R24 8
       84 GETTABLEKS                       R24 R24 K17 ["AssetInfoField"]
       86 GETTABLEKS                       R24 R24 K19 ["AssetId"]
       88 NAMECALL                         R20 R1 K10 ["getItemField"]
       90 CALL                             R20 4 1
       91 MOVE                             R23 R7
       92 MOVE                             R24 R8
       93 GETUPVAL                         R25 8
       94 GETTABLEKS                       R25 R25 K17 ["AssetInfoField"]
       96 GETTABLEKS                       R25 R25 K20 ["IsPackage"]
       98 NAMECALL                         R21 R1 K10 ["getItemField"]
      100 CALL                             R21 4 1
      101 SUB                              R23 R17 R9
      102 GETUPVAL                         R24 4
      103 LOADK                            R26 K15 ["CellContentPadding"]
      104 NAMECALL                         R24 R24 K9 ["GetAttribute"]
      106 CALL                             R24 2 1
      107 SUB                              R22 R23 R24
      108 GETUPVAL                         R23 9
      109 GETTABLEKS                       R23 R23 K21 ["createElement"]
      111 GETUPVAL                         R24 10
      112 GETTABLEKS                       R24 R24 K22 ["View"]
      114 DUPTABLE                         R25 K27 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-left align-y-center padding-left-small"}]
      115 SETTABLEKS                       R13 R25 K23 ["LayoutOrder"]
      117 GETIMPORT                        R26 K30 [UDim2.new]
      119 LOADN                            R27 0
      120 MOVE                             R28 R17
      121 LOADN                            R29 1
      122 LOADN                            R30 0
      123 CALL                             R26 4 1
      124 SETTABLEKS                       R26 R25 K24 ["Size"]
      126 DUPTABLE                         R26 K33 [{"ThumbnailContainer", "AssetName"}]
      127 GETUPVAL                         R27 9
      128 GETTABLEKS                       R27 R27 K21 ["createElement"]
      130 GETUPVAL                         R28 10
      131 GETTABLEKS                       R28 R28 K22 ["View"]
      133 DUPTABLE                         R29 K34 [{["LayoutOrder"] = 1, ["Size"], ["tag"]}]
      134 GETUPVAL                         R31 2
      135 CALL                             R31 0 1
      136 JUMPIFNOT                        R31 ; [+6]
      137 GETIMPORT                        R30 K36 [UDim2.fromOffset]
      139 MOVE                             R31 R9
      140 MOVE                             R32 R9
      141 CALL                             R30 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R30
      144 SETTABLEKS                       R30 R29 K24 ["Size"]
      146 NEWTABLE                         R30 2 0
      148 LOADB                            R31 1
      149 SETTABLEKS                       R31 R30 K37 ["bg-foreground-contrast radius-small"]
      151 GETUPVAL                         R32 2
      152 CALL                             R32 0 1
      153 NOT                              R31 R32
      154 SETTABLEKS                       R31 R30 K38 ["size-900"]
      156 SETTABLEKS                       R30 R29 K25 ["tag"]
      158 DUPTABLE                         R30 K41 [{"Thumbnail", "PackageLinkIcon"}]
      159 GETUPVAL                         R31 9
      160 GETTABLEKS                       R31 R31 K21 ["createElement"]
      162 GETUPVAL                         R32 11
      163 DUPTABLE                         R33 K42 [{"AssetId", "AssetType"}]
      164 SETTABLEKS                       R20 R33 K19 ["AssetId"]
      166 SETTABLEKS                       R19 R33 K18 ["AssetType"]
      168 CALL                             R31 2 1
      169 SETTABLEKS                       R31 R30 K39 ["Thumbnail"]
      171 JUMPIFNOT                        R21 ; [+9]
      172 GETUPVAL                         R31 9
      173 GETTABLEKS                       R31 R31 K21 ["createElement"]
      175 GETUPVAL                         R32 10
      176 GETTABLEKS                       R32 R32 K43 ["Image"]
      178 DUPTABLE                         R33 K48 [{["ZIndex"] = 2, ["tag"] = "am-size-icon-xsmall icon-packageLink anchor-bottom-right radius-xsmall bg-over-media-0", ["testId"] = "package-link-icon"}]
      179 CALL                             R31 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R31
      182 SETTABLEKS                       R31 R30 K40 ["PackageLinkIcon"]
      184 CALL                             R27 3 1
      185 SETTABLEKS                       R27 R26 K31 ["ThumbnailContainer"]
      187 JUMPIFNOT                        R2 ; [+22]
      188 GETUPVAL                         R27 9
      189 GETTABLEKS                       R27 R27 K21 ["createElement"]
      191 GETUPVAL                         R28 12
      192 DUPTABLE                         R29 K51 [{["LayoutOrder"] = 2, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      193 SETTABLEKS                       R16 R29 K49 ["InitialText"]
      195 SETTABLEKS                       R19 R29 K50 ["ItemType"]
      197 SETTABLEKS                       R8 R29 K2 ["ItemPath"]
      199 GETIMPORT                        R30 K30 [UDim2.new]
      201 LOADN                            R31 0
      202 MOVE                             R32 R22
      203 LOADN                            R33 1
      204 LOADN                            R34 0
      205 CALL                             R30 4 1
      206 SETTABLEKS                       R30 R29 K24 ["Size"]
      208 CALL                             R27 2 1
      209 JUMP                             ; [+55]
      210 JUMPIFNOT                        R18 ; [+37]
      211 GETUPVAL                         R27 9
      212 GETTABLEKS                       R27 R27 K21 ["createElement"]
      214 GETUPVAL                         R28 10
      215 GETTABLEKS                       R28 R28 K52 ["Tooltip"]
      217 DUPTABLE                         R29 K55 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      218 SETTABLEKS                       R16 R29 K53 ["title"]
      220 GETUPVAL                         R30 10
      221 GETTABLEKS                       R30 R30 K56 ["Enums"]
      223 GETTABLEKS                       R30 R30 K57 ["PopoverSide"]
      225 GETTABLEKS                       R30 R30 K58 ["Bottom"]
      227 SETTABLEKS                       R30 R29 K54 ["side"]
      229 GETUPVAL                         R30 9
      230 GETTABLEKS                       R30 R30 K21 ["createElement"]
      232 GETUPVAL                         R31 10
      233 GETTABLEKS                       R31 R31 K59 ["Text"]
      235 DUPTABLE                         R32 K61 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      236 SETTABLEKS                       R16 R32 K59 ["Text"]
      238 GETIMPORT                        R33 K36 [UDim2.fromOffset]
      240 MOVE                             R34 R22
      241 LOADN                            R35 0
      242 CALL                             R33 2 1
      243 SETTABLEKS                       R33 R32 K24 ["Size"]
      245 CALL                             R30 2 -1
      246 CALL                             R27 -1 1
      247 JUMP                             ; [+17]
      248 GETUPVAL                         R27 9
      249 GETTABLEKS                       R27 R27 K21 ["createElement"]
      251 GETUPVAL                         R28 10
      252 GETTABLEKS                       R28 R28 K59 ["Text"]
      254 DUPTABLE                         R29 K61 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      255 SETTABLEKS                       R16 R29 K59 ["Text"]
      257 GETIMPORT                        R30 K36 [UDim2.fromOffset]
      259 MOVE                             R31 R22
      260 LOADN                            R32 0
      261 CALL                             R30 2 1
      262 SETTABLEKS                       R30 R29 K24 ["Size"]
      264 CALL                             R27 2 1
      265 SETTABLEKS                       R27 R26 K32 ["AssetName"]
      267 CALL                             R23 3 1
      268 SETTABLE                         R23 R3 R13
      269 JUMP                             ; [+66]
      270 JUMPIFNOT                        R18 ; [+43]
      271 GETUPVAL                         R19 9
      272 GETTABLEKS                       R19 R19 K21 ["createElement"]
      274 GETUPVAL                         R20 10
      275 GETTABLEKS                       R20 R20 K52 ["Tooltip"]
      277 DUPTABLE                         R21 K62 [{"LayoutOrder", "title", "side"}]
      278 SETTABLEKS                       R13 R21 K23 ["LayoutOrder"]
      280 SETTABLEKS                       R16 R21 K53 ["title"]
      282 GETUPVAL                         R22 10
      283 GETTABLEKS                       R22 R22 K56 ["Enums"]
      285 GETTABLEKS                       R22 R22 K57 ["PopoverSide"]
      287 GETTABLEKS                       R22 R22 K58 ["Bottom"]
      289 SETTABLEKS                       R22 R21 K54 ["side"]
      291 GETUPVAL                         R22 9
      292 GETTABLEKS                       R22 R22 K21 ["createElement"]
      294 GETUPVAL                         R23 10
      295 GETTABLEKS                       R23 R23 K59 ["Text"]
      297 DUPTABLE                         R24 K64 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      298 SETTABLEKS                       R13 R24 K23 ["LayoutOrder"]
      300 SETTABLEKS                       R16 R24 K59 ["Text"]
      302 GETIMPORT                        R25 K30 [UDim2.new]
      304 LOADN                            R26 0
      305 MOVE                             R27 R17
      306 LOADN                            R28 1
      307 LOADN                            R29 0
      308 CALL                             R25 4 1
      309 SETTABLEKS                       R25 R24 K24 ["Size"]
      311 CALL                             R22 2 -1
      312 CALL                             R19 -1 1
      313 JUMP                             ; [+21]
      314 GETUPVAL                         R19 9
      315 GETTABLEKS                       R19 R19 K21 ["createElement"]
      317 GETUPVAL                         R20 10
      318 GETTABLEKS                       R20 R20 K59 ["Text"]
      320 DUPTABLE                         R21 K64 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      321 SETTABLEKS                       R13 R21 K23 ["LayoutOrder"]
      323 SETTABLEKS                       R16 R21 K59 ["Text"]
      325 GETIMPORT                        R22 K30 [UDim2.new]
      327 LOADN                            R23 0
      328 MOVE                             R24 R17
      329 LOADN                            R25 1
      330 LOADN                            R26 0
      331 CALL                             R22 4 1
      332 SETTABLEKS                       R22 R21 K24 ["Size"]
      334 CALL                             R19 2 1
      335 SETTABLE                         R19 R3 R13
      336 FORGLOOP                         R10 2 ; [-302]
      338 RETURN                           R3 1

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
      104 NOT                              R16 R10
      105 SETTABLEKS                       R16 R15 K26 ["stroke-thin stroke-default"]
      107 SETTABLEKS                       R10 R15 K27 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      109 SETTABLEKS                       R15 R14 K16 ["tag"]
      111 DUPTABLE                         R15 K29 [{"InputHandler"}]
      112 GETUPVAL                         R16 6
      113 GETTABLEKS                       R16 R16 K10 ["createElement"]
      115 LOADK                            R17 K30 ["ImageButton"]
      116 NEWTABLE                         R18 4 0
      118 GETUPVAL                         R19 6
      119 GETTABLEKS                       R19 R19 K31 ["Event"]
      121 GETTABLEKS                       R19 R19 K32 ["MouseButton2Click"]
      123 NEWCLOSURE                       R20 P0
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R1
      126 CAPTURE                          UPVAL U10
      127 CAPTURE                          VAL R11
      128 SETTABLE                         R20 R18 R19
      129 GETUPVAL                         R19 6
      130 GETTABLEKS                       R19 R19 K31 ["Event"]
      132 GETTABLEKS                       R19 R19 K33 ["MouseButton1Down"]
      134 NEWCLOSURE                       R20 P1
      135 CAPTURE                          VAL R1
      136 CAPTURE                          UPVAL U10
      137 CAPTURE                          VAL R0
      138 SETTABLE                         R20 R18 R19
      139 GETUPVAL                         R19 6
      140 GETTABLEKS                       R19 R19 K31 ["Event"]
      142 GETTABLEKS                       R19 R19 K34 ["MouseButton1Up"]
      144 NEWCLOSURE                       R20 P2
      145 CAPTURE                          VAL R1
      146 CAPTURE                          UPVAL U10
      147 CAPTURE                          VAL R0
      148 SETTABLE                         R20 R18 R19
      149 GETUPVAL                         R19 6
      150 GETTABLEKS                       R19 R19 K35 ["Tag"]
      152 LOADK                            R20 K36 ["gui-object-defaults size-full row align-x-left align-y-center"]
      153 SETTABLE                         R20 R18 R19
      154 MOVE                             R19 R5
      155 CALL                             R16 3 1
      156 SETTABLEKS                       R16 R15 K28 ["InputHandler"]
      158 CALL                             R12 3 -1
      159 RETURN                           R12 -1

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
      168 GETTABLEKS                       R22 R22 K29 ["Resources"]
      170 GETTABLEKS                       R22 R22 K34 ["PluginStyles"]
      172 CALL                             R21 1 1
      173 GETIMPORT                        R22 K5 [require]
      175 GETTABLEKS                       R23 R0 K12 ["Src"]
      177 GETTABLEKS                       R23 R23 K35 ["Flags"]
      179 GETTABLEKS                       R23 R23 K36 ["getFFlagAmrListViewCustomRowHeight"]
      181 CALL                             R22 1 1
      182 DUPCLOSURE                       R23 K37 [PROTO_0]
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R18
      186 DUPCLOSURE                       R24 K38 [PROTO_1]
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R6
      200 DUPCLOSURE                       R25 K39 [PROTO_5]
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R9
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R22
      214 RETURN                           R25 1
