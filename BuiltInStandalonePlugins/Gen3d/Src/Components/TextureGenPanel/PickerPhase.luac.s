PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFNOTEQKS                    R2 K1 ["Downloading"] ; [+3]
        4 LOADK                            R1 K2 ["Generating"]
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R1 R0 K0 ["status"]
        8 DUPTABLE                         R2 K5 [{"status", "thumbnailContent", "errorMessage"}]
        9 SETTABLEKS                       R1 R2 K0 ["status"]
       11 GETTABLEKS                       R3 R0 K6 ["imageId"]
       13 SETTABLEKS                       R3 R2 K3 ["thumbnailContent"]
       15 GETTABLEKS                       R4 R0 K7 ["failureReason"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K8 ["Gen3dTypes"]
       20 GETTABLEKS                       R5 R5 K9 ["Enums"]
       22 GETTABLEKS                       R5 R5 K10 ["FailureReason"]
       24 GETTABLEKS                       R5 R5 K11 ["GenerationModerated"]
       26 JUMPIFNOTEQ                      R4 R5 ; [+8]
       28 GETUPVAL                         R3 1
       29 LOADK                            R5 K12 ["Common"]
       30 LOADK                            R6 K11 ["GenerationModerated"]
       31 NAMECALL                         R3 R3 K13 ["getText"]
       33 CALL                             R3 3 1
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R3 R0 K4 ["errorMessage"]
       37 SETTABLEKS                       R3 R2 K4 ["errorMessage"]
       39 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canPick"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canPick"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 LOADNIL                          R2
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 LOADNIL                          R2
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["onConfirm"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["canPick"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K0 ["onConfirm"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R3 R0 K1 ["previewIndex"]
        7 GETTABLEKS                       R4 R0 K2 ["setPreviewIndex"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R7 0 1
       17 GETTABLEKS                       R8 R0 K4 ["canPick"]
       19 SETLIST                          R7 R8 1 [1]
       21 CALL                             R5 2 0
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K5 ["createNextOrder"]
       25 CALL                             R5 0 1
       26 JUMPIFEQKNIL                     R3 ; [+132]
       28 GETTABLEKS                       R7 R0 K6 ["slots"]
       30 GETTABLE                         R6 R7 R3
       31 JUMPIFNOT                        R6 ; [+3]
       32 GETTABLEKS                       R7 R6 K7 ["imageId"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K8 ["createElement"]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K9 ["View"]
       42 DUPTABLE                         R10 K12 [{["tag"] = "col size-full-0 auto-y gap-medium"}]
       43 DUPTABLE                         R11 K15 [{"Preview", "Actions"}]
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K8 ["createElement"]
       47 GETUPVAL                         R13 2
       48 GETTABLEKS                       R13 R13 K9 ["View"]
       50 DUPTABLE                         R14 K19 [{["tag"] = "size-full-0 radius-medium bg-surface-200", ["LayoutOrder"], ["Size"]}]
       51 MOVE                             R15 R5
       52 CALL                             R15 0 1
       53 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       55 GETIMPORT                        R15 K22 [UDim2.new]
       57 LOADN                            R16 1
       58 LOADN                            R17 0
       59 LOADN                            R18 0
       60 LOADN                            R19 320
       61 CALL                             R15 4 1
       62 SETTABLEKS                       R15 R14 K18 ["Size"]
       64 DUPTABLE                         R15 K24 [{"Image"}]
       65 JUMPIFNOT                        R7 ; [+15]
       66 GETUPVAL                         R16 0
       67 GETTABLEKS                       R16 R16 K8 ["createElement"]
       69 GETUPVAL                         R17 2
       70 GETTABLEKS                       R17 R17 K23 ["Image"]
       72 DUPTABLE                         R18 K29 [{["tag"] = "size-full-full radius-medium", ["Image"], ["BackgroundTransparency"] = 1, ["ScaleType"]}]
       73 SETTABLEKS                       R7 R18 K23 ["Image"]
       75 GETIMPORT                        R19 K32 [Enum.ScaleType.Fit]
       77 SETTABLEKS                       R19 R18 K28 ["ScaleType"]
       79 CALL                             R16 2 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R16
       82 SETTABLEKS                       R16 R15 K23 ["Image"]
       84 CALL                             R12 3 1
       85 SETTABLEKS                       R12 R11 K13 ["Preview"]
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K8 ["createElement"]
       90 GETUPVAL                         R13 2
       91 GETTABLEKS                       R13 R13 K9 ["View"]
       93 DUPTABLE                         R14 K34 [{["tag"] = "row size-full-0 auto-y gap-small", ["LayoutOrder"]}]
       94 MOVE                             R15 R5
       95 CALL                             R15 0 1
       96 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       98 DUPTABLE                         R15 K36 [{"Confirm"}]
       99 GETUPVAL                         R16 0
      100 GETTABLEKS                       R16 R16 K8 ["createElement"]
      102 GETUPVAL                         R17 2
      103 GETTABLEKS                       R17 R17 K37 ["Button"]
      105 DUPTABLE                         R18 K44 [{["LayoutOrder"] = 1, ["text"], ["onActivated"], ["isDisabled"], ["variant"], ["size"], ["width"]}]
      106 GETUPVAL                         R19 3
      107 LOADK                            R21 K45 ["Common"]
      108 LOADK                            R22 K35 ["Confirm"]
      109 NAMECALL                         R19 R19 K46 ["getText"]
      111 CALL                             R19 3 1
      112 SETTABLEKS                       R19 R18 K38 ["text"]
      114 NEWCLOSURE                       R19 P1
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R2
      119 SETTABLEKS                       R19 R18 K39 ["onActivated"]
      121 GETTABLEKS                       R20 R0 K4 ["canPick"]
      123 NOT                              R19 R20
      124 SETTABLEKS                       R19 R18 K40 ["isDisabled"]
      126 GETUPVAL                         R19 2
      127 GETTABLEKS                       R19 R19 K47 ["Enums"]
      129 GETTABLEKS                       R19 R19 K48 ["ButtonVariant"]
      131 GETTABLEKS                       R19 R19 K49 ["Emphasis"]
      133 SETTABLEKS                       R19 R18 K41 ["variant"]
      135 GETUPVAL                         R19 2
      136 GETTABLEKS                       R19 R19 K47 ["Enums"]
      138 GETTABLEKS                       R19 R19 K50 ["InputSize"]
      140 GETTABLEKS                       R19 R19 K51 ["Medium"]
      142 SETTABLEKS                       R19 R18 K42 ["size"]
      144 GETIMPORT                        R19 K53 [UDim.new]
      146 LOADN                            R20 1
      147 LOADN                            R21 0
      148 CALL                             R19 2 1
      149 SETTABLEKS                       R19 R18 K43 ["width"]
      151 CALL                             R16 2 1
      152 SETTABLEKS                       R16 R15 K35 ["Confirm"]
      154 CALL                             R12 3 1
      155 SETTABLEKS                       R12 R11 K14 ["Actions"]
      157 CALL                             R8 3 -1
      158 RETURN                           R8 -1
      159 NEWTABLE                         R6 0 0
      161 LOADB                            R7 1
      162 LOADN                            R10 1
      163 GETTABLEKS                       R11 R0 K6 ["slots"]
      165 LENGTH                           R8 R11
      166 LOADN                            R9 1
      167 FORNPREP                         R8
      168 GETUPVAL                         R13 4
      169 GETTABLEKS                       R15 R0 K6 ["slots"]
      171 GETTABLE                         R14 R15 R10
      172 CALL                             R13 1 1
      173 FASTCALL2                        TABLE_INSERT R6 R13 ; [+4]
      175 MOVE                             R12 R6
      176 GETIMPORT                        R11 K56 [table.insert]
      178 CALL                             R11 2 0
      179 GETTABLEKS                       R12 R0 K6 ["slots"]
      181 GETTABLE                         R11 R12 R10
      182 GETTABLEKS                       R11 R11 K57 ["status"]
      184 JUMPIFEQKS                       R11 K58 ["Pending"] ; [+3]
      186 JUMPIFNOTEQKS                    R11 K59 ["Downloading"] ; [+2]
      188 LOADB                            R7 0
      189 FORNLOOP                         R8
      190 GETTABLEKS                       R9 R0 K4 ["canPick"]
      192 NOT                              R8 R9
      193 JUMPIF                           R8 ; [+4]
      194 JUMPIFEQKNIL                     R1 ; [+2]
      196 LOADB                            R8 0 +1
      197 LOADB                            R8 1
      198 GETUPVAL                         R9 0
      199 GETTABLEKS                       R9 R9 K8 ["createElement"]
      201 GETUPVAL                         R10 2
      202 GETTABLEKS                       R10 R10 K9 ["View"]
      204 DUPTABLE                         R11 K12 [{["tag"] = "col size-full-0 auto-y gap-medium"}]
      205 DUPTABLE                         R12 K62 [{"Header", "Picker", "Confirm"}]
      206 GETUPVAL                         R13 0
      207 GETTABLEKS                       R13 R13 K8 ["createElement"]
      209 GETUPVAL                         R14 2
      210 GETTABLEKS                       R14 R14 K9 ["View"]
      212 DUPTABLE                         R15 K64 [{["tag"] = "row align-y-center size-full-0 auto-y gap-small", ["LayoutOrder"]}]
      213 MOVE                             R16 R5
      214 CALL                             R16 0 1
      215 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      217 DUPTABLE                         R16 K68 [{"Title", "Spacer", "Reload"}]
      218 GETUPVAL                         R17 0
      219 GETTABLEKS                       R17 R17 K8 ["createElement"]
      221 GETUPVAL                         R18 2
      222 GETTABLEKS                       R18 R18 K69 ["Text"]
      224 DUPTABLE                         R19 K71 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-medium text-emphasis-primary"}]
      225 GETUPVAL                         R20 3
      226 LOADK                            R22 K72 ["Gen3d"]
      227 LOADK                            R23 K73 ["ImageSelectionHeader"]
      228 NAMECALL                         R20 R20 K46 ["getText"]
      230 CALL                             R20 3 1
      231 SETTABLEKS                       R20 R19 K69 ["Text"]
      233 CALL                             R17 2 1
      234 SETTABLEKS                       R17 R16 K65 ["Title"]
      236 GETUPVAL                         R17 0
      237 GETTABLEKS                       R17 R17 K8 ["createElement"]
      239 GETUPVAL                         R18 2
      240 GETTABLEKS                       R18 R18 K9 ["View"]
      242 DUPTABLE                         R19 K76 [{["LayoutOrder"] = 2, ["tag"] = "fill auto-y"}]
      243 CALL                             R17 2 1
      244 SETTABLEKS                       R17 R16 K66 ["Spacer"]
      246 GETUPVAL                         R17 0
      247 GETTABLEKS                       R17 R17 K8 ["createElement"]
      249 GETUPVAL                         R18 2
      250 GETTABLEKS                       R18 R18 K77 ["IconButton"]
      252 DUPTABLE                         R19 K80 [{["LayoutOrder"] = 3, ["icon"], ["onActivated"], ["isDisabled"], ["size"], ["variant"]}]
      253 DUPTABLE                         R20 K82 [{"name"}]
      254 GETUPVAL                         R21 2
      255 GETTABLEKS                       R21 R21 K47 ["Enums"]
      257 GETTABLEKS                       R21 R21 K83 ["IconName"]
      259 GETTABLEKS                       R21 R21 K84 ["TwoArrowsSpinClockwise"]
      261 SETTABLEKS                       R21 R20 K81 ["name"]
      263 SETTABLEKS                       R20 R19 K79 ["icon"]
      265 GETTABLEKS                       R20 R0 K85 ["onReload"]
      267 SETTABLEKS                       R20 R19 K39 ["onActivated"]
      269 NOT                              R20 R7
      270 SETTABLEKS                       R20 R19 K40 ["isDisabled"]
      272 GETUPVAL                         R20 2
      273 GETTABLEKS                       R20 R20 K47 ["Enums"]
      275 GETTABLEKS                       R20 R20 K50 ["InputSize"]
      277 GETTABLEKS                       R20 R20 K86 ["Small"]
      279 SETTABLEKS                       R20 R19 K42 ["size"]
      281 GETUPVAL                         R20 2
      282 GETTABLEKS                       R20 R20 K47 ["Enums"]
      284 GETTABLEKS                       R20 R20 K48 ["ButtonVariant"]
      286 GETTABLEKS                       R20 R20 K87 ["Utility"]
      288 SETTABLEKS                       R20 R19 K41 ["variant"]
      290 CALL                             R17 2 1
      291 SETTABLEKS                       R17 R16 K67 ["Reload"]
      293 CALL                             R13 3 1
      294 SETTABLEKS                       R13 R12 K60 ["Header"]
      296 GETUPVAL                         R13 0
      297 GETTABLEKS                       R13 R13 K8 ["createElement"]
      299 GETUPVAL                         R14 2
      300 GETTABLEKS                       R14 R14 K9 ["View"]
      302 DUPTABLE                         R15 K89 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      303 MOVE                             R16 R5
      304 CALL                             R16 0 1
      305 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      307 DUPTABLE                         R16 K91 [{"Body"}]
      308 GETUPVAL                         R17 0
      309 GETTABLEKS                       R17 R17 K8 ["createElement"]
      311 GETUPVAL                         R18 5
      312 DUPTABLE                         R19 K97 [{["slots"], ["selectedIndex"], ["headerText"] = "", ["onSelect"], ["onPreview"]}]
      313 SETTABLEKS                       R6 R19 K6 ["slots"]
      315 SETTABLEKS                       R1 R19 K92 ["selectedIndex"]
      317 NEWCLOSURE                       R20 P2
      318 CAPTURE                          VAL R0
      319 CAPTURE                          VAL R2
      320 SETTABLEKS                       R20 R19 K95 ["onSelect"]
      322 NEWCLOSURE                       R20 P3
      323 CAPTURE                          VAL R4
      324 SETTABLEKS                       R20 R19 K96 ["onPreview"]
      326 CALL                             R17 2 1
      327 SETTABLEKS                       R17 R16 K90 ["Body"]
      329 CALL                             R13 3 1
      330 SETTABLEKS                       R13 R12 K61 ["Picker"]
      332 GETUPVAL                         R13 0
      333 GETTABLEKS                       R13 R13 K8 ["createElement"]
      335 GETUPVAL                         R14 2
      336 GETTABLEKS                       R14 R14 K37 ["Button"]
      338 DUPTABLE                         R15 K98 [{"LayoutOrder", "text", "onActivated", "isDisabled", "variant", "size", "width"}]
      339 MOVE                             R16 R5
      340 CALL                             R16 0 1
      341 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      343 GETUPVAL                         R16 3
      344 LOADK                            R18 K45 ["Common"]
      345 LOADK                            R19 K35 ["Confirm"]
      346 NAMECALL                         R16 R16 K46 ["getText"]
      348 CALL                             R16 3 1
      349 SETTABLEKS                       R16 R15 K38 ["text"]
      351 NEWCLOSURE                       R16 P4
      352 CAPTURE                          VAL R8
      353 CAPTURE                          VAL R1
      354 CAPTURE                          VAL R2
      355 CAPTURE                          VAL R0
      356 SETTABLEKS                       R16 R15 K39 ["onActivated"]
      358 SETTABLEKS                       R8 R15 K40 ["isDisabled"]
      360 GETUPVAL                         R16 2
      361 GETTABLEKS                       R16 R16 K47 ["Enums"]
      363 GETTABLEKS                       R16 R16 K48 ["ButtonVariant"]
      365 GETTABLEKS                       R16 R16 K49 ["Emphasis"]
      367 SETTABLEKS                       R16 R15 K41 ["variant"]
      369 GETUPVAL                         R16 2
      370 GETTABLEKS                       R16 R16 K47 ["Enums"]
      372 GETTABLEKS                       R16 R16 K50 ["InputSize"]
      374 GETTABLEKS                       R16 R16 K51 ["Medium"]
      376 SETTABLEKS                       R16 R15 K42 ["size"]
      378 GETIMPORT                        R16 K53 [UDim.new]
      380 LOADN                            R17 1
      381 LOADN                            R18 0
      382 CALL                             R16 2 1
      383 SETTABLEKS                       R16 R15 K43 ["width"]
      385 CALL                             R13 2 1
      386 SETTABLEKS                       R13 R12 K35 ["Confirm"]
      388 CALL                             R9 3 -1
      389 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["AssistantUI"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Gen3dCore"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Packages"]
       53 GETTABLEKS                       R8 R8 K14 ["_Index"]
       55 GETTABLEKS                       R8 R8 K10 ["AssistantUI"]
       57 GETTABLEKS                       R8 R8 K10 ["AssistantUI"]
       59 GETTABLEKS                       R8 R8 K15 ["Components"]
       61 GETTABLEKS                       R8 R8 K16 ["ImageSelection"]
       63 GETTABLEKS                       R8 R8 K17 ["ImageSelectionPicker"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R4 K18 ["Resources"]
       68 GETTABLEKS                       R8 R8 K19 ["Localization"]
       70 GETTABLEKS                       R8 R8 K20 ["Translator"]
       72 DUPCLOSURE                       R9 K21 [PROTO_0]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 DUPCLOSURE                       R10 K22 [PROTO_6]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R7
       82 RETURN                           R10 1
