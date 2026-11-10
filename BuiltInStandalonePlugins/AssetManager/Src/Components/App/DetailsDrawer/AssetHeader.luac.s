PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnAction"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["DetailsDrawerAction"]
        6 GETTABLEKS                       R1 R1 K2 ["Edit"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnAction"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["DetailsDrawerAction"]
        6 GETTABLEKS                       R1 R1 K2 ["CopyAssetId"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 NEWTABLE                         R1 0 1
       12 GETUPVAL                         R2 3
       13 SETLIST                          R1 R2 1 [1]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_3:
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
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R5
       60 GETUPVAL                         R13 9
       61 GETTABLEKS                       R13 R13 K9 ["createElement"]
       63 GETUPVAL                         R14 10
       64 GETTABLEKS                       R14 R14 K10 ["View"]
       66 DUPTABLE                         R15 K15 [{["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-xsmall", ["testId"] = "details-drawer-asset-header"}]
       67 DUPTABLE                         R16 K18 [{"TitleRow", "SubtitleRow"}]
       68 GETUPVAL                         R17 9
       69 GETTABLEKS                       R17 R17 K9 ["createElement"]
       71 GETUPVAL                         R18 10
       72 GETTABLEKS                       R18 R18 K10 ["View"]
       74 DUPTABLE                         R19 K22 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y"}]
       75 DUPTABLE                         R20 K27 [{"Title", "InsertButton", "EditButton", "MoreButton"}]
       76 GETUPVAL                         R21 9
       77 GETTABLEKS                       R21 R21 K9 ["createElement"]
       79 GETUPVAL                         R22 10
       80 GETTABLEKS                       R22 R22 K28 ["Text"]
       82 DUPTABLE                         R23 K31 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-title-small text-align-x-left text-truncate-end content-emphasis", ["testId"] = "details-drawer-asset-name"}]
       83 GETTABLEKS                       R24 R3 K32 ["DisplayName"]
       85 SETTABLEKS                       R24 R23 K28 ["Text"]
       87 CALL                             R21 2 1
       88 SETTABLEKS                       R21 R20 K23 ["Title"]
       90 JUMPIFNOT                        R8 ; [+36]
       91 GETUPVAL                         R21 9
       92 GETTABLEKS                       R21 R21 K9 ["createElement"]
       94 GETUPVAL                         R22 10
       95 GETTABLEKS                       R22 R22 K33 ["Button"]
       97 DUPTABLE                         R23 K40 [{["LayoutOrder"] = 2, ["text"], ["onActivated"], ["variant"], ["size"], ["testId"] = "details-drawer-insert-button"}]
       98 LOADK                            R26 K41 ["ContextMenu"]
       99 LOADK                            R27 K42 ["Insert"]
      100 NAMECALL                         R24 R2 K43 ["getText"]
      102 CALL                             R24 3 1
      103 SETTABLEKS                       R24 R23 K35 ["text"]
      105 SETTABLEKS                       R10 R23 K36 ["onActivated"]
      107 GETUPVAL                         R24 10
      108 GETTABLEKS                       R24 R24 K44 ["Enums"]
      110 GETTABLEKS                       R24 R24 K45 ["ButtonVariant"]
      112 GETTABLEKS                       R24 R24 K46 ["Standard"]
      114 SETTABLEKS                       R24 R23 K37 ["variant"]
      116 GETUPVAL                         R24 10
      117 GETTABLEKS                       R24 R24 K44 ["Enums"]
      119 GETTABLEKS                       R24 R24 K47 ["InputSize"]
      121 GETTABLEKS                       R24 R24 K48 ["XSmall"]
      123 SETTABLEKS                       R24 R23 K38 ["size"]
      125 CALL                             R21 2 1
      126 JUMP                             ; [+1]
      127 LOADNIL                          R21
      128 SETTABLEKS                       R21 R20 K24 ["InsertButton"]
      130 GETUPVAL                         R21 11
      131 LOADN                            R22 3
      132 GETUPVAL                         R23 10
      133 GETTABLEKS                       R23 R23 K44 ["Enums"]
      135 GETTABLEKS                       R23 R23 K49 ["IconName"]
      137 GETTABLEKS                       R23 R23 K50 ["Pencil"]
      139 JUMPIFNOT                        R9 ; [+6]
      140 LOADK                            R26 K41 ["ContextMenu"]
      141 LOADK                            R27 K51 ["EditAsset"]
      142 NAMECALL                         R24 R2 K43 ["getText"]
      144 CALL                             R24 3 1
      145 JUMP                             ; [+5]
      146 LOADK                            R26 K52 ["DetailsDrawer"]
      147 LOADK                            R27 K53 ["NotEditable"]
      148 NAMECALL                         R24 R2 K43 ["getText"]
      150 CALL                             R24 3 1
      151 GETUPVAL                         R25 10
      152 GETTABLEKS                       R25 R25 K44 ["Enums"]
      154 GETTABLEKS                       R25 R25 K54 ["PopoverAlign"]
      156 GETTABLEKS                       R25 R25 K55 ["End"]
      158 MOVE                             R26 R11
      159 LOADK                            R27 K56 ["details-drawer-edit-button"]
      160 NOT                              R28 R9
      161 CALL                             R21 7 1
      162 SETTABLEKS                       R21 R20 K25 ["EditButton"]
      164 GETUPVAL                         R21 11
      165 LOADN                            R22 4
      166 GETUPVAL                         R23 10
      167 GETTABLEKS                       R23 R23 K44 ["Enums"]
      169 GETTABLEKS                       R23 R23 K49 ["IconName"]
      171 GETTABLEKS                       R23 R23 K57 ["ThreeDotsHorizontal"]
      173 LOADK                            R26 K58 ["Tooltip"]
      174 LOADK                            R27 K59 ["CompactOptions"]
      175 NAMECALL                         R24 R2 K43 ["getText"]
      177 CALL                             R24 3 1
      178 GETUPVAL                         R25 10
      179 GETTABLEKS                       R25 R25 K44 ["Enums"]
      181 GETTABLEKS                       R25 R25 K54 ["PopoverAlign"]
      183 GETTABLEKS                       R25 R25 K55 ["End"]
      185 MOVE                             R26 R4
      186 LOADK                            R27 K60 ["details-drawer-more-button"]
      187 CALL                             R21 6 1
      188 SETTABLEKS                       R21 R20 K26 ["MoreButton"]
      190 CALL                             R17 3 1
      191 SETTABLEKS                       R17 R16 K16 ["TitleRow"]
      193 JUMPIF                           R7 ; [+91]
      194 GETUPVAL                         R17 9
      195 GETTABLEKS                       R17 R17 K9 ["createElement"]
      197 GETUPVAL                         R18 10
      198 GETTABLEKS                       R18 R18 K10 ["View"]
      200 DUPTABLE                         R19 K62 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center gap-medium size-full-600"}]
      201 DUPTABLE                         R20 K64 [{"AssetId", "Version"}]
      202 GETUPVAL                         R21 9
      203 GETTABLEKS                       R21 R21 K9 ["createElement"]
      205 GETUPVAL                         R22 10
      206 GETTABLEKS                       R22 R22 K10 ["View"]
      208 DUPTABLE                         R23 K66 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      209 DUPTABLE                         R24 K68 [{"Text", "CopyButton"}]
      210 GETUPVAL                         R25 9
      211 GETTABLEKS                       R25 R25 K9 ["createElement"]
      213 GETUPVAL                         R26 10
      214 GETTABLEKS                       R26 R26 K28 ["Text"]
      216 DUPTABLE                         R27 K71 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-small content-default", ["testId"] = "details-drawer-asset-id"}]
      217 GETTABLEKS                       R29 R3 K5 ["AssetId"]
      219 FASTCALL1                        TOSTRING R29 ; [+2]
      220 GETIMPORT                        R28 K73 [tostring]
      222 CALL                             R28 1 1
      223 SETTABLEKS                       R28 R27 K28 ["Text"]
      225 CALL                             R25 2 1
      226 SETTABLEKS                       R25 R24 K28 ["Text"]
      228 GETUPVAL                         R25 11
      229 LOADN                            R26 2
      230 GETUPVAL                         R27 10
      231 GETTABLEKS                       R27 R27 K44 ["Enums"]
      233 GETTABLEKS                       R27 R27 K49 ["IconName"]
      235 GETTABLEKS                       R27 R27 K74 ["TwoStackedSquares"]
      237 LOADK                            R30 K41 ["ContextMenu"]
      238 LOADK                            R31 K75 ["CopyIdToClipboard"]
      239 NAMECALL                         R28 R2 K43 ["getText"]
      241 CALL                             R28 3 1
      242 GETUPVAL                         R29 10
      243 GETTABLEKS                       R29 R29 K44 ["Enums"]
      245 GETTABLEKS                       R29 R29 K54 ["PopoverAlign"]
      247 GETTABLEKS                       R29 R29 K76 ["Start"]
      249 MOVE                             R30 R12
      250 LOADK                            R31 K77 ["details-drawer-copy-id-button"]
      251 CALL                             R25 6 1
      252 SETTABLEKS                       R25 R24 K67 ["CopyButton"]
      254 CALL                             R21 3 1
      255 SETTABLEKS                       R21 R20 K5 ["AssetId"]
      257 GETUPVAL                         R22 12
      258 CALL                             R22 0 1
      259 JUMPIFNOT                        R22 ; [+20]
      260 GETTABLEKS                       R22 R3 K78 ["VersionNumber"]
      262 JUMPIFNOT                        R22 ; [+17]
      263 GETUPVAL                         R21 9
      264 GETTABLEKS                       R21 R21 K9 ["createElement"]
      266 GETUPVAL                         R22 10
      267 GETTABLEKS                       R22 R22 K28 ["Text"]
      269 DUPTABLE                         R23 K80 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small content-default", ["testId"] = "details-drawer-version"}]
      270 LOADK                            R24 K81 ["v%*"]
      271 GETTABLEKS                       R26 R3 K78 ["VersionNumber"]
      273 NAMECALL                         R24 R24 K82 ["format"]
      275 CALL                             R24 2 1
      276 SETTABLEKS                       R24 R23 K28 ["Text"]
      278 CALL                             R21 2 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R21
      281 SETTABLEKS                       R21 R20 K63 ["Version"]
      283 CALL                             R17 3 1
      284 JUMP                             ; [+1]
      285 LOADNIL                          R17
      286 SETTABLEKS                       R17 R16 K17 ["SubtitleRow"]
      288 CALL                             R13 3 -1
      289 RETURN                           R13 -1

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
      104 GETIMPORT                        R15 K1 [script]
      106 GETTABLEKS                       R15 R15 K24 ["Parent"]
      108 GETTABLEKS                       R15 R15 K25 ["Rows"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K12 ["Src"]
      115 GETTABLEKS                       R16 R16 K26 ["Flags"]
      117 GETTABLEKS                       R16 R16 K27 ["getFFlagAmrEnableVersioning"]
      119 CALL                             R15 1 1
      120 GETTABLEKS                       R16 R14 K28 ["ActionButton"]
      122 DUPCLOSURE                       R17 K29 [PROTO_3]
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R15
      136 RETURN                           R17 1
