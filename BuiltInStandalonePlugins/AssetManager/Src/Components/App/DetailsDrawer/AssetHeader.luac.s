PROTO_0:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["createElement"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R8 R8 K1 ["Tooltip"]
        6 DUPTABLE                         R9 K6 [{"LayoutOrder", "title", "side", "align"}]
        7 SETTABLEKS                       R0 R9 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R2 R9 K3 ["title"]
       11 GETUPVAL                         R10 1
       12 GETTABLEKS                       R10 R10 K7 ["Enums"]
       14 GETTABLEKS                       R10 R10 K8 ["PopoverSide"]
       16 GETTABLEKS                       R10 R10 K9 ["Bottom"]
       18 SETTABLEKS                       R10 R9 K4 ["side"]
       20 SETTABLEKS                       R3 R9 K5 ["align"]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R10 R10 K0 ["createElement"]
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R11 R11 K10 ["IconButton"]
       28 DUPTABLE                         R12 K17 [{"onActivated", "icon", "variant", "size", "testId", "isDisabled"}]
       29 SETTABLEKS                       R4 R12 K11 ["onActivated"]
       31 SETTABLEKS                       R1 R12 K12 ["icon"]
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R13 R13 K7 ["Enums"]
       36 GETTABLEKS                       R13 R13 K18 ["ButtonVariant"]
       38 GETTABLEKS                       R13 R13 K19 ["Utility"]
       40 SETTABLEKS                       R13 R12 K13 ["variant"]
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R13 R13 K7 ["Enums"]
       45 GETTABLEKS                       R13 R13 K20 ["InputSize"]
       47 GETTABLEKS                       R13 R13 K21 ["XSmall"]
       49 SETTABLEKS                       R13 R12 K14 ["size"]
       51 SETTABLEKS                       R5 R12 K15 ["testId"]
       53 SETTABLEKS                       R6 R12 K16 ["isDisabled"]
       55 CALL                             R10 2 -1
       56 CALL                             R7 -1 -1
       57 RETURN                           R7 -1

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
       41 MOVE                             R11 R3
       42 NAMECALL                         R9 R1 K8 ["canEditItem"]
       44 CALL                             R9 2 1
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 NEWCLOSURE                       R12 P2
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          VAL R5
       56 GETUPVAL                         R13 9
       57 GETTABLEKS                       R13 R13 K9 ["createElement"]
       59 GETUPVAL                         R14 10
       60 GETTABLEKS                       R14 R14 K10 ["View"]
       62 DUPTABLE                         R15 K15 [{["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-xsmall", ["testId"] = "details-drawer-asset-header"}]
       63 DUPTABLE                         R16 K18 [{"TitleRow", "SubtitleRow"}]
       64 GETUPVAL                         R17 9
       65 GETTABLEKS                       R17 R17 K9 ["createElement"]
       67 GETUPVAL                         R18 10
       68 GETTABLEKS                       R18 R18 K10 ["View"]
       70 DUPTABLE                         R19 K22 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y"}]
       71 DUPTABLE                         R20 K27 [{"Title", "InsertButton", "EditButton", "MoreButton"}]
       72 GETUPVAL                         R21 9
       73 GETTABLEKS                       R21 R21 K9 ["createElement"]
       75 GETUPVAL                         R22 10
       76 GETTABLEKS                       R22 R22 K28 ["Text"]
       78 DUPTABLE                         R23 K31 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-title-small text-align-x-left text-truncate-end content-emphasis", ["testId"] = "details-drawer-asset-name"}]
       79 GETTABLEKS                       R24 R3 K32 ["DisplayName"]
       81 SETTABLEKS                       R24 R23 K28 ["Text"]
       83 CALL                             R21 2 1
       84 SETTABLEKS                       R21 R20 K23 ["Title"]
       86 JUMPIFNOT                        R8 ; [+36]
       87 GETUPVAL                         R21 9
       88 GETTABLEKS                       R21 R21 K9 ["createElement"]
       90 GETUPVAL                         R22 10
       91 GETTABLEKS                       R22 R22 K33 ["Button"]
       93 DUPTABLE                         R23 K40 [{["LayoutOrder"] = 2, ["text"], ["onActivated"], ["variant"], ["size"], ["testId"] = "details-drawer-insert-button"}]
       94 LOADK                            R26 K41 ["ContextMenu"]
       95 LOADK                            R27 K42 ["Insert"]
       96 NAMECALL                         R24 R2 K43 ["getText"]
       98 CALL                             R24 3 1
       99 SETTABLEKS                       R24 R23 K35 ["text"]
      101 SETTABLEKS                       R10 R23 K36 ["onActivated"]
      103 GETUPVAL                         R24 10
      104 GETTABLEKS                       R24 R24 K44 ["Enums"]
      106 GETTABLEKS                       R24 R24 K45 ["ButtonVariant"]
      108 GETTABLEKS                       R24 R24 K46 ["Standard"]
      110 SETTABLEKS                       R24 R23 K37 ["variant"]
      112 GETUPVAL                         R24 10
      113 GETTABLEKS                       R24 R24 K44 ["Enums"]
      115 GETTABLEKS                       R24 R24 K47 ["InputSize"]
      117 GETTABLEKS                       R24 R24 K48 ["XSmall"]
      119 SETTABLEKS                       R24 R23 K38 ["size"]
      121 CALL                             R21 2 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R21
      124 SETTABLEKS                       R21 R20 K24 ["InsertButton"]
      126 GETUPVAL                         R21 11
      127 LOADN                            R22 3
      128 GETUPVAL                         R23 10
      129 GETTABLEKS                       R23 R23 K44 ["Enums"]
      131 GETTABLEKS                       R23 R23 K49 ["IconName"]
      133 GETTABLEKS                       R23 R23 K50 ["Pencil"]
      135 JUMPIFNOT                        R9 ; [+6]
      136 LOADK                            R26 K41 ["ContextMenu"]
      137 LOADK                            R27 K51 ["EditAsset"]
      138 NAMECALL                         R24 R2 K43 ["getText"]
      140 CALL                             R24 3 1
      141 JUMP                             ; [+5]
      142 LOADK                            R26 K52 ["DetailsDrawer"]
      143 LOADK                            R27 K53 ["NotEditable"]
      144 NAMECALL                         R24 R2 K43 ["getText"]
      146 CALL                             R24 3 1
      147 GETUPVAL                         R25 10
      148 GETTABLEKS                       R25 R25 K44 ["Enums"]
      150 GETTABLEKS                       R25 R25 K54 ["PopoverAlign"]
      152 GETTABLEKS                       R25 R25 K55 ["End"]
      154 MOVE                             R26 R11
      155 LOADK                            R27 K56 ["details-drawer-edit-button"]
      156 NOT                              R28 R9
      157 CALL                             R21 7 1
      158 SETTABLEKS                       R21 R20 K25 ["EditButton"]
      160 GETUPVAL                         R21 11
      161 LOADN                            R22 4
      162 GETUPVAL                         R23 10
      163 GETTABLEKS                       R23 R23 K44 ["Enums"]
      165 GETTABLEKS                       R23 R23 K49 ["IconName"]
      167 GETTABLEKS                       R23 R23 K57 ["ThreeDotsHorizontal"]
      169 LOADK                            R26 K58 ["Tooltip"]
      170 LOADK                            R27 K59 ["CompactOptions"]
      171 NAMECALL                         R24 R2 K43 ["getText"]
      173 CALL                             R24 3 1
      174 GETUPVAL                         R25 10
      175 GETTABLEKS                       R25 R25 K44 ["Enums"]
      177 GETTABLEKS                       R25 R25 K54 ["PopoverAlign"]
      179 GETTABLEKS                       R25 R25 K55 ["End"]
      181 MOVE                             R26 R4
      182 LOADK                            R27 K60 ["details-drawer-more-button"]
      183 CALL                             R21 6 1
      184 SETTABLEKS                       R21 R20 K26 ["MoreButton"]
      186 CALL                             R17 3 1
      187 SETTABLEKS                       R17 R16 K16 ["TitleRow"]
      189 JUMPIF                           R7 ; [+91]
      190 GETUPVAL                         R17 9
      191 GETTABLEKS                       R17 R17 K9 ["createElement"]
      193 GETUPVAL                         R18 10
      194 GETTABLEKS                       R18 R18 K10 ["View"]
      196 DUPTABLE                         R19 K62 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center gap-medium size-full-600"}]
      197 DUPTABLE                         R20 K64 [{"AssetId", "Version"}]
      198 GETUPVAL                         R21 9
      199 GETTABLEKS                       R21 R21 K9 ["createElement"]
      201 GETUPVAL                         R22 10
      202 GETTABLEKS                       R22 R22 K10 ["View"]
      204 DUPTABLE                         R23 K66 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      205 DUPTABLE                         R24 K68 [{"Text", "CopyButton"}]
      206 GETUPVAL                         R25 9
      207 GETTABLEKS                       R25 R25 K9 ["createElement"]
      209 GETUPVAL                         R26 10
      210 GETTABLEKS                       R26 R26 K28 ["Text"]
      212 DUPTABLE                         R27 K71 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-small content-default", ["testId"] = "details-drawer-asset-id"}]
      213 GETTABLEKS                       R29 R3 K5 ["AssetId"]
      215 FASTCALL1                        TOSTRING R29 ; [+2]
      216 GETIMPORT                        R28 K73 [tostring]
      218 CALL                             R28 1 1
      219 SETTABLEKS                       R28 R27 K28 ["Text"]
      221 CALL                             R25 2 1
      222 SETTABLEKS                       R25 R24 K28 ["Text"]
      224 GETUPVAL                         R25 11
      225 LOADN                            R26 2
      226 GETUPVAL                         R27 10
      227 GETTABLEKS                       R27 R27 K44 ["Enums"]
      229 GETTABLEKS                       R27 R27 K49 ["IconName"]
      231 GETTABLEKS                       R27 R27 K74 ["TwoStackedSquares"]
      233 LOADK                            R30 K41 ["ContextMenu"]
      234 LOADK                            R31 K75 ["CopyIdToClipboard"]
      235 NAMECALL                         R28 R2 K43 ["getText"]
      237 CALL                             R28 3 1
      238 GETUPVAL                         R29 10
      239 GETTABLEKS                       R29 R29 K44 ["Enums"]
      241 GETTABLEKS                       R29 R29 K54 ["PopoverAlign"]
      243 GETTABLEKS                       R29 R29 K76 ["Start"]
      245 MOVE                             R30 R12
      246 LOADK                            R31 K77 ["details-drawer-copy-id-button"]
      247 CALL                             R25 6 1
      248 SETTABLEKS                       R25 R24 K67 ["CopyButton"]
      250 CALL                             R21 3 1
      251 SETTABLEKS                       R21 R20 K5 ["AssetId"]
      253 GETUPVAL                         R22 12
      254 CALL                             R22 0 1
      255 JUMPIFNOT                        R22 ; [+20]
      256 GETTABLEKS                       R22 R3 K78 ["VersionNumber"]
      258 JUMPIFNOT                        R22 ; [+17]
      259 GETUPVAL                         R21 9
      260 GETTABLEKS                       R21 R21 K9 ["createElement"]
      262 GETUPVAL                         R22 10
      263 GETTABLEKS                       R22 R22 K28 ["Text"]
      265 DUPTABLE                         R23 K80 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small content-default", ["testId"] = "details-drawer-version"}]
      266 LOADK                            R24 K81 ["v%*"]
      267 GETTABLEKS                       R26 R3 K78 ["VersionNumber"]
      269 NAMECALL                         R24 R24 K82 ["format"]
      271 CALL                             R24 2 1
      272 SETTABLEKS                       R24 R23 K28 ["Text"]
      274 CALL                             R21 2 1
      275 JUMP                             ; [+1]
      276 LOADNIL                          R21
      277 SETTABLEKS                       R21 R20 K63 ["Version"]
      279 CALL                             R17 3 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R17
      282 SETTABLEKS                       R17 R16 K17 ["SubtitleRow"]
      284 CALL                             R13 3 -1
      285 RETURN                           R13 -1

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
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K12 ["Src"]
      106 GETTABLEKS                       R15 R15 K24 ["Flags"]
      108 GETTABLEKS                       R15 R15 K25 ["getFFlagAmrEnableVersioning"]
      110 CALL                             R14 1 1
      111 DUPCLOSURE                       R15 K26 [PROTO_0]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R2
      114 DUPCLOSURE                       R16 K27 [PROTO_4]
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R14
      128 RETURN                           R16 1
