PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["createElement"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K1 ["Tooltip"]
        6 DUPTABLE                         R8 K6 [{"LayoutOrder", "title", "side", "align"}]
        7 SETTABLEKS                       R0 R8 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R2 R8 K3 ["title"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K7 ["Enums"]
       14 GETTABLEKS                       R9 R9 K8 ["PopoverSide"]
       16 GETTABLEKS                       R9 R9 K9 ["Bottom"]
       18 SETTABLEKS                       R9 R8 K4 ["side"]
       20 SETTABLEKS                       R3 R8 K5 ["align"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K0 ["createElement"]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K10 ["IconButton"]
       28 DUPTABLE                         R11 K16 [{"onActivated", "icon", "variant", "size", "testId"}]
       29 SETTABLEKS                       R4 R11 K11 ["onActivated"]
       31 SETTABLEKS                       R1 R11 K12 ["icon"]
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R12 R12 K7 ["Enums"]
       36 GETTABLEKS                       R12 R12 K17 ["ButtonVariant"]
       38 GETTABLEKS                       R12 R12 K18 ["Utility"]
       40 SETTABLEKS                       R12 R11 K13 ["variant"]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K7 ["Enums"]
       45 GETTABLEKS                       R12 R12 K19 ["InputSize"]
       47 GETTABLEKS                       R12 R12 K20 ["XSmall"]
       49 SETTABLEKS                       R12 R11 K14 ["size"]
       51 SETTABLEKS                       R5 R11 K15 ["testId"]
       53 CALL                             R9 2 -1
       54 CALL                             R6 -1 -1
       55 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InsertType"]
        4 GETTABLEKS                       R2 R2 K1 ["DetailsDrawer"]
        6 NAMECALL                         R0 R0 K2 ["setAnalyticsInsertAction"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 1
        3 GETUPVAL                         R2 1
        4 SETLIST                          R1 R2 1 [1]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K1 ["Asset"]
       10 GETUPVAL                         R4 2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K2 ["MenuContext"]
       14 GETTABLEKS                       R5 R5 K1 ["Asset"]
       16 DUPTABLE                         R6 K4 [{"Path"}]
       17 GETTABLEKS                       R7 R3 K3 ["Path"]
       19 SETTABLEKS                       R7 R6 K3 ["Path"]
       21 CALL                             R4 2 1
       22 GETTABLEKS                       R5 R3 K5 ["AssetId"]
       24 GETTABLEKS                       R6 R3 K6 ["AssetType"]
       26 GETTABLEKS                       R8 R3 K6 ["AssetType"]
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R9 R9 K6 ["AssetType"]
       31 GETTABLEKS                       R9 R9 K7 ["Folder"]
       33 JUMPIFEQ                         R8 R9 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 GETUPVAL                         R8 4
       38 GETTABLEKS                       R9 R3 K6 ["AssetType"]
       40 CALL                             R8 1 1
       41 GETTABLEKS                       R10 R3 K8 ["Source"]
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R11 R11 K9 ["AssetSource"]
       46 GETTABLEKS                       R11 R11 K10 ["Uploaded"]
       48 JUMPIFEQ                         R10 R11 ; [+2]
       50 LOADB                            R9 0 +1
       51 LOADB                            R9 1
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 NEWCLOSURE                       R11 P1
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 NEWCLOSURE                       R12 P2
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          VAL R5
       63 GETUPVAL                         R13 9
       64 GETTABLEKS                       R13 R13 K11 ["createElement"]
       66 GETUPVAL                         R14 10
       67 GETTABLEKS                       R14 R14 K12 ["View"]
       69 DUPTABLE                         R15 K17 [{["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-xsmall", ["testId"] = "details-drawer-asset-header"}]
       70 DUPTABLE                         R16 K20 [{"TitleRow", "SubtitleRow"}]
       71 GETUPVAL                         R17 9
       72 GETTABLEKS                       R17 R17 K11 ["createElement"]
       74 GETUPVAL                         R18 10
       75 GETTABLEKS                       R18 R18 K12 ["View"]
       77 DUPTABLE                         R19 K24 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y"}]
       78 DUPTABLE                         R20 K29 [{"Title", "InsertButton", "EditButton", "MoreButton"}]
       79 GETUPVAL                         R21 9
       80 GETTABLEKS                       R21 R21 K11 ["createElement"]
       82 GETUPVAL                         R22 10
       83 GETTABLEKS                       R22 R22 K30 ["Text"]
       85 DUPTABLE                         R23 K33 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-title-small text-align-x-left text-truncate-end content-emphasis", ["testId"] = "details-drawer-asset-name"}]
       86 GETTABLEKS                       R24 R3 K34 ["DisplayName"]
       88 SETTABLEKS                       R24 R23 K30 ["Text"]
       90 CALL                             R21 2 1
       91 SETTABLEKS                       R21 R20 K25 ["Title"]
       93 JUMPIFNOT                        R8 ; [+25]
       94 GETUPVAL                         R21 11
       95 LOADN                            R22 2
       96 GETUPVAL                         R23 10
       97 GETTABLEKS                       R23 R23 K35 ["Enums"]
       99 GETTABLEKS                       R23 R23 K36 ["IconName"]
      101 GETTABLEKS                       R23 R23 K37 ["PlusLarge"]
      103 LOADK                            R26 K38 ["ContextMenu"]
      104 LOADK                            R27 K39 ["InsertAsset"]
      105 NAMECALL                         R24 R2 K40 ["getText"]
      107 CALL                             R24 3 1
      108 GETUPVAL                         R25 10
      109 GETTABLEKS                       R25 R25 K35 ["Enums"]
      111 GETTABLEKS                       R25 R25 K41 ["PopoverAlign"]
      113 GETTABLEKS                       R25 R25 K42 ["End"]
      115 MOVE                             R26 R10
      116 LOADK                            R27 K43 ["details-drawer-insert-button"]
      117 CALL                             R21 6 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R21
      120 SETTABLEKS                       R21 R20 K26 ["InsertButton"]
      122 JUMPIFNOT                        R8 ; [+26]
      123 JUMPIFNOT                        R9 ; [+25]
      124 GETUPVAL                         R21 11
      125 LOADN                            R22 3
      126 GETUPVAL                         R23 10
      127 GETTABLEKS                       R23 R23 K35 ["Enums"]
      129 GETTABLEKS                       R23 R23 K36 ["IconName"]
      131 GETTABLEKS                       R23 R23 K44 ["Pencil"]
      133 LOADK                            R26 K38 ["ContextMenu"]
      134 LOADK                            R27 K45 ["EditAsset"]
      135 NAMECALL                         R24 R2 K40 ["getText"]
      137 CALL                             R24 3 1
      138 GETUPVAL                         R25 10
      139 GETTABLEKS                       R25 R25 K35 ["Enums"]
      141 GETTABLEKS                       R25 R25 K41 ["PopoverAlign"]
      143 GETTABLEKS                       R25 R25 K42 ["End"]
      145 MOVE                             R26 R11
      146 LOADK                            R27 K46 ["details-drawer-edit-button"]
      147 CALL                             R21 6 1
      148 JUMP                             ; [+1]
      149 LOADNIL                          R21
      150 SETTABLEKS                       R21 R20 K27 ["EditButton"]
      152 GETUPVAL                         R21 11
      153 LOADN                            R22 4
      154 GETUPVAL                         R23 10
      155 GETTABLEKS                       R23 R23 K35 ["Enums"]
      157 GETTABLEKS                       R23 R23 K36 ["IconName"]
      159 GETTABLEKS                       R23 R23 K47 ["ThreeDotsHorizontal"]
      161 LOADK                            R26 K48 ["Tooltip"]
      162 LOADK                            R27 K49 ["CompactOptions"]
      163 NAMECALL                         R24 R2 K40 ["getText"]
      165 CALL                             R24 3 1
      166 GETUPVAL                         R25 10
      167 GETTABLEKS                       R25 R25 K35 ["Enums"]
      169 GETTABLEKS                       R25 R25 K41 ["PopoverAlign"]
      171 GETTABLEKS                       R25 R25 K42 ["End"]
      173 MOVE                             R26 R4
      174 LOADK                            R27 K50 ["details-drawer-more-button"]
      175 CALL                             R21 6 1
      176 SETTABLEKS                       R21 R20 K28 ["MoreButton"]
      178 CALL                             R17 3 1
      179 SETTABLEKS                       R17 R16 K18 ["TitleRow"]
      181 JUMPIF                           R7 ; [+88]
      182 GETUPVAL                         R17 9
      183 GETTABLEKS                       R17 R17 K11 ["createElement"]
      185 GETUPVAL                         R18 10
      186 GETTABLEKS                       R18 R18 K12 ["View"]
      188 DUPTABLE                         R19 K53 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center gap-medium size-full-600"}]
      189 DUPTABLE                         R20 K55 [{"AssetId", "Version"}]
      190 GETUPVAL                         R21 9
      191 GETTABLEKS                       R21 R21 K11 ["createElement"]
      193 GETUPVAL                         R22 10
      194 GETTABLEKS                       R22 R22 K12 ["View"]
      196 DUPTABLE                         R23 K57 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      197 DUPTABLE                         R24 K59 [{"Text", "CopyButton"}]
      198 GETUPVAL                         R25 9
      199 GETTABLEKS                       R25 R25 K11 ["createElement"]
      201 GETUPVAL                         R26 10
      202 GETTABLEKS                       R26 R26 K30 ["Text"]
      204 DUPTABLE                         R27 K62 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-small content-default", ["testId"] = "details-drawer-asset-id"}]
      205 GETTABLEKS                       R29 R3 K5 ["AssetId"]
      207 FASTCALL1                        TOSTRING R29 ; [+2]
      208 GETIMPORT                        R28 K64 [tostring]
      210 CALL                             R28 1 1
      211 SETTABLEKS                       R28 R27 K30 ["Text"]
      213 CALL                             R25 2 1
      214 SETTABLEKS                       R25 R24 K30 ["Text"]
      216 GETUPVAL                         R25 11
      217 LOADN                            R26 2
      218 GETUPVAL                         R27 10
      219 GETTABLEKS                       R27 R27 K35 ["Enums"]
      221 GETTABLEKS                       R27 R27 K36 ["IconName"]
      223 GETTABLEKS                       R27 R27 K65 ["TwoStackedSquares"]
      225 LOADK                            R30 K38 ["ContextMenu"]
      226 LOADK                            R31 K66 ["CopyIdToClipboard"]
      227 NAMECALL                         R28 R2 K40 ["getText"]
      229 CALL                             R28 3 1
      230 GETUPVAL                         R29 10
      231 GETTABLEKS                       R29 R29 K35 ["Enums"]
      233 GETTABLEKS                       R29 R29 K41 ["PopoverAlign"]
      235 GETTABLEKS                       R29 R29 K67 ["Start"]
      237 MOVE                             R30 R12
      238 LOADK                            R31 K68 ["details-drawer-copy-id-button"]
      239 CALL                             R25 6 1
      240 SETTABLEKS                       R25 R24 K58 ["CopyButton"]
      242 CALL                             R21 3 1
      243 SETTABLEKS                       R21 R20 K5 ["AssetId"]
      245 GETTABLEKS                       R22 R3 K69 ["VersionNumber"]
      247 JUMPIFNOT                        R22 ; [+17]
      248 GETUPVAL                         R21 9
      249 GETTABLEKS                       R21 R21 K11 ["createElement"]
      251 GETUPVAL                         R22 10
      252 GETTABLEKS                       R22 R22 K30 ["Text"]
      254 DUPTABLE                         R23 K71 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small content-default", ["testId"] = "details-drawer-version"}]
      255 LOADK                            R24 K72 ["v%*"]
      256 GETTABLEKS                       R26 R3 K69 ["VersionNumber"]
      258 NAMECALL                         R24 R24 K73 ["format"]
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K30 ["Text"]
      263 CALL                             R21 2 1
      264 JUMP                             ; [+1]
      265 LOADNIL                          R21
      266 SETTABLEKS                       R21 R20 K54 ["Version"]
      268 CALL                             R17 3 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R17
      271 SETTABLEKS                       R17 R16 K19 ["SubtitleRow"]
      273 CALL                             R13 3 -1
      274 RETURN                           R13 -1

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
       36 GETTABLEKS                       R7 R7 K13 ["Analytics"]
       38 GETTABLEKS                       R7 R7 K14 ["Types"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Controllers"]
       47 GETTABLEKS                       R8 R8 K16 ["ItemsController"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K14 ["Types"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Util"]
       63 GETTABLEKS                       R10 R10 K18 ["copyAssetId"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K17 ["Util"]
       72 GETTABLEKS                       R11 R11 K19 ["insertItems"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K17 ["Util"]
       81 GETTABLEKS                       R12 R12 K20 ["isInsertable"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R13 K17 ["Util"]
       90 GETTABLEKS                       R13 R13 K21 ["openAssetConfig"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K12 ["Src"]
       97 GETTABLEKS                       R14 R14 K22 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K23 ["useContextMenu"]
      101 CALL                             R13 1 1
      102 DUPCLOSURE                       R14 K24 [PROTO_0]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R2
      105 DUPCLOSURE                       R15 K25 [PROTO_4]
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R14
      118 RETURN                           R15 1
