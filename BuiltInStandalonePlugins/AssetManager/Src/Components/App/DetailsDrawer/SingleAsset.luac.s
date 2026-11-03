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
       30 JUMP                             ; [+56]
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
       49 JUMP                             ; [+5]
       50 GETUPVAL                         R11 3
       51 GETTABLEKS                       R11 R11 K15 ["Constants"]
       53 GETTABLEKS                       R11 R11 K16 ["PlaceholderText"]
       55 CALL                             R8 3 0
       56 JUMPIFNOT                        R1 ; [+3]
       57 GETTABLEKS                       R8 R1 K17 ["SharedWith"]
       59 JUMP                             ; [+2]
       60 NEWTABLE                         R8 0 0
       62 JUMPIFNOT                        R1 ; [+6]
       63 LENGTH                           R10 R8
       64 FASTCALL1                        TOSTRING R10 ; [+2]
       65 GETIMPORT                        R9 K19 [tostring]
       67 CALL                             R9 1 1
       68 JUMP                             ; [+5]
       69 GETUPVAL                         R9 3
       70 GETTABLEKS                       R9 R9 K15 ["Constants"]
       72 GETTABLEKS                       R9 R9 K16 ["PlaceholderText"]
       74 MOVE                             R10 R6
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R11 R11 K17 ["SharedWith"]
       78 LOADK                            R14 K13 ["AssetPermission"]
       79 GETUPVAL                         R15 1
       80 GETTABLEKS                       R15 R15 K17 ["SharedWith"]
       82 NAMECALL                         R12 R4 K4 ["getText"]
       84 CALL                             R12 3 1
       85 MOVE                             R13 R9
       86 CALL                             R10 3 0
       87 GETUPVAL                         R8 2
       88 GETTABLEKS                       R8 R8 K5 ["createElement"]
       90 GETUPVAL                         R9 4
       91 GETTABLEKS                       R9 R9 K20 ["View"]
       93 DUPTABLE                         R10 K23 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-left-xxlarge padding-top-small padding-bottom-medium"}]
       94 MOVE                             R11 R7
       95 CALL                             R11 0 1
       96 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       98 DUPTABLE                         R11 K25 [{"Button"}]
       99 GETUPVAL                         R12 2
      100 GETTABLEKS                       R12 R12 K5 ["createElement"]
      102 GETUPVAL                         R13 4
      103 GETTABLEKS                       R13 R13 K24 ["Button"]
      105 DUPTABLE                         R14 K32 [{["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "details-drawer-manage-sharing"}]
      106 LOADK                            R17 K13 ["AssetPermission"]
      107 LOADK                            R18 K33 ["ManageSharing"]
      108 NAMECALL                         R15 R4 K4 ["getText"]
      110 CALL                             R15 3 1
      111 SETTABLEKS                       R15 R14 K26 ["text"]
      113 GETUPVAL                         R15 4
      114 GETTABLEKS                       R15 R15 K34 ["Enums"]
      116 GETTABLEKS                       R15 R15 K35 ["ButtonVariant"]
      118 GETTABLEKS                       R15 R15 K36 ["Standard"]
      120 SETTABLEKS                       R15 R14 K27 ["variant"]
      122 GETUPVAL                         R15 4
      123 GETTABLEKS                       R15 R15 K34 ["Enums"]
      125 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      127 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      129 SETTABLEKS                       R15 R14 K28 ["size"]
      131 SETTABLEKS                       R3 R14 K29 ["onActivated"]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K24 ["Button"]
      136 CALL                             R8 3 1
      137 SETTABLEKS                       R8 R5 K33 ["ManageSharing"]
      139 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["AssetId"]
        6 SETLIST                          R1 R2 1 [1]
        8 LOADB                            R2 1
        9 GETUPVAL                         R4 2
       10 JUMPIFNOT                        R4 ; [+6]
       11 NEWTABLE                         R3 0 1
       13 GETUPVAL                         R4 2
       14 SETLIST                          R3 R4 1 [1]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_4:
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
      155 JUMP                             ; [+5]
      156 GETUPVAL                         R10 10
      157 GETTABLEKS                       R10 R10 K34 ["Constants"]
      159 GETTABLEKS                       R10 R10 K35 ["PlaceholderText"]
      161 MOVE                             R11 R9
      162 GETUPVAL                         R12 9
      163 GETTABLEKS                       R12 R12 K31 ["Creator"]
      165 LOADK                            R15 K29 ["AssetProperty"]
      166 GETUPVAL                         R16 9
      167 GETTABLEKS                       R16 R16 K31 ["Creator"]
      169 NAMECALL                         R13 R1 K30 ["getText"]
      171 CALL                             R13 3 1
      172 MOVE                             R14 R10
      173 CALL                             R11 3 0
      174 GETUPVAL                         R12 11
      175 CALL                             R12 0 1
      176 JUMPIFNOT                        R12 ; [+3]
      177 GETTABLEKS                       R11 R3 K36 ["VersionNumber"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R11
      181 JUMPIFNOT                        R11 ; [+8]
      182 LOADK                            R12 K37 ["rbxassetid://%*&version=%*"]
      183 GETTABLEKS                       R14 R3 K7 ["AssetId"]
      185 MOVE                             R15 R11
      186 NAMECALL                         R12 R12 K38 ["format"]
      188 CALL                             R12 3 1
      189 JUMP                             ; [+6]
      190 LOADK                            R12 K39 ["rbxassetid://%*"]
      191 GETTABLEKS                       R14 R3 K7 ["AssetId"]
      193 NAMECALL                         R12 R12 K38 ["format"]
      195 CALL                             R12 2 1
      196 MOVE                             R13 R9
      197 GETUPVAL                         R14 9
      198 GETTABLEKS                       R14 R14 K7 ["AssetId"]
      200 LOADK                            R17 K29 ["AssetProperty"]
      201 LOADK                            R18 K40 ["AssetUri"]
      202 NAMECALL                         R15 R1 K30 ["getText"]
      204 CALL                             R15 3 1
      205 MOVE                             R16 R12
      206 GETUPVAL                         R17 2
      207 GETTABLEKS                       R17 R17 K6 ["createElement"]
      209 GETUPVAL                         R18 12
      210 GETTABLEKS                       R18 R18 K41 ["Tooltip"]
      212 DUPTABLE                         R19 K46 [{["LayoutOrder"] = 4, ["title"], ["side"], ["align"]}]
      213 LOADK                            R22 K47 ["ContextMenu"]
      214 LOADK                            R23 K48 ["CopyUri"]
      215 NAMECALL                         R20 R1 K30 ["getText"]
      217 CALL                             R20 3 1
      218 SETTABLEKS                       R20 R19 K43 ["title"]
      220 GETUPVAL                         R20 12
      221 GETTABLEKS                       R20 R20 K49 ["Enums"]
      223 GETTABLEKS                       R20 R20 K50 ["PopoverSide"]
      225 GETTABLEKS                       R20 R20 K51 ["Bottom"]
      227 SETTABLEKS                       R20 R19 K44 ["side"]
      229 GETUPVAL                         R20 12
      230 GETTABLEKS                       R20 R20 K49 ["Enums"]
      232 GETTABLEKS                       R20 R20 K52 ["PopoverAlign"]
      234 GETTABLEKS                       R20 R20 K53 ["End"]
      236 SETTABLEKS                       R20 R19 K45 ["align"]
      238 GETUPVAL                         R20 2
      239 GETTABLEKS                       R20 R20 K6 ["createElement"]
      241 GETUPVAL                         R21 12
      242 GETTABLEKS                       R21 R21 K54 ["IconButton"]
      244 DUPTABLE                         R22 K61 [{["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-copy-uri-button"}]
      245 NEWCLOSURE                       R23 P0
      246 CAPTURE                          UPVAL U13
      247 CAPTURE                          VAL R3
      248 CAPTURE                          VAL R11
      249 SETTABLEKS                       R23 R22 K55 ["onActivated"]
      251 GETUPVAL                         R23 12
      252 GETTABLEKS                       R23 R23 K49 ["Enums"]
      254 GETTABLEKS                       R23 R23 K62 ["IconName"]
      256 GETTABLEKS                       R23 R23 K63 ["TwoStackedSquares"]
      258 SETTABLEKS                       R23 R22 K56 ["icon"]
      260 GETUPVAL                         R23 12
      261 GETTABLEKS                       R23 R23 K49 ["Enums"]
      263 GETTABLEKS                       R23 R23 K64 ["ButtonVariant"]
      265 GETTABLEKS                       R23 R23 K65 ["Utility"]
      267 SETTABLEKS                       R23 R22 K57 ["variant"]
      269 GETUPVAL                         R23 12
      270 GETTABLEKS                       R23 R23 K49 ["Enums"]
      272 GETTABLEKS                       R23 R23 K66 ["InputSize"]
      274 GETTABLEKS                       R23 R23 K67 ["XSmall"]
      276 SETTABLEKS                       R23 R22 K58 ["size"]
      278 CALL                             R20 2 -1
      279 CALL                             R17 -1 -1
      280 CALL                             R13 -1 0
      281 MOVE                             R13 R9
      282 GETUPVAL                         R14 9
      283 GETTABLEKS                       R14 R14 K68 ["Created"]
      285 LOADK                            R17 K29 ["AssetProperty"]
      286 GETUPVAL                         R18 9
      287 GETTABLEKS                       R18 R18 K68 ["Created"]
      289 NAMECALL                         R15 R1 K30 ["getText"]
      291 CALL                             R15 3 1
      292 GETUPVAL                         R16 14
      293 GETUPVAL                         R17 4
      294 GETTABLEKS                       R17 R17 K69 ["toDateTime"]
      296 GETTABLEKS                       R18 R3 K68 ["Created"]
      298 CALL                             R17 1 1
      299 NAMECALL                         R18 R1 K70 ["getLocale"]
      301 CALL                             R18 1 -1
      302 CALL                             R16 -1 -1
      303 CALL                             R13 -1 0
      304 MOVE                             R13 R9
      305 GETUPVAL                         R14 9
      306 GETTABLEKS                       R14 R14 K71 ["Modified"]
      308 LOADK                            R17 K29 ["AssetProperty"]
      309 GETUPVAL                         R18 9
      310 GETTABLEKS                       R18 R18 K71 ["Modified"]
      312 NAMECALL                         R15 R1 K30 ["getText"]
      314 CALL                             R15 3 1
      315 GETUPVAL                         R16 14
      316 GETUPVAL                         R17 4
      317 GETTABLEKS                       R17 R17 K69 ["toDateTime"]
      319 GETTABLEKS                       R18 R3 K71 ["Modified"]
      321 CALL                             R17 1 1
      322 NAMECALL                         R18 R1 K70 ["getLocale"]
      324 CALL                             R18 1 -1
      325 CALL                             R16 -1 -1
      326 CALL                             R13 -1 0
      327 MOVE                             R13 R9
      328 GETUPVAL                         R14 9
      329 GETTABLEKS                       R14 R14 K72 ["Source"]
      331 LOADK                            R17 K29 ["AssetProperty"]
      332 GETUPVAL                         R18 9
      333 GETTABLEKS                       R18 R18 K72 ["Source"]
      335 NAMECALL                         R15 R1 K30 ["getText"]
      337 CALL                             R15 3 1
      338 LOADK                            R18 K73 ["AssetSource"]
      339 GETTABLEKS                       R19 R3 K72 ["Source"]
      341 NAMECALL                         R16 R1 K30 ["getText"]
      343 CALL                             R16 3 -1
      344 CALL                             R13 -1 0
      345 JUMPIFNOT                        R4 ; [+5]
      346 GETUPVAL                         R13 15
      347 MOVE                             R14 R9
      348 MOVE                             R15 R4
      349 MOVE                             R16 R1
      350 CALL                             R13 3 0
      351 GETUPVAL                         R13 16
      352 GETTABLEKS                       R13 R13 K74 ["new"]
      354 CALL                             R13 0 1
      355 DUPTABLE                         R14 K76 [{"Details"}]
      356 GETUPVAL                         R15 2
      357 GETTABLEKS                       R15 R15 K6 ["createElement"]
      359 GETUPVAL                         R16 4
      360 GETTABLEKS                       R16 R16 K77 ["Section"]
      362 DUPTABLE                         R17 K81 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-details"}]
      363 NAMECALL                         R18 R13 K82 ["getNextOrder"]
      365 CALL                             R18 1 1
      366 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      368 LOADK                            R20 K29 ["AssetProperty"]
      369 LOADK                            R21 K75 ["Details"]
      370 NAMECALL                         R18 R1 K30 ["getText"]
      372 CALL                             R18 3 1
      373 SETTABLEKS                       R18 R17 K78 ["Title"]
      375 MOVE                             R18 R8
      376 CALL                             R15 3 1
      377 SETTABLEKS                       R15 R14 K75 ["Details"]
      379 GETTABLEKS                       R15 R0 K83 ["ShowAccessPolicy"]
      381 JUMPIFNOT                        R15 ; [+32]
      382 GETUPVAL                         R15 2
      383 GETTABLEKS                       R15 R15 K6 ["createElement"]
      385 GETUPVAL                         R16 4
      386 GETTABLEKS                       R16 R16 K77 ["Section"]
      388 DUPTABLE                         R17 K85 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-access-policy"}]
      389 NAMECALL                         R18 R13 K82 ["getNextOrder"]
      391 CALL                             R18 1 1
      392 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      394 LOADK                            R20 K86 ["AssetPermission"]
      395 LOADK                            R21 K87 ["AccessPolicy"]
      396 NAMECALL                         R18 R1 K30 ["getText"]
      398 CALL                             R18 3 1
      399 SETTABLEKS                       R18 R17 K78 ["Title"]
      401 GETUPVAL                         R18 17
      402 MOVE                             R19 R10
      403 GETTABLEKS                       R20 R0 K88 ["Sharing"]
      405 GETTABLEKS                       R21 R0 K89 ["IsLoadingSharing"]
      407 GETTABLEKS                       R22 R0 K90 ["OnManageSharing"]
      409 MOVE                             R23 R1
      410 CALL                             R18 5 1
      411 CALL                             R15 3 1
      412 SETTABLEKS                       R15 R14 K87 ["AccessPolicy"]
      414 MOVE                             R15 R4
      415 JUMPIFNOT                        R15 ; [+2]
      416 GETTABLEKS                       R15 R4 K91 ["Description"]
      418 JUMPIFNOT                        R15 ; [+35]
      419 GETUPVAL                         R16 2
      420 GETTABLEKS                       R16 R16 K6 ["createElement"]
      422 GETUPVAL                         R17 4
      423 GETTABLEKS                       R17 R17 K77 ["Section"]
      425 DUPTABLE                         R18 K93 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-description"}]
      426 NAMECALL                         R19 R13 K82 ["getNextOrder"]
      428 CALL                             R19 1 1
      429 SETTABLEKS                       R19 R18 K1 ["LayoutOrder"]
      431 LOADK                            R21 K29 ["AssetProperty"]
      432 LOADK                            R22 K91 ["Description"]
      433 NAMECALL                         R19 R1 K30 ["getText"]
      435 CALL                             R19 3 1
      436 SETTABLEKS                       R19 R18 K78 ["Title"]
      438 DUPTABLE                         R19 K95 [{"Text"}]
      439 GETUPVAL                         R20 2
      440 GETTABLEKS                       R20 R20 K6 ["createElement"]
      442 GETUPVAL                         R21 12
      443 GETTABLEKS                       R21 R21 K94 ["Text"]
      445 DUPTABLE                         R22 K98 [{["Text"], ["tag"] = "size-full-0 auto-y padding-y-xsmall padding-left-xxlarge padding-right-medium text-body-small text-wrap text-align-x-left content-default"}]
      446 SETTABLEKS                       R15 R22 K94 ["Text"]
      448 CALL                             R20 2 1
      449 SETTABLEKS                       R20 R19 K94 ["Text"]
      451 CALL                             R16 3 1
      452 SETTABLEKS                       R16 R14 K91 ["Description"]
      454 GETUPVAL                         R16 2
      455 GETTABLEKS                       R16 R16 K6 ["createElement"]
      457 GETUPVAL                         R17 4
      458 GETTABLEKS                       R17 R17 K20 ["DrawerBody"]
      460 DUPTABLE                         R18 K24 [{"LayoutOrder", "Thumbnail", "MediaPreview", "AssetHeader"}]
      461 SETTABLEKS                       R2 R18 K1 ["LayoutOrder"]
      463 SETTABLEKS                       R5 R18 K21 ["Thumbnail"]
      465 SETTABLEKS                       R6 R18 K22 ["MediaPreview"]
      467 SETTABLEKS                       R7 R18 K23 ["AssetHeader"]
      469 MOVE                             R19 R14
      470 CALL                             R16 3 -1
      471 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Components"]
       45 GETTABLEKS                       R8 R8 K15 ["Shared"]
       47 GETTABLEKS                       R8 R8 K16 ["ItemThumbnail"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K13 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Networking"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["Types"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R10 R1 K19 ["Utils"]
       66 GETTABLEKS                       R10 R10 K20 ["formatDateTime"]
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R0 K13 ["Src"]
       72 GETTABLEKS                       R12 R12 K21 ["Util"]
       74 GETTABLEKS                       R12 R12 K22 ["copyAssetId"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K13 ["Src"]
       81 GETTABLEKS                       R13 R13 K21 ["Util"]
       83 GETTABLEKS                       R13 R13 K23 ["isAudioPreviewable"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R0 K13 ["Src"]
       90 GETTABLEKS                       R14 R14 K24 ["Flags"]
       92 GETTABLEKS                       R14 R14 K25 ["getFFlagAmrCopyVersionedUri"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETIMPORT                        R15 K1 [script]
       99 GETTABLEKS                       R15 R15 K26 ["Parent"]
      101 GETTABLEKS                       R15 R15 K27 ["AssetHeader"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K5 [require]
      106 GETIMPORT                        R16 K1 [script]
      108 GETTABLEKS                       R16 R16 K26 ["Parent"]
      110 GETTABLEKS                       R16 R16 K28 ["AudioPlayer"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K5 [require]
      115 GETIMPORT                        R17 K1 [script]
      117 GETTABLEKS                       R17 R17 K26 ["Parent"]
      119 GETTABLEKS                       R17 R17 K29 ["Rows"]
      121 CALL                             R16 1 1
      122 GETTABLEKS                       R17 R4 K21 ["Util"]
      124 GETTABLEKS                       R17 R17 K30 ["LayoutOrderIterator"]
      126 GETTABLEKS                       R18 R9 K31 ["AssetInfoField"]
      128 GETTABLEKS                       R19 R9 K32 ["DetailsDrawerRow"]
      130 GETTABLEKS                       R20 R1 K33 ["Enums"]
      132 GETTABLEKS                       R20 R20 K34 ["AssetTechnicalDetailCount"]
      134 NEWTABLE                         R21 0 8
      136 GETTABLEKS                       R22 R20 K35 ["TriangleCount"]
      138 GETTABLEKS                       R23 R20 K36 ["VertexCount"]
      140 GETTABLEKS                       R24 R20 K37 ["ScriptCount"]
      142 GETTABLEKS                       R25 R20 K38 ["MeshPartCount"]
      144 GETTABLEKS                       R26 R20 K39 ["AnimationCount"]
      146 GETTABLEKS                       R27 R20 K40 ["AudioCount"]
      148 GETTABLEKS                       R28 R20 K41 ["DecalCount"]
      150 GETTABLEKS                       R29 R20 K42 ["ToolCount"]
      152 SETLIST                          R21 R22 8 [1]
      154 DUPCLOSURE                       R22 K43 [PROTO_0]
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R16
      158 DUPCLOSURE                       R23 K44 [PROTO_1]
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R16
      162 DUPCLOSURE                       R24 K45 [PROTO_2]
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R3
      168 DUPCLOSURE                       R25 K46 [PROTO_4]
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R24
      187 RETURN                           R25 1
