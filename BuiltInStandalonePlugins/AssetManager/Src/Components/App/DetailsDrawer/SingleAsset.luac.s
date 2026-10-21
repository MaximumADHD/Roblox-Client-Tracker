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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createRowList"]
        3 CALL                             R4 0 3
        4 MOVE                             R7 R5
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R8 R8 K1 ["Owner"]
        8 LOADK                            R11 K2 ["AssetProperty"]
        9 GETUPVAL                         R12 1
       10 GETTABLEKS                       R12 R12 K1 ["Owner"]
       12 NAMECALL                         R9 R3 K3 ["getText"]
       14 CALL                             R9 3 1
       15 MOVE                             R10 R0
       16 CALL                             R7 3 0
       17 JUMPIFNOT                        R2 ; [+15]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K4 ["createElement"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K5 ["LoadingRows"]
       24 DUPTABLE                         R9 K9 [{["LayoutOrder"], ["RowCount"] = 2}]
       25 MOVE                             R10 R6
       26 CALL                             R10 0 1
       27 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R4 K10 ["AccessPolicyLoading"]
       32 RETURN                           R4 1
       33 MOVE                             R7 R5
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K11 ["AccessControl"]
       37 LOADK                            R11 K12 ["AssetPermission"]
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K11 ["AccessControl"]
       41 NAMECALL                         R9 R3 K3 ["getText"]
       43 CALL                             R9 3 1
       44 JUMPIFNOT                        R1 ; [+7]
       45 LOADK                            R12 K12 ["AssetPermission"]
       46 GETTABLEKS                       R13 R1 K13 ["Privacy"]
       48 NAMECALL                         R10 R3 K3 ["getText"]
       50 CALL                             R10 3 1
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R10 R10 K14 ["PlaceholderText"]
       55 CALL                             R7 3 0
       56 JUMPIFNOT                        R1 ; [+3]
       57 GETTABLEKS                       R7 R1 K15 ["SharedWith"]
       59 JUMP                             ; [+2]
       60 NEWTABLE                         R7 0 0
       62 JUMPIFNOT                        R1 ; [+6]
       63 LENGTH                           R9 R7
       64 FASTCALL1                        TOSTRING R9 ; [+2]
       65 GETIMPORT                        R8 K17 [tostring]
       67 CALL                             R8 1 1
       68 JUMP                             ; [+3]
       69 GETUPVAL                         R8 3
       70 GETTABLEKS                       R8 R8 K14 ["PlaceholderText"]
       72 MOVE                             R9 R5
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K15 ["SharedWith"]
       76 LOADK                            R13 K12 ["AssetPermission"]
       77 GETUPVAL                         R14 1
       78 GETTABLEKS                       R14 R14 K15 ["SharedWith"]
       80 NAMECALL                         R11 R3 K3 ["getText"]
       82 CALL                             R11 3 1
       83 MOVE                             R12 R8
       84 CALL                             R9 3 0
       85 RETURN                           R4 1

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
       66 JUMPIFNOT                        R7 ; [+11]
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R6 R6 K6 ["createElement"]
       70 GETUPVAL                         R7 7
       71 DUPTABLE                         R8 K8 [{"AssetId"}]
       72 GETTABLEKS                       R9 R3 K7 ["AssetId"]
       74 SETTABLEKS                       R9 R8 K7 ["AssetId"]
       76 CALL                             R6 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R6
       79 GETUPVAL                         R7 2
       80 GETTABLEKS                       R7 R7 K6 ["createElement"]
       82 GETUPVAL                         R8 8
       83 DUPTABLE                         R9 K16 [{"Asset"}]
       84 SETTABLEKS                       R3 R9 K2 ["Asset"]
       86 CALL                             R7 2 1
       87 GETTABLEKS                       R8 R0 K17 ["IsLoadingTechnicalDetails"]
       89 JUMPIFNOT                        R8 ; [+27]
       90 GETUPVAL                         R8 2
       91 GETTABLEKS                       R8 R8 K6 ["createElement"]
       93 GETUPVAL                         R9 4
       94 GETTABLEKS                       R9 R9 K18 ["DrawerBody"]
       96 DUPTABLE                         R10 K22 [{"LayoutOrder", "Thumbnail", "MediaPreview", "AssetHeader"}]
       97 SETTABLEKS                       R2 R10 K1 ["LayoutOrder"]
       99 SETTABLEKS                       R5 R10 K19 ["Thumbnail"]
      101 SETTABLEKS                       R6 R10 K20 ["MediaPreview"]
      103 SETTABLEKS                       R7 R10 K21 ["AssetHeader"]
      105 DUPTABLE                         R11 K24 [{"Loading"}]
      106 GETUPVAL                         R12 2
      107 GETTABLEKS                       R12 R12 K6 ["createElement"]
      109 GETUPVAL                         R13 4
      110 GETTABLEKS                       R13 R13 K25 ["LoadingRows"]
      112 CALL                             R12 1 1
      113 SETTABLEKS                       R12 R11 K23 ["Loading"]
      115 CALL                             R8 3 -1
      116 RETURN                           R8 -1
      117 GETUPVAL                         R8 4
      118 GETTABLEKS                       R8 R8 K26 ["createRowList"]
      120 CALL                             R8 0 2
      121 MOVE                             R10 R9
      122 GETUPVAL                         R11 9
      123 GETTABLEKS                       R11 R11 K4 ["AssetType"]
      125 LOADK                            R14 K27 ["AssetProperty"]
      126 GETUPVAL                         R15 9
      127 GETTABLEKS                       R15 R15 K4 ["AssetType"]
      129 NAMECALL                         R12 R1 K28 ["getText"]
      131 CALL                             R12 3 1
      132 LOADK                            R15 K4 ["AssetType"]
      133 GETTABLEKS                       R16 R3 K4 ["AssetType"]
      135 NAMECALL                         R13 R1 K28 ["getText"]
      137 CALL                             R13 3 -1
      138 CALL                             R10 -1 0
      139 GETTABLEKS                       R11 R3 K29 ["Creator"]
      141 GETTABLEKS                       R11 R11 K30 ["Name"]
      143 JUMPIFEQKS                       R11 K31 [""] ; [+6]
      145 GETTABLEKS                       R10 R3 K29 ["Creator"]
      147 GETTABLEKS                       R10 R10 K30 ["Name"]
      149 JUMP                             ; [+3]
      150 GETUPVAL                         R10 10
      151 GETTABLEKS                       R10 R10 K32 ["PlaceholderText"]
      153 MOVE                             R11 R9
      154 GETUPVAL                         R12 9
      155 GETTABLEKS                       R12 R12 K29 ["Creator"]
      157 LOADK                            R15 K27 ["AssetProperty"]
      158 GETUPVAL                         R16 9
      159 GETTABLEKS                       R16 R16 K29 ["Creator"]
      161 NAMECALL                         R13 R1 K28 ["getText"]
      163 CALL                             R13 3 1
      164 MOVE                             R14 R10
      165 CALL                             R11 3 0
      166 MOVE                             R11 R9
      167 GETUPVAL                         R12 9
      168 GETTABLEKS                       R12 R12 K7 ["AssetId"]
      170 LOADK                            R15 K27 ["AssetProperty"]
      171 GETUPVAL                         R16 9
      172 GETTABLEKS                       R16 R16 K7 ["AssetId"]
      174 NAMECALL                         R13 R1 K28 ["getText"]
      176 CALL                             R13 3 1
      177 GETTABLEKS                       R15 R3 K7 ["AssetId"]
      179 FASTCALL1                        TOSTRING R15 ; [+2]
      180 GETIMPORT                        R14 K34 [tostring]
      182 CALL                             R14 1 1
      183 CALL                             R11 3 0
      184 MOVE                             R11 R9
      185 GETUPVAL                         R12 9
      186 GETTABLEKS                       R12 R12 K35 ["Created"]
      188 LOADK                            R15 K27 ["AssetProperty"]
      189 GETUPVAL                         R16 9
      190 GETTABLEKS                       R16 R16 K35 ["Created"]
      192 NAMECALL                         R13 R1 K28 ["getText"]
      194 CALL                             R13 3 1
      195 GETUPVAL                         R14 11
      196 GETUPVAL                         R15 4
      197 GETTABLEKS                       R15 R15 K36 ["toDateTime"]
      199 GETTABLEKS                       R16 R3 K35 ["Created"]
      201 CALL                             R15 1 -1
      202 CALL                             R14 -1 -1
      203 CALL                             R11 -1 0
      204 MOVE                             R11 R9
      205 GETUPVAL                         R12 9
      206 GETTABLEKS                       R12 R12 K37 ["Modified"]
      208 LOADK                            R15 K27 ["AssetProperty"]
      209 GETUPVAL                         R16 9
      210 GETTABLEKS                       R16 R16 K37 ["Modified"]
      212 NAMECALL                         R13 R1 K28 ["getText"]
      214 CALL                             R13 3 1
      215 GETUPVAL                         R14 11
      216 GETUPVAL                         R15 4
      217 GETTABLEKS                       R15 R15 K36 ["toDateTime"]
      219 GETTABLEKS                       R16 R3 K37 ["Modified"]
      221 CALL                             R15 1 -1
      222 CALL                             R14 -1 -1
      223 CALL                             R11 -1 0
      224 MOVE                             R11 R9
      225 GETUPVAL                         R12 9
      226 GETTABLEKS                       R12 R12 K38 ["Source"]
      228 LOADK                            R15 K27 ["AssetProperty"]
      229 GETUPVAL                         R16 9
      230 GETTABLEKS                       R16 R16 K38 ["Source"]
      232 NAMECALL                         R13 R1 K28 ["getText"]
      234 CALL                             R13 3 1
      235 LOADK                            R16 K39 ["AssetSource"]
      236 GETTABLEKS                       R17 R3 K38 ["Source"]
      238 NAMECALL                         R14 R1 K28 ["getText"]
      240 CALL                             R14 3 -1
      241 CALL                             R11 -1 0
      242 JUMPIFNOT                        R4 ; [+5]
      243 GETUPVAL                         R11 12
      244 MOVE                             R12 R9
      245 MOVE                             R13 R4
      246 MOVE                             R14 R1
      247 CALL                             R11 3 0
      248 GETUPVAL                         R11 13
      249 GETTABLEKS                       R11 R11 K40 ["new"]
      251 CALL                             R11 0 1
      252 DUPTABLE                         R12 K42 [{"Details"}]
      253 GETUPVAL                         R13 2
      254 GETTABLEKS                       R13 R13 K6 ["createElement"]
      256 GETUPVAL                         R14 4
      257 GETTABLEKS                       R14 R14 K43 ["Section"]
      259 DUPTABLE                         R15 K47 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-details"}]
      260 NAMECALL                         R16 R11 K48 ["getNextOrder"]
      262 CALL                             R16 1 1
      263 SETTABLEKS                       R16 R15 K1 ["LayoutOrder"]
      265 LOADK                            R18 K27 ["AssetProperty"]
      266 LOADK                            R19 K41 ["Details"]
      267 NAMECALL                         R16 R1 K28 ["getText"]
      269 CALL                             R16 3 1
      270 SETTABLEKS                       R16 R15 K44 ["Title"]
      272 MOVE                             R16 R8
      273 CALL                             R13 3 1
      274 SETTABLEKS                       R13 R12 K41 ["Details"]
      276 GETTABLEKS                       R13 R0 K49 ["ShowAccessPolicy"]
      278 JUMPIFNOT                        R13 ; [+30]
      279 GETUPVAL                         R13 2
      280 GETTABLEKS                       R13 R13 K6 ["createElement"]
      282 GETUPVAL                         R14 4
      283 GETTABLEKS                       R14 R14 K43 ["Section"]
      285 DUPTABLE                         R15 K51 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-access-policy"}]
      286 NAMECALL                         R16 R11 K48 ["getNextOrder"]
      288 CALL                             R16 1 1
      289 SETTABLEKS                       R16 R15 K1 ["LayoutOrder"]
      291 LOADK                            R18 K52 ["AssetPermission"]
      292 LOADK                            R19 K53 ["AccessPolicy"]
      293 NAMECALL                         R16 R1 K28 ["getText"]
      295 CALL                             R16 3 1
      296 SETTABLEKS                       R16 R15 K44 ["Title"]
      298 GETUPVAL                         R16 14
      299 MOVE                             R17 R10
      300 GETTABLEKS                       R18 R0 K54 ["Sharing"]
      302 GETTABLEKS                       R19 R0 K55 ["IsLoadingSharing"]
      304 MOVE                             R20 R1
      305 CALL                             R16 4 1
      306 CALL                             R13 3 1
      307 SETTABLEKS                       R13 R12 K53 ["AccessPolicy"]
      309 MOVE                             R13 R4
      310 JUMPIFNOT                        R13 ; [+2]
      311 GETTABLEKS                       R13 R4 K56 ["Description"]
      313 JUMPIFNOT                        R13 ; [+35]
      314 GETUPVAL                         R14 2
      315 GETTABLEKS                       R14 R14 K6 ["createElement"]
      317 GETUPVAL                         R15 4
      318 GETTABLEKS                       R15 R15 K43 ["Section"]
      320 DUPTABLE                         R16 K58 [{["LayoutOrder"], ["Title"], ["TestId"] = "details-drawer-description"}]
      321 NAMECALL                         R17 R11 K48 ["getNextOrder"]
      323 CALL                             R17 1 1
      324 SETTABLEKS                       R17 R16 K1 ["LayoutOrder"]
      326 LOADK                            R19 K27 ["AssetProperty"]
      327 LOADK                            R20 K56 ["Description"]
      328 NAMECALL                         R17 R1 K28 ["getText"]
      330 CALL                             R17 3 1
      331 SETTABLEKS                       R17 R16 K44 ["Title"]
      333 DUPTABLE                         R17 K60 [{"Text"}]
      334 GETUPVAL                         R18 2
      335 GETTABLEKS                       R18 R18 K6 ["createElement"]
      337 GETUPVAL                         R19 15
      338 GETTABLEKS                       R19 R19 K59 ["Text"]
      340 DUPTABLE                         R20 K63 [{["Text"], ["tag"] = "size-full-0 auto-y padding-y-xsmall padding-left-xxlarge padding-right-medium text-body-small text-wrap text-align-x-left content-default"}]
      341 SETTABLEKS                       R13 R20 K59 ["Text"]
      343 CALL                             R18 2 1
      344 SETTABLEKS                       R18 R17 K59 ["Text"]
      346 CALL                             R14 3 1
      347 SETTABLEKS                       R14 R12 K56 ["Description"]
      349 GETUPVAL                         R14 2
      350 GETTABLEKS                       R14 R14 K6 ["createElement"]
      352 GETUPVAL                         R15 4
      353 GETTABLEKS                       R15 R15 K18 ["DrawerBody"]
      355 DUPTABLE                         R16 K22 [{"LayoutOrder", "Thumbnail", "MediaPreview", "AssetHeader"}]
      356 SETTABLEKS                       R2 R16 K1 ["LayoutOrder"]
      358 SETTABLEKS                       R5 R16 K19 ["Thumbnail"]
      360 SETTABLEKS                       R6 R16 K20 ["MediaPreview"]
      362 SETTABLEKS                       R7 R16 K21 ["AssetHeader"]
      364 MOVE                             R17 R12
      365 CALL                             R14 3 -1
      366 RETURN                           R14 -1

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
      168 DUPCLOSURE                       R22 K42 [PROTO_3]
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R2
      185 RETURN                           R22 1
