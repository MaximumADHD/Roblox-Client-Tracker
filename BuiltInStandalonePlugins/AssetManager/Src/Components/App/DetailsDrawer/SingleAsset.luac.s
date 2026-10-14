PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["FontThumbnailStrip"]
        7 GETTABLEKS                       R5 R0 K2 ["AssetId"]
        9 NAMECALL                         R3 R1 K3 ["getFontFamilyThumbnail"]
       11 CALL                             R3 2 -1
       12 CALL                             R2 -1 -1
       13 RETURN                           R2 -1

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
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["SectionLabel"]
        3 MOVE                             R8 R2
        4 CALL                             R8 0 1
        5 LOADK                            R11 K1 ["AssetPermission"]
        6 LOADK                            R12 K2 ["AccessPolicy"]
        7 NAMECALL                         R9 R6 K3 ["getText"]
        9 CALL                             R9 3 1
       10 LOADK                            R10 K4 ["details-drawer-access-policy"]
       11 CALL                             R7 3 1
       12 SETTABLEKS                       R7 R0 K2 ["AccessPolicy"]
       14 MOVE                             R7 R1
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K5 ["Owner"]
       18 LOADK                            R11 K6 ["AssetProperty"]
       19 GETUPVAL                         R12 1
       20 GETTABLEKS                       R12 R12 K5 ["Owner"]
       22 NAMECALL                         R9 R6 K3 ["getText"]
       24 CALL                             R9 3 1
       25 MOVE                             R10 R3
       26 CALL                             R7 3 0
       27 JUMPIFNOT                        R5 ; [+10]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K7 ["LoadingRows"]
       31 MOVE                             R8 R2
       32 CALL                             R8 0 1
       33 LOADN                            R9 2
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R0 K8 ["AccessPolicyLoading"]
       37 RETURN                           R0 0
       38 MOVE                             R7 R1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K9 ["AccessControl"]
       42 LOADK                            R11 K1 ["AssetPermission"]
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R12 R12 K9 ["AccessControl"]
       46 NAMECALL                         R9 R6 K3 ["getText"]
       48 CALL                             R9 3 1
       49 JUMPIFNOT                        R4 ; [+7]
       50 LOADK                            R12 K1 ["AssetPermission"]
       51 GETTABLEKS                       R13 R4 K10 ["Privacy"]
       53 NAMECALL                         R10 R6 K3 ["getText"]
       55 CALL                             R10 3 1
       56 JUMP                             ; [+3]
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K11 ["PlaceholderText"]
       60 CALL                             R7 3 0
       61 JUMPIFNOT                        R4 ; [+3]
       62 GETTABLEKS                       R7 R4 K12 ["SharedWith"]
       64 JUMP                             ; [+2]
       65 NEWTABLE                         R7 0 0
       67 JUMPIFNOT                        R4 ; [+6]
       68 LENGTH                           R9 R7
       69 FASTCALL1                        TOSTRING R9 ; [+2]
       70 GETIMPORT                        R8 K14 [tostring]
       72 CALL                             R8 1 1
       73 JUMP                             ; [+3]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R8 R8 K11 ["PlaceholderText"]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K0 ["SectionLabel"]
       80 MOVE                             R10 R2
       81 CALL                             R10 0 1
       82 LOADK                            R13 K1 ["AssetPermission"]
       83 LOADK                            R14 K15 ["SharedWithCount"]
       84 DUPTABLE                         R15 K17 [{"count"}]
       85 SETTABLEKS                       R8 R15 K16 ["count"]
       87 NAMECALL                         R11 R6 K3 ["getText"]
       89 CALL                             R11 4 1
       90 LOADK                            R12 K18 ["details-drawer-shared-with"]
       91 CALL                             R9 3 1
       92 SETTABLEKS                       R9 R0 K19 ["SharedWithHeader"]
       94 MOVE                             R9 R7
       95 LOADNIL                          R10
       96 LOADNIL                          R11
       97 FORGPREP                         R9
       98 LOADK                            R14 K20 ["SharedWith_%*"]
       99 GETTABLEKS                       R16 R13 K21 ["Scope"]
      101 GETTABLEKS                       R16 R16 K22 ["Uid"]
      103 NAMECALL                         R14 R14 K23 ["format"]
      105 CALL                             R14 2 1
      106 GETUPVAL                         R15 3
      107 GETTABLEKS                       R15 R15 K24 ["createElement"]
      109 GETUPVAL                         R16 4
      110 DUPTABLE                         R17 K27 [{"LayoutOrder", "Grant"}]
      111 MOVE                             R18 R2
      112 CALL                             R18 0 1
      113 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      115 SETTABLEKS                       R13 R17 K26 ["Grant"]
      117 CALL                             R15 2 1
      118 SETTABLE                         R15 R0 R14
      119 FORGLOOP                         R9 2 ; [-22]
      121 RETURN                           R0 0

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
       29 JUMP                             ; [+23]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K9 ["ThumbnailSquare"]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K6 ["createElement"]
       36 GETUPVAL                         R7 5
       37 DUPTABLE                         R8 K11 [{"AssetId", "AssetType", "iconSize"}]
       38 GETTABLEKS                       R9 R3 K7 ["AssetId"]
       40 SETTABLEKS                       R9 R8 K7 ["AssetId"]
       42 GETTABLEKS                       R9 R3 K4 ["AssetType"]
       44 SETTABLEKS                       R9 R8 K4 ["AssetType"]
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R9 R9 K12 ["THUMBNAIL_ICON_SIZE"]
       49 SETTABLEKS                       R9 R8 K10 ["iconSize"]
       51 CALL                             R6 2 -1
       52 CALL                             R5 -1 1
       53 GETUPVAL                         R7 6
       54 GETTABLEKS                       R8 R3 K4 ["AssetType"]
       56 GETTABLEKS                       R9 R3 K13 ["ModerationStatus"]
       58 CALL                             R7 2 1
       59 JUMPIFNOT                        R7 ; [+11]
       60 GETUPVAL                         R6 2
       61 GETTABLEKS                       R6 R6 K6 ["createElement"]
       63 GETUPVAL                         R7 7
       64 DUPTABLE                         R8 K8 [{"AssetId"}]
       65 GETTABLEKS                       R9 R3 K7 ["AssetId"]
       67 SETTABLEKS                       R9 R8 K7 ["AssetId"]
       69 CALL                             R6 2 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R6
       72 GETTABLEKS                       R7 R0 K14 ["IsLoadingTechnicalDetails"]
       74 JUMPIFNOT                        R7 ; [+15]
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R7 R7 K15 ["DrawerBody"]
       78 MOVE                             R8 R2
       79 MOVE                             R9 R5
       80 DUPTABLE                         R10 K17 [{"Loading"}]
       81 GETUPVAL                         R11 4
       82 GETTABLEKS                       R11 R11 K18 ["LoadingRows"]
       84 CALL                             R11 0 1
       85 SETTABLEKS                       R11 R10 K16 ["Loading"]
       87 MOVE                             R11 R6
       88 CALL                             R7 4 -1
       89 RETURN                           R7 -1
       90 GETUPVAL                         R7 4
       91 GETTABLEKS                       R7 R7 K19 ["createRowList"]
       93 CALL                             R7 0 4
       94 MOVE                             R11 R4
       95 JUMPIFNOT                        R11 ; [+2]
       96 GETTABLEKS                       R11 R4 K20 ["Description"]
       98 JUMPIFNOT                        R11 ; [+29]
       99 GETUPVAL                         R12 2
      100 GETTABLEKS                       R12 R12 K6 ["createElement"]
      102 GETUPVAL                         R13 8
      103 GETTABLEKS                       R13 R13 K21 ["View"]
      105 DUPTABLE                         R14 K26 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-medium", ["testId"] = "details-drawer-description"}]
      106 MOVE                             R15 R9
      107 CALL                             R15 0 1
      108 SETTABLEKS                       R15 R14 K1 ["LayoutOrder"]
      110 DUPTABLE                         R15 K28 [{"Text"}]
      111 GETUPVAL                         R16 2
      112 GETTABLEKS                       R16 R16 K6 ["createElement"]
      114 GETUPVAL                         R17 8
      115 GETTABLEKS                       R17 R17 K27 ["Text"]
      117 DUPTABLE                         R18 K30 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-default"}]
      118 SETTABLEKS                       R11 R18 K27 ["Text"]
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K27 ["Text"]
      123 CALL                             R12 3 1
      124 SETTABLEKS                       R12 R7 K20 ["Description"]
      126 MOVE                             R12 R10
      127 CALL                             R12 0 0
      128 MOVE                             R12 R8
      129 GETUPVAL                         R13 9
      130 GETTABLEKS                       R13 R13 K4 ["AssetType"]
      132 LOADK                            R16 K31 ["AssetProperty"]
      133 GETUPVAL                         R17 9
      134 GETTABLEKS                       R17 R17 K4 ["AssetType"]
      136 NAMECALL                         R14 R1 K32 ["getText"]
      138 CALL                             R14 3 1
      139 LOADK                            R17 K4 ["AssetType"]
      140 GETTABLEKS                       R18 R3 K4 ["AssetType"]
      142 NAMECALL                         R15 R1 K32 ["getText"]
      144 CALL                             R15 3 -1
      145 CALL                             R12 -1 0
      146 GETTABLEKS                       R13 R3 K33 ["Creator"]
      148 GETTABLEKS                       R13 R13 K34 ["Name"]
      150 JUMPIFEQKS                       R13 K35 [""] ; [+6]
      152 GETTABLEKS                       R12 R3 K33 ["Creator"]
      154 GETTABLEKS                       R12 R12 K34 ["Name"]
      156 JUMP                             ; [+3]
      157 GETUPVAL                         R12 10
      158 GETTABLEKS                       R12 R12 K36 ["PlaceholderText"]
      160 MOVE                             R13 R8
      161 GETUPVAL                         R14 9
      162 GETTABLEKS                       R14 R14 K33 ["Creator"]
      164 LOADK                            R17 K31 ["AssetProperty"]
      165 GETUPVAL                         R18 9
      166 GETTABLEKS                       R18 R18 K33 ["Creator"]
      168 NAMECALL                         R15 R1 K32 ["getText"]
      170 CALL                             R15 3 1
      171 MOVE                             R16 R12
      172 CALL                             R13 3 0
      173 MOVE                             R13 R8
      174 GETUPVAL                         R14 9
      175 GETTABLEKS                       R14 R14 K7 ["AssetId"]
      177 LOADK                            R17 K31 ["AssetProperty"]
      178 GETUPVAL                         R18 9
      179 GETTABLEKS                       R18 R18 K7 ["AssetId"]
      181 NAMECALL                         R15 R1 K32 ["getText"]
      183 CALL                             R15 3 1
      184 GETTABLEKS                       R17 R3 K7 ["AssetId"]
      186 FASTCALL1                        TOSTRING R17 ; [+2]
      187 GETIMPORT                        R16 K38 [tostring]
      189 CALL                             R16 1 1
      190 CALL                             R13 3 0
      191 MOVE                             R13 R8
      192 GETUPVAL                         R14 9
      193 GETTABLEKS                       R14 R14 K39 ["Created"]
      195 LOADK                            R17 K31 ["AssetProperty"]
      196 GETUPVAL                         R18 9
      197 GETTABLEKS                       R18 R18 K39 ["Created"]
      199 NAMECALL                         R15 R1 K32 ["getText"]
      201 CALL                             R15 3 1
      202 GETUPVAL                         R16 11
      203 GETUPVAL                         R17 4
      204 GETTABLEKS                       R17 R17 K40 ["toDateTime"]
      206 GETTABLEKS                       R18 R3 K39 ["Created"]
      208 CALL                             R17 1 -1
      209 CALL                             R16 -1 -1
      210 CALL                             R13 -1 0
      211 MOVE                             R13 R8
      212 GETUPVAL                         R14 9
      213 GETTABLEKS                       R14 R14 K41 ["Modified"]
      215 LOADK                            R17 K31 ["AssetProperty"]
      216 GETUPVAL                         R18 9
      217 GETTABLEKS                       R18 R18 K41 ["Modified"]
      219 NAMECALL                         R15 R1 K32 ["getText"]
      221 CALL                             R15 3 1
      222 GETUPVAL                         R16 11
      223 GETUPVAL                         R17 4
      224 GETTABLEKS                       R17 R17 K40 ["toDateTime"]
      226 GETTABLEKS                       R18 R3 K41 ["Modified"]
      228 CALL                             R17 1 -1
      229 CALL                             R16 -1 -1
      230 CALL                             R13 -1 0
      231 MOVE                             R13 R8
      232 GETUPVAL                         R14 9
      233 GETTABLEKS                       R14 R14 K42 ["Source"]
      235 LOADK                            R17 K31 ["AssetProperty"]
      236 GETUPVAL                         R18 9
      237 GETTABLEKS                       R18 R18 K42 ["Source"]
      239 NAMECALL                         R15 R1 K32 ["getText"]
      241 CALL                             R15 3 1
      242 LOADK                            R18 K43 ["AssetSource"]
      243 GETTABLEKS                       R19 R3 K42 ["Source"]
      245 NAMECALL                         R16 R1 K32 ["getText"]
      247 CALL                             R16 3 -1
      248 CALL                             R13 -1 0
      249 GETTABLEKS                       R13 R3 K44 ["VersionNumber"]
      251 JUMPIFNOT                        R13 ; [+18]
      252 MOVE                             R13 R8
      253 GETUPVAL                         R14 9
      254 GETTABLEKS                       R14 R14 K44 ["VersionNumber"]
      256 LOADK                            R17 K31 ["AssetProperty"]
      257 GETUPVAL                         R18 9
      258 GETTABLEKS                       R18 R18 K44 ["VersionNumber"]
      260 NAMECALL                         R15 R1 K32 ["getText"]
      262 CALL                             R15 3 1
      263 LOADK                            R16 K45 ["v%*"]
      264 GETTABLEKS                       R18 R3 K44 ["VersionNumber"]
      266 NAMECALL                         R16 R16 K46 ["format"]
      268 CALL                             R16 2 1
      269 CALL                             R13 3 0
      270 JUMPIFNOT                        R4 ; [+5]
      271 GETUPVAL                         R13 12
      272 MOVE                             R14 R8
      273 MOVE                             R15 R4
      274 MOVE                             R16 R1
      275 CALL                             R13 3 0
      276 GETTABLEKS                       R13 R0 K47 ["ShowAccessPolicy"]
      278 JUMPIFNOT                        R13 ; [+11]
      279 GETUPVAL                         R13 13
      280 MOVE                             R14 R7
      281 MOVE                             R15 R8
      282 MOVE                             R16 R9
      283 MOVE                             R17 R12
      284 GETTABLEKS                       R18 R0 K48 ["Sharing"]
      286 GETTABLEKS                       R19 R0 K49 ["IsLoadingSharing"]
      288 MOVE                             R20 R1
      289 CALL                             R13 7 0
      290 GETUPVAL                         R13 4
      291 GETTABLEKS                       R13 R13 K15 ["DrawerBody"]
      293 MOVE                             R14 R2
      294 MOVE                             R15 R5
      295 MOVE                             R16 R7
      296 MOVE                             R17 R6
      297 CALL                             R13 4 -1
      298 RETURN                           R13 -1

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
       90 GETTABLEKS                       R13 R13 K24 ["AudioPlayer"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETIMPORT                        R14 K1 [script]
       97 GETTABLEKS                       R14 R14 K23 ["Parent"]
       99 GETTABLEKS                       R14 R14 K25 ["Rows"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETIMPORT                        R15 K1 [script]
      106 GETTABLEKS                       R15 R15 K23 ["Parent"]
      108 GETTABLEKS                       R15 R15 K26 ["SharedWithRow"]
      110 CALL                             R14 1 1
      111 GETTABLEKS                       R15 R9 K27 ["AssetInfoField"]
      113 GETTABLEKS                       R16 R9 K28 ["DetailsDrawerRow"]
      115 NEWTABLE                         R17 0 8
      117 GETTABLEKS                       R18 R9 K29 ["AssetTechnicalDetailCount"]
      119 GETTABLEKS                       R18 R18 K30 ["TriangleCount"]
      121 GETTABLEKS                       R19 R9 K29 ["AssetTechnicalDetailCount"]
      123 GETTABLEKS                       R19 R19 K31 ["VertexCount"]
      125 GETTABLEKS                       R20 R9 K29 ["AssetTechnicalDetailCount"]
      127 GETTABLEKS                       R20 R20 K32 ["ScriptCount"]
      129 GETTABLEKS                       R21 R9 K29 ["AssetTechnicalDetailCount"]
      131 GETTABLEKS                       R21 R21 K33 ["MeshPartCount"]
      133 GETTABLEKS                       R22 R9 K29 ["AssetTechnicalDetailCount"]
      135 GETTABLEKS                       R22 R22 K34 ["AnimationCount"]
      137 GETTABLEKS                       R23 R9 K29 ["AssetTechnicalDetailCount"]
      139 GETTABLEKS                       R23 R23 K35 ["AudioCount"]
      141 GETTABLEKS                       R24 R9 K29 ["AssetTechnicalDetailCount"]
      143 GETTABLEKS                       R24 R24 K36 ["DecalCount"]
      145 GETTABLEKS                       R25 R9 K29 ["AssetTechnicalDetailCount"]
      147 GETTABLEKS                       R25 R25 K37 ["ToolCount"]
      149 SETLIST                          R17 R18 8 [1]
      151 DUPCLOSURE                       R18 K38 [PROTO_0]
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R13
      154 DUPCLOSURE                       R19 K39 [PROTO_1]
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R13
      158 DUPCLOSURE                       R20 K40 [PROTO_2]
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R14
      164 DUPCLOSURE                       R21 K41 [PROTO_3]
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R20
      179 RETURN                           R21 1
