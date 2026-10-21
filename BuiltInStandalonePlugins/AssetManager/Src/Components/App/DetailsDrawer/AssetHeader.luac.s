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
       11 GETUPVAL                         R2 0
       12 NAMECALL                         R2 R2 K3 ["getCurrentShownScope"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 CALL                             R0 3 0
       17 RETURN                           R0 0

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
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R4 R0 K1 ["Asset"]
       14 GETUPVAL                         R5 3
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R6 R6 K2 ["MenuContext"]
       18 GETTABLEKS                       R6 R6 K1 ["Asset"]
       20 DUPTABLE                         R7 K4 [{"Path"}]
       21 GETTABLEKS                       R8 R4 K3 ["Path"]
       23 SETTABLEKS                       R8 R7 K3 ["Path"]
       25 CALL                             R5 2 1
       26 GETTABLEKS                       R6 R4 K5 ["AssetId"]
       28 GETTABLEKS                       R7 R4 K6 ["AssetType"]
       30 GETTABLEKS                       R9 R4 K6 ["AssetType"]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K6 ["AssetType"]
       35 GETTABLEKS                       R10 R10 K7 ["Folder"]
       37 JUMPIFEQ                         R9 R10 ; [+2]
       39 LOADB                            R8 0 +1
       40 LOADB                            R8 1
       41 GETUPVAL                         R9 5
       42 GETTABLEKS                       R10 R4 K6 ["AssetType"]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R11 R4 K8 ["Source"]
       47 GETUPVAL                         R12 4
       48 GETTABLEKS                       R12 R12 K9 ["AssetSource"]
       50 GETTABLEKS                       R12 R12 K10 ["Uploaded"]
       52 JUMPIFEQ                         R11 R12 ; [+2]
       54 LOADB                            R10 0 +1
       55 LOADB                            R10 1
       56 NEWCLOSURE                       R11 P0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          VAL R2
       61 NEWCLOSURE                       R12 P1
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 NEWCLOSURE                       R13 P2
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          VAL R6
       68 GETUPVAL                         R14 10
       69 GETTABLEKS                       R14 R14 K11 ["createElement"]
       71 GETUPVAL                         R15 11
       72 GETTABLEKS                       R15 R15 K12 ["View"]
       74 DUPTABLE                         R16 K17 [{["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-xsmall", ["testId"] = "details-drawer-asset-header"}]
       75 DUPTABLE                         R17 K20 [{"TitleRow", "SubtitleRow"}]
       76 GETUPVAL                         R18 10
       77 GETTABLEKS                       R18 R18 K11 ["createElement"]
       79 GETUPVAL                         R19 11
       80 GETTABLEKS                       R19 R19 K12 ["View"]
       82 DUPTABLE                         R20 K24 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y"}]
       83 DUPTABLE                         R21 K29 [{"Title", "InsertButton", "EditButton", "MoreButton"}]
       84 GETUPVAL                         R22 10
       85 GETTABLEKS                       R22 R22 K11 ["createElement"]
       87 GETUPVAL                         R23 11
       88 GETTABLEKS                       R23 R23 K30 ["Text"]
       90 DUPTABLE                         R24 K33 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-title-small text-align-x-left text-truncate-end content-emphasis", ["testId"] = "details-drawer-asset-name"}]
       91 GETTABLEKS                       R25 R4 K34 ["DisplayName"]
       93 SETTABLEKS                       R25 R24 K30 ["Text"]
       95 CALL                             R22 2 1
       96 SETTABLEKS                       R22 R21 K25 ["Title"]
       98 JUMPIFNOT                        R9 ; [+25]
       99 GETUPVAL                         R22 12
      100 LOADN                            R23 2
      101 GETUPVAL                         R24 11
      102 GETTABLEKS                       R24 R24 K35 ["Enums"]
      104 GETTABLEKS                       R24 R24 K36 ["IconName"]
      106 GETTABLEKS                       R24 R24 K37 ["PlusLarge"]
      108 LOADK                            R27 K38 ["ContextMenu"]
      109 LOADK                            R28 K39 ["InsertAsset"]
      110 NAMECALL                         R25 R3 K40 ["getText"]
      112 CALL                             R25 3 1
      113 GETUPVAL                         R26 11
      114 GETTABLEKS                       R26 R26 K35 ["Enums"]
      116 GETTABLEKS                       R26 R26 K41 ["PopoverAlign"]
      118 GETTABLEKS                       R26 R26 K42 ["End"]
      120 MOVE                             R27 R11
      121 LOADK                            R28 K43 ["details-drawer-insert-button"]
      122 CALL                             R22 6 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R22
      125 SETTABLEKS                       R22 R21 K26 ["InsertButton"]
      127 JUMPIFNOT                        R9 ; [+26]
      128 JUMPIFNOT                        R10 ; [+25]
      129 GETUPVAL                         R22 12
      130 LOADN                            R23 3
      131 GETUPVAL                         R24 11
      132 GETTABLEKS                       R24 R24 K35 ["Enums"]
      134 GETTABLEKS                       R24 R24 K36 ["IconName"]
      136 GETTABLEKS                       R24 R24 K44 ["Pencil"]
      138 LOADK                            R27 K38 ["ContextMenu"]
      139 LOADK                            R28 K45 ["EditAsset"]
      140 NAMECALL                         R25 R3 K40 ["getText"]
      142 CALL                             R25 3 1
      143 GETUPVAL                         R26 11
      144 GETTABLEKS                       R26 R26 K35 ["Enums"]
      146 GETTABLEKS                       R26 R26 K41 ["PopoverAlign"]
      148 GETTABLEKS                       R26 R26 K42 ["End"]
      150 MOVE                             R27 R12
      151 LOADK                            R28 K46 ["details-drawer-edit-button"]
      152 CALL                             R22 6 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R22
      155 SETTABLEKS                       R22 R21 K27 ["EditButton"]
      157 GETUPVAL                         R22 12
      158 LOADN                            R23 4
      159 GETUPVAL                         R24 11
      160 GETTABLEKS                       R24 R24 K35 ["Enums"]
      162 GETTABLEKS                       R24 R24 K36 ["IconName"]
      164 GETTABLEKS                       R24 R24 K47 ["ThreeDotsHorizontal"]
      166 LOADK                            R27 K48 ["Tooltip"]
      167 LOADK                            R28 K49 ["CompactOptions"]
      168 NAMECALL                         R25 R3 K40 ["getText"]
      170 CALL                             R25 3 1
      171 GETUPVAL                         R26 11
      172 GETTABLEKS                       R26 R26 K35 ["Enums"]
      174 GETTABLEKS                       R26 R26 K41 ["PopoverAlign"]
      176 GETTABLEKS                       R26 R26 K42 ["End"]
      178 MOVE                             R27 R5
      179 LOADK                            R28 K50 ["details-drawer-more-button"]
      180 CALL                             R22 6 1
      181 SETTABLEKS                       R22 R21 K28 ["MoreButton"]
      183 CALL                             R18 3 1
      184 SETTABLEKS                       R18 R17 K18 ["TitleRow"]
      186 JUMPIF                           R8 ; [+88]
      187 GETUPVAL                         R18 10
      188 GETTABLEKS                       R18 R18 K11 ["createElement"]
      190 GETUPVAL                         R19 11
      191 GETTABLEKS                       R19 R19 K12 ["View"]
      193 DUPTABLE                         R20 K53 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center gap-medium size-full-600"}]
      194 DUPTABLE                         R21 K55 [{"AssetId", "Version"}]
      195 GETUPVAL                         R22 10
      196 GETTABLEKS                       R22 R22 K11 ["createElement"]
      198 GETUPVAL                         R23 11
      199 GETTABLEKS                       R23 R23 K12 ["View"]
      201 DUPTABLE                         R24 K57 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      202 DUPTABLE                         R25 K59 [{"Text", "CopyButton"}]
      203 GETUPVAL                         R26 10
      204 GETTABLEKS                       R26 R26 K11 ["createElement"]
      206 GETUPVAL                         R27 11
      207 GETTABLEKS                       R27 R27 K30 ["Text"]
      209 DUPTABLE                         R28 K62 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-small content-default", ["testId"] = "details-drawer-asset-id"}]
      210 GETTABLEKS                       R30 R4 K5 ["AssetId"]
      212 FASTCALL1                        TOSTRING R30 ; [+2]
      213 GETIMPORT                        R29 K64 [tostring]
      215 CALL                             R29 1 1
      216 SETTABLEKS                       R29 R28 K30 ["Text"]
      218 CALL                             R26 2 1
      219 SETTABLEKS                       R26 R25 K30 ["Text"]
      221 GETUPVAL                         R26 12
      222 LOADN                            R27 2
      223 GETUPVAL                         R28 11
      224 GETTABLEKS                       R28 R28 K35 ["Enums"]
      226 GETTABLEKS                       R28 R28 K36 ["IconName"]
      228 GETTABLEKS                       R28 R28 K65 ["TwoStackedSquares"]
      230 LOADK                            R31 K38 ["ContextMenu"]
      231 LOADK                            R32 K66 ["CopyIdToClipboard"]
      232 NAMECALL                         R29 R3 K40 ["getText"]
      234 CALL                             R29 3 1
      235 GETUPVAL                         R30 11
      236 GETTABLEKS                       R30 R30 K35 ["Enums"]
      238 GETTABLEKS                       R30 R30 K41 ["PopoverAlign"]
      240 GETTABLEKS                       R30 R30 K67 ["Start"]
      242 MOVE                             R31 R13
      243 LOADK                            R32 K68 ["details-drawer-copy-id-button"]
      244 CALL                             R26 6 1
      245 SETTABLEKS                       R26 R25 K58 ["CopyButton"]
      247 CALL                             R22 3 1
      248 SETTABLEKS                       R22 R21 K5 ["AssetId"]
      250 GETTABLEKS                       R23 R4 K69 ["VersionNumber"]
      252 JUMPIFNOT                        R23 ; [+17]
      253 GETUPVAL                         R22 10
      254 GETTABLEKS                       R22 R22 K11 ["createElement"]
      256 GETUPVAL                         R23 11
      257 GETTABLEKS                       R23 R23 K30 ["Text"]
      259 DUPTABLE                         R24 K71 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small content-default", ["testId"] = "details-drawer-version"}]
      260 LOADK                            R25 K72 ["v%*"]
      261 GETTABLEKS                       R27 R4 K69 ["VersionNumber"]
      263 NAMECALL                         R25 R25 K73 ["format"]
      265 CALL                             R25 2 1
      266 SETTABLEKS                       R25 R24 K30 ["Text"]
      268 CALL                             R22 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R22
      271 SETTABLEKS                       R22 R21 K54 ["Version"]
      273 CALL                             R18 3 1
      274 JUMP                             ; [+1]
      275 LOADNIL                          R18
      276 SETTABLEKS                       R18 R17 K19 ["SubtitleRow"]
      278 CALL                             R14 3 -1
      279 RETURN                           R14 -1

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
       54 GETTABLEKS                       R9 R9 K17 ["Networking"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K14 ["Types"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K12 ["Src"]
       68 GETTABLEKS                       R11 R11 K18 ["Util"]
       70 GETTABLEKS                       R11 R11 K19 ["copyAssetId"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K12 ["Src"]
       77 GETTABLEKS                       R12 R12 K18 ["Util"]
       79 GETTABLEKS                       R12 R12 K20 ["insertItems"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Src"]
       86 GETTABLEKS                       R13 R13 K18 ["Util"]
       88 GETTABLEKS                       R13 R13 K21 ["isInsertable"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K12 ["Src"]
       95 GETTABLEKS                       R14 R14 K18 ["Util"]
       97 GETTABLEKS                       R14 R14 K22 ["openAssetConfig"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K12 ["Src"]
      104 GETTABLEKS                       R15 R15 K23 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K24 ["useContextMenu"]
      108 CALL                             R14 1 1
      109 DUPCLOSURE                       R15 K25 [PROTO_0]
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R2
      112 DUPCLOSURE                       R16 K26 [PROTO_4]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R15
      126 RETURN                           R16 1
