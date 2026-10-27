PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["FontThumbnailStrip"]
       10 DUPTABLE                         R4 K4 [{"Image"}]
       11 GETTABLEKS                       R7 R0 K5 ["AssetId"]
       13 NAMECALL                         R5 R1 K6 ["getFontFamilyThumbnail"]
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R4 K3 ["Image"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["HasScripts"]
        2 JUMPIFNOT                        R3 ; [+17]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["Scripted"]
        7 LOADK                            R7 K2 ["AssetProperty"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K1 ["Scripted"]
       11 NAMECALL                         R5 R2 K3 ["getText"]
       13 CALL                             R5 3 1
       14 LOADK                            R8 K2 ["AssetProperty"]
       15 LOADK                            R9 K4 ["Yes"]
       16 NAMECALL                         R6 R2 K3 ["getText"]
       18 CALL                             R6 3 -1
       19 CALL                             R3 -1 0
       20 GETTABLEKS                       R3 R1 K5 ["Counts"]
       22 GETUPVAL                         R4 1
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 FORGPREP                         R4
       26 MOVE                             R9 R3
       27 JUMPIFNOT                        R9 ; [+1]
       28 GETTABLE                         R9 R3 R8
       29 JUMPIFNOT                        R9 ; [+16]
       30 LOADN                            R10 0
       31 JUMPIFNOTLT                      R10 R9 ; [+14]
       33 MOVE                             R10 R0
       34 MOVE                             R11 R8
       35 LOADK                            R14 K2 ["AssetProperty"]
       36 MOVE                             R15 R8
       37 NAMECALL                         R12 R2 K3 ["getText"]
       39 CALL                             R12 3 1
       40 FASTCALL1                        TOSTRING R9 ; [+3]
       41 MOVE                             R14 R9
       42 GETIMPORT                        R13 K7 [tostring]
       44 CALL                             R13 1 1
       45 CALL                             R10 3 0
       46 FORGLOOP                         R4 2 ; [-21]
       48 GETTABLEKS                       R4 R1 K8 ["Duration"]
       50 JUMPIFNOT                        R4 ; [+20]
       51 LOADN                            R5 0
       52 JUMPIFNOTLT                      R5 R4 ; [+18]
       54 MOVE                             R5 R0
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K8 ["Duration"]
       58 LOADK                            R9 K2 ["AssetProperty"]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K8 ["Duration"]
       62 NAMECALL                         R7 R2 K3 ["getText"]
       64 CALL                             R7 3 1
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R8 R8 K9 ["formatDuration"]
       68 MOVE                             R9 R4
       69 CALL                             R8 1 -1
       70 CALL                             R5 -1 0
       71 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createRowList"]
        3 CALL                             R5 0 3
        4 MOVE                             R8 R6
        5 GETUPVAL                         R9 1
        6 GETTABLEKS                       R9 R9 K1 ["Owner"]
        8 LOADK                            R12 K2 ["AssetProperty"]
        9 LOADK                            R13 K3 ["Creator"]
       10 NAMECALL                         R10 R4 K4 ["getText"]
       12 CALL                             R10 3 1
       13 MOVE                             R11 R0
       14 CALL                             R8 3 0
       15 JUMPIFNOT                        R2 ; [+15]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K5 ["createElement"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K6 ["LoadingRows"]
       22 DUPTABLE                         R10 K10 [{["LayoutOrder"], ["RowCount"] = 2}]
       23 MOVE                             R11 R7
       24 CALL                             R11 0 1
       25 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R5 K11 ["AccessPolicyLoading"]
       30 JUMP                             ; [+52]
       31 MOVE                             R8 R6
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K12 ["AccessControl"]
       35 LOADK                            R12 K13 ["AssetPermission"]
       36 GETUPVAL                         R13 1
       37 GETTABLEKS                       R13 R13 K12 ["AccessControl"]
       39 NAMECALL                         R10 R4 K4 ["getText"]
       41 CALL                             R10 3 1
       42 JUMPIFNOT                        R1 ; [+7]
       43 LOADK                            R13 K13 ["AssetPermission"]
       44 GETTABLEKS                       R14 R1 K14 ["Privacy"]
       46 NAMECALL                         R11 R4 K4 ["getText"]
       48 CALL                             R11 3 1
       49 JUMP                             ; [+3]
       50 GETUPVAL                         R11 3
       51 GETTABLEKS                       R11 R11 K15 ["PlaceholderText"]
       53 CALL                             R8 3 0
       54 JUMPIFNOT                        R1 ; [+3]
       55 GETTABLEKS                       R8 R1 K16 ["SharedWith"]
       57 JUMP                             ; [+2]
       58 NEWTABLE                         R8 0 0
       60 JUMPIFNOT                        R1 ; [+6]
       61 LENGTH                           R10 R8
       62 FASTCALL1                        TOSTRING R10 ; [+2]
       63 GETIMPORT                        R9 K18 [tostring]
       65 CALL                             R9 1 1
       66 JUMP                             ; [+3]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K15 ["PlaceholderText"]
       70 MOVE                             R10 R6
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K16 ["SharedWith"]
       74 LOADK                            R14 K13 ["AssetPermission"]
       75 GETUPVAL                         R15 1
       76 GETTABLEKS                       R15 R15 K16 ["SharedWith"]
       78 NAMECALL                         R12 R4 K4 ["getText"]
       80 CALL                             R12 3 1
       81 MOVE                             R13 R9
       82 CALL                             R10 3 0
       83 GETUPVAL                         R8 2
       84 GETTABLEKS                       R8 R8 K5 ["createElement"]
       86 GETUPVAL                         R9 4
       87 GETTABLEKS                       R9 R9 K19 ["View"]
       89 DUPTABLE                         R10 K22 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-left-xxlarge padding-top-small padding-bottom-medium"}]
       90 MOVE                             R11 R7
       91 CALL                             R11 0 1
       92 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       94 DUPTABLE                         R11 K24 [{"Button"}]
       95 GETUPVAL                         R12 2
       96 GETTABLEKS                       R12 R12 K5 ["createElement"]
       98 GETUPVAL                         R13 4
       99 GETTABLEKS                       R13 R13 K23 ["Button"]
      101 DUPTABLE                         R14 K31 [{["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "details-drawer-manage-sharing"}]
      102 LOADK                            R17 K13 ["AssetPermission"]
      103 LOADK                            R18 K32 ["ManageSharing"]
      104 NAMECALL                         R15 R4 K4 ["getText"]
      106 CALL                             R15 3 1
      107 SETTABLEKS                       R15 R14 K25 ["text"]
      109 GETUPVAL                         R15 4
      110 GETTABLEKS                       R15 R15 K33 ["Enums"]
      112 GETTABLEKS                       R15 R15 K34 ["ButtonVariant"]
      114 GETTABLEKS                       R15 R15 K35 ["Standard"]
      116 SETTABLEKS                       R15 R14 K26 ["variant"]
      118 GETUPVAL                         R15 4
      119 GETTABLEKS                       R15 R15 K33 ["Enums"]
      121 GETTABLEKS                       R15 R15 K36 ["InputSize"]
      123 GETTABLEKS                       R15 R15 K37 ["XSmall"]
      125 SETTABLEKS                       R15 R14 K27 ["size"]
      127 SETTABLEKS                       R3 R14 K28 ["onActivated"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K23 ["Button"]
      132 CALL                             R8 3 1
      133 SETTABLEKS                       R8 R5 K32 ["ManageSharing"]
      135 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["LayoutOrder"]
        6 GETTABLEKS                       R3 R0 K2 ["Asset"]
        8 GETTABLEKS                       R4 R0 K3 ["TechnicalDetails"]
       10 GETTABLEKS                       R6 R3 K4 ["AssetType"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K4 ["AssetType"]
       15 GETTABLEKS                       R7 R7 K5 ["FontFamily"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+12]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K6 ["createElement"]
       22 GETUPVAL                         R6 3
       23 DUPTABLE                         R7 K8 [{"AssetId"}]
       24 GETTABLEKS                       R8 R3 K7 ["AssetId"]
       26 SETTABLEKS                       R8 R7 K7 ["AssetId"]
       28 CALL                             R5 2 1
       29 JUMP                             ; [+30]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K6 ["createElement"]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K9 ["ThumbnailSquare"]
       36 LOADNIL                          R7
       37 DUPTABLE                         R8 K11 [{"Content"}]
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R9 R9 K6 ["createElement"]
       41 GETUPVAL                         R10 5
       42 DUPTABLE                         R11 K13 [{"AssetId", "AssetType", "iconSize"}]
       43 GETTABLEKS                       R12 R3 K7 ["AssetId"]
       45 SETTABLEKS                       R12 R11 K7 ["AssetId"]
       47 GETTABLEKS                       R12 R3 K4 ["AssetType"]
       49 SETTABLEKS                       R12 R11 K4 ["AssetType"]
       51 GETUPVAL                         R12 4
       52 GETTABLEKS                       R12 R12 K14 ["THUMBNAIL_ICON_SIZE"]
       54 SETTABLEKS                       R12 R11 K12 ["iconSize"]
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K10 ["Content"]
       59 CALL                             R5 3 1
       60 GETUPVAL                         R7 6
       61 GETTABLEKS                       R8 R3 K4 ["AssetType"]
       63 GETTABLEKS                       R9 R3 K15 ["ModerationStatus"]
       65 CALL                             R7 2 1
       66 JUMPIFNOT                        R7 ; [+17]
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R6 R6 K6 ["createElement"]
       70 GETUPVAL                         R7 7
       71 DUPTABLE                         R8 K17 [{"AssetId", "Duration"}]
       72 GETTABLEKS                       R9 R3 K7 ["AssetId"]
       74 SETTABLEKS                       R9 R8 K7 ["AssetId"]
       76 MOVE                             R9 R4
       77 JUMPIFNOT                        R9 ; [+2]
       78 GETTABLEKS                       R9 R4 K16 ["Duration"]
       80 SETTABLEKS                       R9 R8 K16 ["Duration"]
       82 CALL                             R6 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R6
       85 GETUPVAL                         R7 2
       86 GETTABLEKS                       R7 R7 K6 ["createElement"]
       88 GETUPVAL                         R8 8
       89 DUPTABLE                         R9 K18 [{"Asset"}]
       90 SETTABLEKS                       R3 R9 K2 ["Asset"]
       92 CALL                             R7 2 1
       93 GETTABLEKS                       R8 R0 K19 ["IsLoadingTechnicalDetails"]
       95 JUMPIFNOT                        R8 ; [+27]
       96 GETUPVAL                         R8 2
       97 GETTABLEKS                       R8 R8 K6 ["createElement"]
       99 GETUPVAL                         R9 4
      100 GETTABLEKS                       R9 R9 K20 ["DrawerBody"]
      102 DUPTABLE                         R10 K24 [{"LayoutOrder", "Thumbnail", "MediaPreview", "AssetHeader"}]
      103 SETTABLEKS                       R2 R10 K1 ["LayoutOrder"]
      105 SETTABLEKS                       R5 R10 K21 ["Thumbnail"]
      107 SETTABLEKS                       R6 R10 K22 ["MediaPreview"]
      109 SETTABLEKS                       R7 R10 K23 ["AssetHeader"]
      111 DUPTABLE                         R11 K26 [{"Loading"}]
      112 GETUPVAL                         R12 2
      113 GETTABLEKS                       R12 R12 K6 ["createElement"]
      115 GETUPVAL                         R13 4
      116 GETTABLEKS                       R13 R13 K27 ["LoadingRows"]
      118 CALL                             R12 1 1
      119 SETTABLEKS                       R12 R11 K25 ["Loading"]
      121 CALL                             R8 3 -1
      122 RETURN                           R8 -1
      123 GETUPVAL                         R8 4
      124 GETTABLEKS                       R8 R8 K28 ["createRowList"]
      126 CALL                             R8 0 2
      127 MOVE                             R10 R9
      128 GETUPVAL                         R11 9
      129 GETTABLEKS                       R11 R11 K4 ["AssetType"]
      131 LOADK                            R14 K29 ["AssetProperty"]
      132 GETUPVAL                         R15 9
      133 GETTABLEKS                       R15 R15 K4 ["AssetType"]
      135 NAMECALL                         R12 R1 K30 ["getText"]
      137 CALL                             R12 3 1
      138 LOADK                            R15 K4 ["AssetType"]
      139 GETTABLEKS                       R16 R3 K4 ["AssetType"]
      141 NAMECALL                         R13 R1 K30 ["getText"]
      143 CALL                             R13 3 -1
      144 CALL                             R10 -1 0
      145 GETTABLEKS                       R11 R3 K31 ["Creator"]
      147 GETTABLEKS                       R11 R11 K32 ["Name"]
      149 JUMPIFEQKS                       R11 K33 [""] ; [+6]
      151 GETTABLEKS                       R10 R3 K31 ["Creator"]
      153 GETTABLEKS                       R10 R10 K32 ["Name"]
      155 JUMP                             ; [+3]
      156 GETUPVAL                         R10 10
      157 GETTABLEKS                       R10 R10 K34 ["PlaceholderText"]
      159 MOVE                             R11 R9
      160 GETUPVAL                         R12 9
      161 GETTABLEKS                       R12 R12 K31 ["Creator"]
      163 LOADK                            R15 K29 ["AssetProperty"]
      164 GETUPVAL                         R16 9
      165 GETTABLEKS                       R16 R16 K31 ["Creator"]
      167 NAMECALL                         R13 R1 K30 ["getText"]
      169 CALL                             R13 3 1
      170 MOVE                             R14 R10
      171 CALL                             R11 3 0
      172 MOVE                             R11 R9
      173 GETUPVAL                         R12 9
      174 GETTABLEKS                       R12 R12 K7 ["AssetId"]
      176 LOADK                            R15 K29 ["AssetProperty"]
      177 GETUPVAL                         R16 9
      178 GETTABLEKS                       R16 R16 K7 ["AssetId"]
      180 NAMECALL                         R13 R1 K30 ["getText"]
      182 CALL                             R13 3 1
      183 GETTABLEKS                       R15 R3 K7 ["AssetId"]
      185 FASTCALL1                        TOSTRING R15 ; [+2]
      186 GETIMPORT                        R14 K36 [tostring]
      188 CALL                             R14 1 1
      189 CALL                             R11 3 0
      190 MOVE                             R11 R9
      191 GETUPVAL                         R12 9
      192 GETTABLEKS                       R12 R12 K37 ["Created"]
      194 LOADK                            R15 K29 ["AssetProperty"]
      195 GETUPVAL                         R16 9
      196 GETTABLEKS                       R16 R16 K37 ["Created"]
      198 NAMECALL                         R13 R1 K30 ["getText"]
      200 CALL                             R13 3 1
      201 GETUPVAL                         R14 11
      202 GETUPVAL                         R15 4
      203 GETTABLEKS                       R15 R15 K38 ["toDateTime"]
      205 GETTABLEKS                       R16 R3 K37 ["Created"]
      207 CALL                             R15 1 -1
      208 CALL                             R14 -1 -1
      209 CALL                             R11 -1 0
      210 MOVE                             R11 R9
      211 GETUPVAL                         R12 9
      212 GETTABLEKS                       R12 R12 K39 ["Modified"]
      214 LOADK                            R15 K29 ["AssetProperty"]
      215 GETUPVAL                         R16 9
      216 GETTABLEKS                       R16 R16 K39 ["Modified"]
      218 NAMECALL                         R13 R1 K30 ["getText"]
      220 CALL                             R13 3 1
      221 GETUPVAL                         R14 11
      222 GETUPVAL                         R15 4
      223 GETTABLEKS                       R15 R15 K38 ["toDateTime"]
      225 GETTABLEKS                       R16 R3 K39 ["Modified"]
      227 CALL                             R15 1 -1
      228 CALL                             R14 -1 -1
      229 CALL                             R11 -1 0
      230 MOVE                             R11 R9
      231 GETUPVAL                         R12 9
      232 GETTABLEKS                       R12 R12 K40 ["Source"]
      234 LOADK                            R15 K29 ["AssetProperty"]
      235 GETUPVAL                         R16 9
      236 GETTABLEKS                       R16 R16 K40 ["Source"]
      238 NAMECALL                         R13 R1 K30 ["getText"]
      240 CALL                             R13 3 1
      241 LOADK                            R16 K41 ["AssetSource"]
      242 GETTABLEKS                       R17 R3 K40 ["Source"]
      244 NAMECALL                         R14 R1 K30 ["getText"]
      246 CALL                             R14 3 -1
      247 CALL                             R11 -1 0
      248 JUMPIFNOT                        R4 ; [+5]
      249 GETUPVAL                         R11 12
      250 MOVE                             R12 R9
      251 MOVE                             R13 R4
      252 MOVE                             R14 R1
      253 CALL                             R11 3 0
      254 GETUPVAL                         R11 13
      255 GETTABLEKS                       R11 R11 K42 ["new"]
      257 CALL                             R11 0 1
      258 DUPTABLE                         R12 K44 [{"Details"}]
      259 GETUPVAL                         R13 2
      260 GETTABLEKS                       R13 R13 K6 ["createElement"]
      262 GETUPVAL                         R14 4
      263 GETTABLEKS                       R14 R14 K45 ["Section"]
      265 DUPTABLE                         R15 K49 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-details"}]
      266 NAMECALL                         R16 R11 K50 ["getNextOrder"]
      268 CALL                             R16 1 1
      269 SETTABLEKS                       R16 R15 K1 ["LayoutOrder"]
      271 LOADK                            R18 K29 ["AssetProperty"]
      272 LOADK                            R19 K43 ["Details"]
      273 NAMECALL                         R16 R1 K30 ["getText"]
      275 CALL                             R16 3 1
      276 SETTABLEKS                       R16 R15 K46 ["Title"]
      278 MOVE                             R16 R8
      279 CALL                             R13 3 1
      280 SETTABLEKS                       R13 R12 K43 ["Details"]
      282 GETTABLEKS                       R13 R0 K51 ["ShowAccessPolicy"]
      284 JUMPIFNOT                        R13 ; [+32]
      285 GETUPVAL                         R13 2
      286 GETTABLEKS                       R13 R13 K6 ["createElement"]
      288 GETUPVAL                         R14 4
      289 GETTABLEKS                       R14 R14 K45 ["Section"]
      291 DUPTABLE                         R15 K53 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-access-policy"}]
      292 NAMECALL                         R16 R11 K50 ["getNextOrder"]
      294 CALL                             R16 1 1
      295 SETTABLEKS                       R16 R15 K1 ["LayoutOrder"]
      297 LOADK                            R18 K54 ["AssetPermission"]
      298 LOADK                            R19 K55 ["AccessPolicy"]
      299 NAMECALL                         R16 R1 K30 ["getText"]
      301 CALL                             R16 3 1
      302 SETTABLEKS                       R16 R15 K46 ["Title"]
      304 GETUPVAL                         R16 14
      305 MOVE                             R17 R10
      306 GETTABLEKS                       R18 R0 K56 ["Sharing"]
      308 GETTABLEKS                       R19 R0 K57 ["IsLoadingSharing"]
      310 GETTABLEKS                       R20 R0 K58 ["OnManageSharing"]
      312 MOVE                             R21 R1
      313 CALL                             R16 5 1
      314 CALL                             R13 3 1
      315 SETTABLEKS                       R13 R12 K55 ["AccessPolicy"]
      317 MOVE                             R13 R4
      318 JUMPIFNOT                        R13 ; [+2]
      319 GETTABLEKS                       R13 R4 K59 ["Description"]
      321 JUMPIFNOT                        R13 ; [+35]
      322 GETUPVAL                         R14 2
      323 GETTABLEKS                       R14 R14 K6 ["createElement"]
      325 GETUPVAL                         R15 4
      326 GETTABLEKS                       R15 R15 K45 ["Section"]
      328 DUPTABLE                         R16 K61 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-description"}]
      329 NAMECALL                         R17 R11 K50 ["getNextOrder"]
      331 CALL                             R17 1 1
      332 SETTABLEKS                       R17 R16 K1 ["LayoutOrder"]
      334 LOADK                            R19 K29 ["AssetProperty"]
      335 LOADK                            R20 K59 ["Description"]
      336 NAMECALL                         R17 R1 K30 ["getText"]
      338 CALL                             R17 3 1
      339 SETTABLEKS                       R17 R16 K46 ["Title"]
      341 DUPTABLE                         R17 K63 [{"Text"}]
      342 GETUPVAL                         R18 2
      343 GETTABLEKS                       R18 R18 K6 ["createElement"]
      345 GETUPVAL                         R19 15
      346 GETTABLEKS                       R19 R19 K62 ["Text"]
      348 DUPTABLE                         R20 K66 [{["Text"], ["tag"] = "size-full-0 auto-y padding-y-xsmall padding-left-xxlarge padding-right-medium text-body-small text-wrap text-align-x-left content-default"}]
      349 SETTABLEKS                       R13 R20 K62 ["Text"]
      351 CALL                             R18 2 1
      352 SETTABLEKS                       R18 R17 K62 ["Text"]
      354 CALL                             R14 3 1
      355 SETTABLEKS                       R14 R12 K59 ["Description"]
      357 GETUPVAL                         R14 2
      358 GETTABLEKS                       R14 R14 K6 ["createElement"]
      360 GETUPVAL                         R15 4
      361 GETTABLEKS                       R15 R15 K20 ["DrawerBody"]
      363 DUPTABLE                         R16 K24 [{"LayoutOrder", "Thumbnail", "MediaPreview", "AssetHeader"}]
      364 SETTABLEKS                       R2 R16 K1 ["LayoutOrder"]
      366 SETTABLEKS                       R5 R16 K21 ["Thumbnail"]
      368 SETTABLEKS                       R6 R16 K22 ["MediaPreview"]
      370 SETTABLEKS                       R7 R16 K23 ["AssetHeader"]
      372 MOVE                             R17 R12
      373 CALL                             R14 3 -1
      374 RETURN                           R14 -1

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
       40 GETTABLEKS                       R7 R7 K15 ["ItemThumbnail"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K16 ["Resources"]
       49 GETTABLEKS                       R8 R8 K17 ["Constants"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K12 ["Src"]
       56 GETTABLEKS                       R9 R9 K18 ["Networking"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K19 ["Types"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K20 ["Util"]
       72 GETTABLEKS                       R11 R11 K21 ["formatDateTime"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Util"]
       81 GETTABLEKS                       R12 R12 K22 ["isAudioPreviewable"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETIMPORT                        R13 K1 [script]
       88 GETTABLEKS                       R13 R13 K23 ["Parent"]
       90 GETTABLEKS                       R13 R13 K24 ["AssetHeader"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETIMPORT                        R14 K1 [script]
       97 GETTABLEKS                       R14 R14 K23 ["Parent"]
       99 GETTABLEKS                       R14 R14 K25 ["AudioPlayer"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETIMPORT                        R15 K1 [script]
      106 GETTABLEKS                       R15 R15 K23 ["Parent"]
      108 GETTABLEKS                       R15 R15 K26 ["Rows"]
      110 CALL                             R14 1 1
      111 GETTABLEKS                       R15 R3 K20 ["Util"]
      113 GETTABLEKS                       R15 R15 K27 ["LayoutOrderIterator"]
      115 GETTABLEKS                       R16 R9 K28 ["AssetInfoField"]
      117 GETTABLEKS                       R17 R9 K29 ["DetailsDrawerRow"]
      119 NEWTABLE                         R18 0 8
      121 GETTABLEKS                       R19 R9 K30 ["AssetTechnicalDetailCount"]
      123 GETTABLEKS                       R19 R19 K31 ["TriangleCount"]
      125 GETTABLEKS                       R20 R9 K30 ["AssetTechnicalDetailCount"]
      127 GETTABLEKS                       R20 R20 K32 ["VertexCount"]
      129 GETTABLEKS                       R21 R9 K30 ["AssetTechnicalDetailCount"]
      131 GETTABLEKS                       R21 R21 K33 ["ScriptCount"]
      133 GETTABLEKS                       R22 R9 K30 ["AssetTechnicalDetailCount"]
      135 GETTABLEKS                       R22 R22 K34 ["MeshPartCount"]
      137 GETTABLEKS                       R23 R9 K30 ["AssetTechnicalDetailCount"]
      139 GETTABLEKS                       R23 R23 K35 ["AnimationCount"]
      141 GETTABLEKS                       R24 R9 K30 ["AssetTechnicalDetailCount"]
      143 GETTABLEKS                       R24 R24 K36 ["AudioCount"]
      145 GETTABLEKS                       R25 R9 K30 ["AssetTechnicalDetailCount"]
      147 GETTABLEKS                       R25 R25 K37 ["DecalCount"]
      149 GETTABLEKS                       R26 R9 K30 ["AssetTechnicalDetailCount"]
      151 GETTABLEKS                       R26 R26 K38 ["ToolCount"]
      153 SETLIST                          R18 R19 8 [1]
      155 DUPCLOSURE                       R19 K39 [PROTO_0]
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R14
      159 DUPCLOSURE                       R20 K40 [PROTO_1]
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R14
      163 DUPCLOSURE                       R21 K41 [PROTO_2]
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R17
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R2
      169 DUPCLOSURE                       R22 K42 [PROTO_3]
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R2
      186 RETURN                           R22 1
