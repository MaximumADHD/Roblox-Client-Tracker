PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["status"]
        2 JUMPIFNOTEQKS                    R3 K1 ["Downloading"] ; [+3]
        4 LOADK                            R2 K2 ["Generating"]
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R2 R0 K0 ["status"]
        8 DUPTABLE                         R3 K5 [{"status", "thumbnailContent", "errorMessage"}]
        9 SETTABLEKS                       R2 R3 K0 ["status"]
       11 GETTABLEKS                       R4 R0 K6 ["imageId"]
       13 SETTABLEKS                       R4 R3 K3 ["thumbnailContent"]
       15 GETTABLEKS                       R5 R0 K7 ["failureReason"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K8 ["Gen3dTypes"]
       20 GETTABLEKS                       R6 R6 K9 ["Enums"]
       22 GETTABLEKS                       R6 R6 K10 ["FailureReason"]
       24 GETTABLEKS                       R6 R6 K11 ["GenerationModerated"]
       26 JUMPIFNOTEQ                      R5 R6 ; [+8]
       28 GETUPVAL                         R4 1
       29 MOVE                             R5 R1
       30 LOADK                            R6 K12 ["Common"]
       31 LOADK                            R7 K11 ["GenerationModerated"]
       32 LOADK                            R8 K13 ["Generation was moderated."]
       33 CALL                             R4 4 1
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R4 R0 K4 ["errorMessage"]
       37 SETTABLEKS                       R4 R3 K4 ["errorMessage"]
       39 RETURN                           R3 1

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
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETTABLEKS                       R4 R0 K3 ["previewIndex"]
       14 GETTABLEKS                       R5 R0 K4 ["setPreviewIndex"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R8 0 1
       24 GETTABLEKS                       R9 R0 K6 ["canPick"]
       26 SETLIST                          R8 R9 1 [1]
       28 CALL                             R6 2 0
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K7 ["createNextOrder"]
       32 CALL                             R6 0 1
       33 JUMPIFEQKNIL                     R4 ; [+132]
       35 GETTABLEKS                       R8 R0 K8 ["slots"]
       37 GETTABLE                         R7 R8 R4
       38 JUMPIFNOT                        R7 ; [+3]
       39 GETTABLEKS                       R8 R7 K9 ["imageId"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R8
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K10 ["createElement"]
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K11 ["View"]
       49 DUPTABLE                         R11 K14 [{["tag"] = "col size-full-0 auto-y gap-medium"}]
       50 DUPTABLE                         R12 K17 [{"Preview", "Actions"}]
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K10 ["createElement"]
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R14 R14 K11 ["View"]
       57 DUPTABLE                         R15 K21 [{["tag"] = "size-full-0 radius-medium bg-surface-200", ["LayoutOrder"], ["Size"]}]
       58 MOVE                             R16 R6
       59 CALL                             R16 0 1
       60 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
       62 GETIMPORT                        R16 K24 [UDim2.new]
       64 LOADN                            R17 1
       65 LOADN                            R18 0
       66 LOADN                            R19 0
       67 LOADN                            R20 320
       68 CALL                             R16 4 1
       69 SETTABLEKS                       R16 R15 K20 ["Size"]
       71 DUPTABLE                         R16 K26 [{"Image"}]
       72 JUMPIFNOT                        R8 ; [+15]
       73 GETUPVAL                         R17 0
       74 GETTABLEKS                       R17 R17 K10 ["createElement"]
       76 GETUPVAL                         R18 3
       77 GETTABLEKS                       R18 R18 K25 ["Image"]
       79 DUPTABLE                         R19 K31 [{["tag"] = "size-full-full radius-medium", ["Image"], ["BackgroundTransparency"] = 1, ["ScaleType"]}]
       80 SETTABLEKS                       R8 R19 K25 ["Image"]
       82 GETIMPORT                        R20 K34 [Enum.ScaleType.Fit]
       84 SETTABLEKS                       R20 R19 K30 ["ScaleType"]
       86 CALL                             R17 2 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R17
       89 SETTABLEKS                       R17 R16 K25 ["Image"]
       91 CALL                             R13 3 1
       92 SETTABLEKS                       R13 R12 K15 ["Preview"]
       94 GETUPVAL                         R13 0
       95 GETTABLEKS                       R13 R13 K10 ["createElement"]
       97 GETUPVAL                         R14 3
       98 GETTABLEKS                       R14 R14 K11 ["View"]
      100 DUPTABLE                         R15 K36 [{["tag"] = "row size-full-0 auto-y gap-small", ["LayoutOrder"]}]
      101 MOVE                             R16 R6
      102 CALL                             R16 0 1
      103 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      105 DUPTABLE                         R16 K38 [{"Confirm"}]
      106 GETUPVAL                         R17 0
      107 GETTABLEKS                       R17 R17 K10 ["createElement"]
      109 GETUPVAL                         R18 3
      110 GETTABLEKS                       R18 R18 K39 ["Button"]
      112 DUPTABLE                         R19 K46 [{["LayoutOrder"] = 1, ["text"], ["onActivated"], ["isDisabled"], ["variant"], ["size"], ["width"]}]
      113 GETUPVAL                         R20 4
      114 MOVE                             R21 R1
      115 LOADK                            R22 K47 ["Common"]
      116 LOADK                            R23 K37 ["Confirm"]
      117 LOADK                            R24 K37 ["Confirm"]
      118 CALL                             R20 4 1
      119 SETTABLEKS                       R20 R19 K40 ["text"]
      121 NEWCLOSURE                       R20 P1
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R20 R19 K41 ["onActivated"]
      128 GETTABLEKS                       R21 R0 K6 ["canPick"]
      130 NOT                              R20 R21
      131 SETTABLEKS                       R20 R19 K42 ["isDisabled"]
      133 GETUPVAL                         R20 3
      134 GETTABLEKS                       R20 R20 K48 ["Enums"]
      136 GETTABLEKS                       R20 R20 K49 ["ButtonVariant"]
      138 GETTABLEKS                       R20 R20 K50 ["Emphasis"]
      140 SETTABLEKS                       R20 R19 K43 ["variant"]
      142 GETUPVAL                         R20 3
      143 GETTABLEKS                       R20 R20 K48 ["Enums"]
      145 GETTABLEKS                       R20 R20 K51 ["InputSize"]
      147 GETTABLEKS                       R20 R20 K52 ["Medium"]
      149 SETTABLEKS                       R20 R19 K44 ["size"]
      151 GETIMPORT                        R20 K54 [UDim.new]
      153 LOADN                            R21 1
      154 LOADN                            R22 0
      155 CALL                             R20 2 1
      156 SETTABLEKS                       R20 R19 K45 ["width"]
      158 CALL                             R17 2 1
      159 SETTABLEKS                       R17 R16 K37 ["Confirm"]
      161 CALL                             R13 3 1
      162 SETTABLEKS                       R13 R12 K16 ["Actions"]
      164 CALL                             R9 3 -1
      165 RETURN                           R9 -1
      166 NEWTABLE                         R7 0 0
      168 LOADB                            R8 1
      169 LOADN                            R11 1
      170 GETTABLEKS                       R12 R0 K8 ["slots"]
      172 LENGTH                           R9 R12
      173 LOADN                            R10 1
      174 FORNPREP                         R9
      175 GETUPVAL                         R14 5
      176 GETTABLEKS                       R16 R0 K8 ["slots"]
      178 GETTABLE                         R15 R16 R11
      179 MOVE                             R16 R1
      180 CALL                             R14 2 1
      181 FASTCALL2                        TABLE_INSERT R7 R14 ; [+4]
      183 MOVE                             R13 R7
      184 GETIMPORT                        R12 K57 [table.insert]
      186 CALL                             R12 2 0
      187 GETTABLEKS                       R13 R0 K8 ["slots"]
      189 GETTABLE                         R12 R13 R11
      190 GETTABLEKS                       R12 R12 K58 ["status"]
      192 JUMPIFEQKS                       R12 K59 ["Pending"] ; [+3]
      194 JUMPIFNOTEQKS                    R12 K60 ["Downloading"] ; [+2]
      196 LOADB                            R8 0
      197 FORNLOOP                         R9
      198 GETTABLEKS                       R10 R0 K6 ["canPick"]
      200 NOT                              R9 R10
      201 JUMPIF                           R9 ; [+4]
      202 JUMPIFEQKNIL                     R2 ; [+2]
      204 LOADB                            R9 0 +1
      205 LOADB                            R9 1
      206 GETUPVAL                         R10 0
      207 GETTABLEKS                       R10 R10 K10 ["createElement"]
      209 GETUPVAL                         R11 3
      210 GETTABLEKS                       R11 R11 K11 ["View"]
      212 DUPTABLE                         R12 K14 [{["tag"] = "col size-full-0 auto-y gap-medium"}]
      213 DUPTABLE                         R13 K63 [{"Header", "Picker", "Confirm"}]
      214 GETUPVAL                         R14 0
      215 GETTABLEKS                       R14 R14 K10 ["createElement"]
      217 GETUPVAL                         R15 3
      218 GETTABLEKS                       R15 R15 K11 ["View"]
      220 DUPTABLE                         R16 K65 [{["tag"] = "row align-y-center size-full-0 auto-y gap-small", ["LayoutOrder"]}]
      221 MOVE                             R17 R6
      222 CALL                             R17 0 1
      223 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      225 DUPTABLE                         R17 K69 [{"Title", "Spacer", "Reload"}]
      226 GETUPVAL                         R18 0
      227 GETTABLEKS                       R18 R18 K10 ["createElement"]
      229 GETUPVAL                         R19 3
      230 GETTABLEKS                       R19 R19 K70 ["Text"]
      232 DUPTABLE                         R20 K72 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-medium text-emphasis-primary"}]
      233 LOADK                            R23 K73 ["Gen3d"]
      234 LOADK                            R24 K74 ["ImageSelectionHeader"]
      235 NAMECALL                         R21 R1 K75 ["getText"]
      237 CALL                             R21 3 1
      238 SETTABLEKS                       R21 R20 K70 ["Text"]
      240 CALL                             R18 2 1
      241 SETTABLEKS                       R18 R17 K66 ["Title"]
      243 GETUPVAL                         R18 0
      244 GETTABLEKS                       R18 R18 K10 ["createElement"]
      246 GETUPVAL                         R19 3
      247 GETTABLEKS                       R19 R19 K11 ["View"]
      249 DUPTABLE                         R20 K78 [{["LayoutOrder"] = 2, ["tag"] = "fill auto-y"}]
      250 CALL                             R18 2 1
      251 SETTABLEKS                       R18 R17 K67 ["Spacer"]
      253 GETUPVAL                         R18 0
      254 GETTABLEKS                       R18 R18 K10 ["createElement"]
      256 GETUPVAL                         R19 3
      257 GETTABLEKS                       R19 R19 K79 ["IconButton"]
      259 DUPTABLE                         R20 K82 [{["LayoutOrder"] = 3, ["icon"], ["onActivated"], ["isDisabled"], ["size"], ["variant"]}]
      260 DUPTABLE                         R21 K84 [{"name"}]
      261 GETUPVAL                         R22 3
      262 GETTABLEKS                       R22 R22 K48 ["Enums"]
      264 GETTABLEKS                       R22 R22 K85 ["IconName"]
      266 GETTABLEKS                       R22 R22 K86 ["TwoArrowsSpinClockwise"]
      268 SETTABLEKS                       R22 R21 K83 ["name"]
      270 SETTABLEKS                       R21 R20 K81 ["icon"]
      272 GETTABLEKS                       R21 R0 K87 ["onReload"]
      274 SETTABLEKS                       R21 R20 K41 ["onActivated"]
      276 NOT                              R21 R8
      277 SETTABLEKS                       R21 R20 K42 ["isDisabled"]
      279 GETUPVAL                         R21 3
      280 GETTABLEKS                       R21 R21 K48 ["Enums"]
      282 GETTABLEKS                       R21 R21 K51 ["InputSize"]
      284 GETTABLEKS                       R21 R21 K88 ["Small"]
      286 SETTABLEKS                       R21 R20 K44 ["size"]
      288 GETUPVAL                         R21 3
      289 GETTABLEKS                       R21 R21 K48 ["Enums"]
      291 GETTABLEKS                       R21 R21 K49 ["ButtonVariant"]
      293 GETTABLEKS                       R21 R21 K89 ["Utility"]
      295 SETTABLEKS                       R21 R20 K43 ["variant"]
      297 CALL                             R18 2 1
      298 SETTABLEKS                       R18 R17 K68 ["Reload"]
      300 CALL                             R14 3 1
      301 SETTABLEKS                       R14 R13 K61 ["Header"]
      303 GETUPVAL                         R14 0
      304 GETTABLEKS                       R14 R14 K10 ["createElement"]
      306 GETUPVAL                         R15 3
      307 GETTABLEKS                       R15 R15 K11 ["View"]
      309 DUPTABLE                         R16 K91 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      310 MOVE                             R17 R6
      311 CALL                             R17 0 1
      312 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      314 DUPTABLE                         R17 K93 [{"Body"}]
      315 GETUPVAL                         R18 0
      316 GETTABLEKS                       R18 R18 K10 ["createElement"]
      318 GETUPVAL                         R19 6
      319 DUPTABLE                         R20 K100 [{["slots"], ["selectedIndex"], ["headerText"] = "", ["defaultFailedText"], ["onSelect"], ["onPreview"]}]
      320 SETTABLEKS                       R7 R20 K8 ["slots"]
      322 SETTABLEKS                       R2 R20 K94 ["selectedIndex"]
      324 GETUPVAL                         R21 4
      325 MOVE                             R22 R1
      326 LOADK                            R23 K73 ["Gen3d"]
      327 LOADK                            R24 K101 ["ImageSelectionSlotFailed"]
      328 LOADK                            R25 K102 ["Failed to generate"]
      329 CALL                             R21 4 1
      330 SETTABLEKS                       R21 R20 K97 ["defaultFailedText"]
      332 NEWCLOSURE                       R21 P2
      333 CAPTURE                          VAL R0
      334 CAPTURE                          VAL R3
      335 SETTABLEKS                       R21 R20 K98 ["onSelect"]
      337 NEWCLOSURE                       R21 P3
      338 CAPTURE                          VAL R5
      339 SETTABLEKS                       R21 R20 K99 ["onPreview"]
      341 CALL                             R18 2 1
      342 SETTABLEKS                       R18 R17 K92 ["Body"]
      344 CALL                             R14 3 1
      345 SETTABLEKS                       R14 R13 K62 ["Picker"]
      347 GETUPVAL                         R14 0
      348 GETTABLEKS                       R14 R14 K10 ["createElement"]
      350 GETUPVAL                         R15 3
      351 GETTABLEKS                       R15 R15 K39 ["Button"]
      353 DUPTABLE                         R16 K103 [{"LayoutOrder", "text", "onActivated", "isDisabled", "variant", "size", "width"}]
      354 MOVE                             R17 R6
      355 CALL                             R17 0 1
      356 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      358 LOADK                            R19 K47 ["Common"]
      359 LOADK                            R20 K37 ["Confirm"]
      360 NAMECALL                         R17 R1 K75 ["getText"]
      362 CALL                             R17 3 1
      363 SETTABLEKS                       R17 R16 K40 ["text"]
      365 NEWCLOSURE                       R17 P4
      366 CAPTURE                          VAL R9
      367 CAPTURE                          VAL R2
      368 CAPTURE                          VAL R3
      369 CAPTURE                          VAL R0
      370 SETTABLEKS                       R17 R16 K41 ["onActivated"]
      372 SETTABLEKS                       R9 R16 K42 ["isDisabled"]
      374 GETUPVAL                         R17 3
      375 GETTABLEKS                       R17 R17 K48 ["Enums"]
      377 GETTABLEKS                       R17 R17 K49 ["ButtonVariant"]
      379 GETTABLEKS                       R17 R17 K50 ["Emphasis"]
      381 SETTABLEKS                       R17 R16 K43 ["variant"]
      383 GETUPVAL                         R17 3
      384 GETTABLEKS                       R17 R17 K48 ["Enums"]
      386 GETTABLEKS                       R17 R17 K51 ["InputSize"]
      388 GETTABLEKS                       R17 R17 K52 ["Medium"]
      390 SETTABLEKS                       R17 R16 K44 ["size"]
      392 GETIMPORT                        R17 K54 [UDim.new]
      394 LOADN                            R18 1
      395 LOADN                            R19 0
      396 CALL                             R17 2 1
      397 SETTABLEKS                       R17 R16 K45 ["width"]
      399 CALL                             R14 2 1
      400 SETTABLEKS                       R14 R13 K37 ["Confirm"]
      402 CALL                             R10 3 -1
      403 RETURN                           R10 -1

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
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R4 R4 K12 ["Localization"]
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["Gen3dCore"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Util"]
       59 GETTABLEKS                       R8 R8 K17 ["getLocalizedTextOrDefault"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K14 ["Src"]
       66 GETTABLEKS                       R9 R9 K18 ["Components"]
       68 GETTABLEKS                       R9 R9 K19 ["ImageSelection"]
       70 GETTABLEKS                       R9 R9 K20 ["ImageSelectionPicker"]
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K21 [PROTO_0]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R10 K22 [PROTO_6]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 RETURN                           R10 1
