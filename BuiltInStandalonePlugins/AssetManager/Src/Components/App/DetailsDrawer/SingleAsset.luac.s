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
        1 GETTABLEKS                       R0 R0 K0 ["OnAction"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["DetailsDrawerAction"]
        6 GETTABLEKS                       R1 R1 K2 ["CopyUri"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 NEWTABLE                         R1 0 1
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["AssetId"]
       15 SETLIST                          R1 R2 1 [1]
       17 LOADB                            R2 1
       18 GETUPVAL                         R4 4
       19 JUMPIFNOT                        R4 ; [+6]
       20 NEWTABLE                         R3 0 1
       22 GETUPVAL                         R4 4
       23 SETLIST                          R3 R4 1 [1]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R3
       27 CALL                             R0 3 0
       28 RETURN                           R0 0

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
       89 DUPTABLE                         R9 K19 [{"Asset", "OnAction"}]
       90 SETTABLEKS                       R3 R9 K2 ["Asset"]
       92 GETTABLEKS                       R10 R0 K18 ["OnAction"]
       94 SETTABLEKS                       R10 R9 K18 ["OnAction"]
       96 CALL                             R7 2 1
       97 GETTABLEKS                       R8 R0 K20 ["IsLoadingTechnicalDetails"]
       99 JUMPIFNOT                        R8 ; [+27]
      100 GETUPVAL                         R8 2
      101 GETTABLEKS                       R8 R8 K6 ["createElement"]
      103 GETUPVAL                         R9 4
      104 GETTABLEKS                       R9 R9 K21 ["DrawerBody"]
      106 DUPTABLE                         R10 K25 [{"LayoutOrder", "Thumbnail", "MediaPreview", "AssetHeader"}]
      107 SETTABLEKS                       R2 R10 K1 ["LayoutOrder"]
      109 SETTABLEKS                       R5 R10 K22 ["Thumbnail"]
      111 SETTABLEKS                       R6 R10 K23 ["MediaPreview"]
      113 SETTABLEKS                       R7 R10 K24 ["AssetHeader"]
      115 DUPTABLE                         R11 K27 [{"Loading"}]
      116 GETUPVAL                         R12 2
      117 GETTABLEKS                       R12 R12 K6 ["createElement"]
      119 GETUPVAL                         R13 4
      120 GETTABLEKS                       R13 R13 K28 ["LoadingRows"]
      122 CALL                             R12 1 1
      123 SETTABLEKS                       R12 R11 K26 ["Loading"]
      125 CALL                             R8 3 -1
      126 RETURN                           R8 -1
      127 GETUPVAL                         R8 4
      128 GETTABLEKS                       R8 R8 K29 ["createRowList"]
      130 CALL                             R8 0 2
      131 MOVE                             R10 R9
      132 GETUPVAL                         R11 9
      133 GETTABLEKS                       R11 R11 K4 ["AssetType"]
      135 LOADK                            R14 K30 ["AssetProperty"]
      136 GETUPVAL                         R15 9
      137 GETTABLEKS                       R15 R15 K4 ["AssetType"]
      139 NAMECALL                         R12 R1 K31 ["getText"]
      141 CALL                             R12 3 1
      142 LOADK                            R15 K4 ["AssetType"]
      143 GETTABLEKS                       R16 R3 K4 ["AssetType"]
      145 NAMECALL                         R13 R1 K31 ["getText"]
      147 CALL                             R13 3 -1
      148 CALL                             R10 -1 0
      149 GETTABLEKS                       R11 R3 K32 ["Creator"]
      151 GETTABLEKS                       R11 R11 K33 ["Name"]
      153 JUMPIFEQKS                       R11 K34 [""] ; [+6]
      155 GETTABLEKS                       R10 R3 K32 ["Creator"]
      157 GETTABLEKS                       R10 R10 K33 ["Name"]
      159 JUMP                             ; [+5]
      160 GETUPVAL                         R10 10
      161 GETTABLEKS                       R10 R10 K35 ["Constants"]
      163 GETTABLEKS                       R10 R10 K36 ["PlaceholderText"]
      165 MOVE                             R11 R9
      166 GETUPVAL                         R12 9
      167 GETTABLEKS                       R12 R12 K32 ["Creator"]
      169 LOADK                            R15 K30 ["AssetProperty"]
      170 GETUPVAL                         R16 9
      171 GETTABLEKS                       R16 R16 K32 ["Creator"]
      173 NAMECALL                         R13 R1 K31 ["getText"]
      175 CALL                             R13 3 1
      176 MOVE                             R14 R10
      177 CALL                             R11 3 0
      178 GETUPVAL                         R12 11
      179 CALL                             R12 0 1
      180 JUMPIFNOT                        R12 ; [+3]
      181 GETTABLEKS                       R11 R3 K37 ["VersionNumber"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R11
      185 JUMPIFNOT                        R11 ; [+8]
      186 LOADK                            R12 K38 ["rbxassetid://%*&version=%*"]
      187 GETTABLEKS                       R14 R3 K7 ["AssetId"]
      189 MOVE                             R15 R11
      190 NAMECALL                         R12 R12 K39 ["format"]
      192 CALL                             R12 3 1
      193 JUMP                             ; [+6]
      194 LOADK                            R12 K40 ["rbxassetid://%*"]
      195 GETTABLEKS                       R14 R3 K7 ["AssetId"]
      197 NAMECALL                         R12 R12 K39 ["format"]
      199 CALL                             R12 2 1
      200 MOVE                             R13 R9
      201 GETUPVAL                         R14 9
      202 GETTABLEKS                       R14 R14 K7 ["AssetId"]
      204 LOADK                            R17 K30 ["AssetProperty"]
      205 LOADK                            R18 K41 ["AssetUri"]
      206 NAMECALL                         R15 R1 K31 ["getText"]
      208 CALL                             R15 3 1
      209 MOVE                             R16 R12
      210 GETUPVAL                         R17 2
      211 GETTABLEKS                       R17 R17 K6 ["createElement"]
      213 GETUPVAL                         R18 12
      214 GETTABLEKS                       R18 R18 K42 ["Tooltip"]
      216 DUPTABLE                         R19 K47 [{["LayoutOrder"] = 4, ["title"], ["side"], ["align"]}]
      217 LOADK                            R22 K48 ["ContextMenu"]
      218 LOADK                            R23 K49 ["CopyUri"]
      219 NAMECALL                         R20 R1 K31 ["getText"]
      221 CALL                             R20 3 1
      222 SETTABLEKS                       R20 R19 K44 ["title"]
      224 GETUPVAL                         R20 12
      225 GETTABLEKS                       R20 R20 K50 ["Enums"]
      227 GETTABLEKS                       R20 R20 K51 ["PopoverSide"]
      229 GETTABLEKS                       R20 R20 K52 ["Bottom"]
      231 SETTABLEKS                       R20 R19 K45 ["side"]
      233 GETUPVAL                         R20 12
      234 GETTABLEKS                       R20 R20 K50 ["Enums"]
      236 GETTABLEKS                       R20 R20 K53 ["PopoverAlign"]
      238 GETTABLEKS                       R20 R20 K54 ["End"]
      240 SETTABLEKS                       R20 R19 K46 ["align"]
      242 GETUPVAL                         R20 2
      243 GETTABLEKS                       R20 R20 K6 ["createElement"]
      245 GETUPVAL                         R21 12
      246 GETTABLEKS                       R21 R21 K55 ["IconButton"]
      248 DUPTABLE                         R22 K62 [{["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-copy-uri-button"}]
      249 NEWCLOSURE                       R23 P0
      250 CAPTURE                          VAL R0
      251 CAPTURE                          UPVAL U13
      252 CAPTURE                          UPVAL U14
      253 CAPTURE                          VAL R3
      254 CAPTURE                          VAL R11
      255 SETTABLEKS                       R23 R22 K56 ["onActivated"]
      257 GETUPVAL                         R23 12
      258 GETTABLEKS                       R23 R23 K50 ["Enums"]
      260 GETTABLEKS                       R23 R23 K63 ["IconName"]
      262 GETTABLEKS                       R23 R23 K64 ["TwoStackedSquares"]
      264 SETTABLEKS                       R23 R22 K57 ["icon"]
      266 GETUPVAL                         R23 12
      267 GETTABLEKS                       R23 R23 K50 ["Enums"]
      269 GETTABLEKS                       R23 R23 K65 ["ButtonVariant"]
      271 GETTABLEKS                       R23 R23 K66 ["Utility"]
      273 SETTABLEKS                       R23 R22 K58 ["variant"]
      275 GETUPVAL                         R23 12
      276 GETTABLEKS                       R23 R23 K50 ["Enums"]
      278 GETTABLEKS                       R23 R23 K67 ["InputSize"]
      280 GETTABLEKS                       R23 R23 K68 ["XSmall"]
      282 SETTABLEKS                       R23 R22 K59 ["size"]
      284 CALL                             R20 2 -1
      285 CALL                             R17 -1 -1
      286 CALL                             R13 -1 0
      287 MOVE                             R13 R9
      288 GETUPVAL                         R14 9
      289 GETTABLEKS                       R14 R14 K69 ["Created"]
      291 LOADK                            R17 K30 ["AssetProperty"]
      292 GETUPVAL                         R18 9
      293 GETTABLEKS                       R18 R18 K69 ["Created"]
      295 NAMECALL                         R15 R1 K31 ["getText"]
      297 CALL                             R15 3 1
      298 GETUPVAL                         R16 15
      299 GETUPVAL                         R17 4
      300 GETTABLEKS                       R17 R17 K70 ["toDateTime"]
      302 GETTABLEKS                       R18 R3 K69 ["Created"]
      304 CALL                             R17 1 1
      305 NAMECALL                         R18 R1 K71 ["getLocale"]
      307 CALL                             R18 1 -1
      308 CALL                             R16 -1 -1
      309 CALL                             R13 -1 0
      310 MOVE                             R13 R9
      311 GETUPVAL                         R14 9
      312 GETTABLEKS                       R14 R14 K72 ["Modified"]
      314 LOADK                            R17 K30 ["AssetProperty"]
      315 GETUPVAL                         R18 9
      316 GETTABLEKS                       R18 R18 K72 ["Modified"]
      318 NAMECALL                         R15 R1 K31 ["getText"]
      320 CALL                             R15 3 1
      321 GETUPVAL                         R16 15
      322 GETUPVAL                         R17 4
      323 GETTABLEKS                       R17 R17 K70 ["toDateTime"]
      325 GETTABLEKS                       R18 R3 K72 ["Modified"]
      327 CALL                             R17 1 1
      328 NAMECALL                         R18 R1 K71 ["getLocale"]
      330 CALL                             R18 1 -1
      331 CALL                             R16 -1 -1
      332 CALL                             R13 -1 0
      333 MOVE                             R13 R9
      334 GETUPVAL                         R14 9
      335 GETTABLEKS                       R14 R14 K73 ["Source"]
      337 LOADK                            R17 K30 ["AssetProperty"]
      338 GETUPVAL                         R18 9
      339 GETTABLEKS                       R18 R18 K73 ["Source"]
      341 NAMECALL                         R15 R1 K31 ["getText"]
      343 CALL                             R15 3 1
      344 LOADK                            R18 K74 ["AssetSource"]
      345 GETTABLEKS                       R19 R3 K73 ["Source"]
      347 NAMECALL                         R16 R1 K31 ["getText"]
      349 CALL                             R16 3 -1
      350 CALL                             R13 -1 0
      351 JUMPIFNOT                        R4 ; [+5]
      352 GETUPVAL                         R13 16
      353 MOVE                             R14 R9
      354 MOVE                             R15 R4
      355 MOVE                             R16 R1
      356 CALL                             R13 3 0
      357 GETUPVAL                         R13 17
      358 GETTABLEKS                       R13 R13 K75 ["new"]
      360 CALL                             R13 0 1
      361 DUPTABLE                         R14 K77 [{"Details"}]
      362 GETUPVAL                         R15 2
      363 GETTABLEKS                       R15 R15 K6 ["createElement"]
      365 GETUPVAL                         R16 4
      366 GETTABLEKS                       R16 R16 K78 ["Section"]
      368 DUPTABLE                         R17 K82 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-details"}]
      369 NAMECALL                         R18 R13 K83 ["getNextOrder"]
      371 CALL                             R18 1 1
      372 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      374 LOADK                            R20 K30 ["AssetProperty"]
      375 LOADK                            R21 K76 ["Details"]
      376 NAMECALL                         R18 R1 K31 ["getText"]
      378 CALL                             R18 3 1
      379 SETTABLEKS                       R18 R17 K79 ["Title"]
      381 MOVE                             R18 R8
      382 CALL                             R15 3 1
      383 SETTABLEKS                       R15 R14 K76 ["Details"]
      385 GETTABLEKS                       R15 R0 K84 ["ShowAccessPolicy"]
      387 JUMPIFNOT                        R15 ; [+32]
      388 GETUPVAL                         R15 2
      389 GETTABLEKS                       R15 R15 K6 ["createElement"]
      391 GETUPVAL                         R16 4
      392 GETTABLEKS                       R16 R16 K78 ["Section"]
      394 DUPTABLE                         R17 K86 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-access-policy"}]
      395 NAMECALL                         R18 R13 K83 ["getNextOrder"]
      397 CALL                             R18 1 1
      398 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      400 LOADK                            R20 K87 ["AssetPermission"]
      401 LOADK                            R21 K88 ["AccessPolicy"]
      402 NAMECALL                         R18 R1 K31 ["getText"]
      404 CALL                             R18 3 1
      405 SETTABLEKS                       R18 R17 K79 ["Title"]
      407 GETUPVAL                         R18 18
      408 MOVE                             R19 R10
      409 GETTABLEKS                       R20 R0 K89 ["Sharing"]
      411 GETTABLEKS                       R21 R0 K90 ["IsLoadingSharing"]
      413 GETTABLEKS                       R22 R0 K91 ["OnManageSharing"]
      415 MOVE                             R23 R1
      416 CALL                             R18 5 1
      417 CALL                             R15 3 1
      418 SETTABLEKS                       R15 R14 K88 ["AccessPolicy"]
      420 MOVE                             R15 R4
      421 JUMPIFNOT                        R15 ; [+2]
      422 GETTABLEKS                       R15 R4 K92 ["Description"]
      424 JUMPIFNOT                        R15 ; [+35]
      425 GETUPVAL                         R16 2
      426 GETTABLEKS                       R16 R16 K6 ["createElement"]
      428 GETUPVAL                         R17 4
      429 GETTABLEKS                       R17 R17 K78 ["Section"]
      431 DUPTABLE                         R18 K94 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-description"}]
      432 NAMECALL                         R19 R13 K83 ["getNextOrder"]
      434 CALL                             R19 1 1
      435 SETTABLEKS                       R19 R18 K1 ["LayoutOrder"]
      437 LOADK                            R21 K30 ["AssetProperty"]
      438 LOADK                            R22 K92 ["Description"]
      439 NAMECALL                         R19 R1 K31 ["getText"]
      441 CALL                             R19 3 1
      442 SETTABLEKS                       R19 R18 K79 ["Title"]
      444 DUPTABLE                         R19 K96 [{"Text"}]
      445 GETUPVAL                         R20 2
      446 GETTABLEKS                       R20 R20 K6 ["createElement"]
      448 GETUPVAL                         R21 12
      449 GETTABLEKS                       R21 R21 K95 ["Text"]
      451 DUPTABLE                         R22 K99 [{["Text"], ["tag"] = "size-full-0 auto-y padding-y-xsmall padding-left-xxlarge padding-right-medium text-body-small text-wrap text-align-x-left content-default"}]
      452 SETTABLEKS                       R15 R22 K95 ["Text"]
      454 CALL                             R20 2 1
      455 SETTABLEKS                       R20 R19 K95 ["Text"]
      457 CALL                             R16 3 1
      458 SETTABLEKS                       R16 R14 K92 ["Description"]
      460 GETUPVAL                         R16 2
      461 GETTABLEKS                       R16 R16 K6 ["createElement"]
      463 GETUPVAL                         R17 4
      464 GETTABLEKS                       R17 R17 K21 ["DrawerBody"]
      466 DUPTABLE                         R18 K25 [{"LayoutOrder", "Thumbnail", "MediaPreview", "AssetHeader"}]
      467 SETTABLEKS                       R2 R18 K1 ["LayoutOrder"]
      469 SETTABLEKS                       R5 R18 K22 ["Thumbnail"]
      471 SETTABLEKS                       R6 R18 K23 ["MediaPreview"]
      473 SETTABLEKS                       R7 R18 K24 ["AssetHeader"]
      475 MOVE                             R19 R14
      476 CALL                             R16 3 -1
      477 RETURN                           R16 -1

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
       61 GETTABLEKS                       R10 R10 K18 ["Analytics"]
       63 GETTABLEKS                       R10 R10 K19 ["Types"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K13 ["Src"]
       70 GETTABLEKS                       R11 R11 K19 ["Types"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R11 R1 K20 ["Utils"]
       75 GETTABLEKS                       R11 R11 K21 ["formatDateTime"]
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K13 ["Src"]
       81 GETTABLEKS                       R13 R13 K22 ["Util"]
       83 GETTABLEKS                       R13 R13 K23 ["copyAssetId"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R0 K13 ["Src"]
       90 GETTABLEKS                       R14 R14 K22 ["Util"]
       92 GETTABLEKS                       R14 R14 K24 ["isAudioPreviewable"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R15 R0 K13 ["Src"]
       99 GETTABLEKS                       R15 R15 K25 ["Flags"]
      101 GETTABLEKS                       R15 R15 K26 ["getFFlagAmrCopyVersionedUri"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K5 [require]
      106 GETIMPORT                        R16 K1 [script]
      108 GETTABLEKS                       R16 R16 K27 ["Parent"]
      110 GETTABLEKS                       R16 R16 K28 ["AssetHeader"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K5 [require]
      115 GETIMPORT                        R17 K1 [script]
      117 GETTABLEKS                       R17 R17 K27 ["Parent"]
      119 GETTABLEKS                       R17 R17 K29 ["AudioPlayer"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K5 [require]
      124 GETIMPORT                        R18 K1 [script]
      126 GETTABLEKS                       R18 R18 K27 ["Parent"]
      128 GETTABLEKS                       R18 R18 K30 ["Rows"]
      130 CALL                             R17 1 1
      131 GETTABLEKS                       R18 R4 K22 ["Util"]
      133 GETTABLEKS                       R18 R18 K31 ["LayoutOrderIterator"]
      135 GETTABLEKS                       R19 R10 K32 ["AssetInfoField"]
      137 GETTABLEKS                       R20 R10 K33 ["DetailsDrawerRow"]
      139 GETTABLEKS                       R21 R1 K34 ["Enums"]
      141 GETTABLEKS                       R21 R21 K35 ["AssetTechnicalDetailCount"]
      143 NEWTABLE                         R22 0 8
      145 GETTABLEKS                       R23 R21 K36 ["TriangleCount"]
      147 GETTABLEKS                       R24 R21 K37 ["VertexCount"]
      149 GETTABLEKS                       R25 R21 K38 ["ScriptCount"]
      151 GETTABLEKS                       R26 R21 K39 ["MeshPartCount"]
      153 GETTABLEKS                       R27 R21 K40 ["AnimationCount"]
      155 GETTABLEKS                       R28 R21 K41 ["AudioCount"]
      157 GETTABLEKS                       R29 R21 K42 ["DecalCount"]
      159 GETTABLEKS                       R30 R21 K43 ["ToolCount"]
      161 SETLIST                          R22 R23 8 [1]
      163 DUPCLOSURE                       R23 K44 [PROTO_0]
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R17
      167 DUPCLOSURE                       R24 K45 [PROTO_1]
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R17
      171 DUPCLOSURE                       R25 K46 [PROTO_2]
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R20
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R3
      177 DUPCLOSURE                       R26 K47 [PROTO_4]
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R25
      197 RETURN                           R26 1
