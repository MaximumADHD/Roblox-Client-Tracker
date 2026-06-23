PROTO_0:
        0 NEWTABLE                         R0 0 3
        2 LOADK                            R1 K0 ["jpg"]
        3 LOADK                            R2 K1 ["jpeg"]
        4 LOADK                            R3 K2 ["png"]
        5 SETLIST                          R0 R1 3 [1]
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["PromptImportFiles"]
       11 CALL                             R1 2 1
       12 NEWTABLE                         R2 0 0
       14 NEWTABLE                         R3 0 0
       16 JUMPIFNOT                        R1 ; [+43]
       17 LENGTH                           R4 R1
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+40]
       21 GETIMPORT                        R4 K5 [ipairs]
       23 MOVE                             R5 R1
       24 CALL                             R4 1 3
       25 FORGPREP_INEXT                   R4
       26 GETTABLEKS                       R9 R8 K6 ["Size"]
       28 GETUPVAL                         R10 1
       29 JUMPIFNOTLT                      R10 R9 ; [+10]
       31 GETTABLEKS                       R11 R8 K7 ["Name"]
       33 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       35 MOVE                             R10 R2
       36 GETIMPORT                        R9 K10 [table.insert]
       38 CALL                             R9 2 0
       39 JUMP                             ; [+7]
       40 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       42 MOVE                             R10 R3
       43 MOVE                             R11 R8
       44 GETIMPORT                        R9 K10 [table.insert]
       46 CALL                             R9 2 0
       47 FORGLOOP                         R4 2 [inext] ; [-22]
       49 GETIMPORT                        R4 K12 [next]
       51 MOVE                             R5 R2
       52 CALL                             R4 1 1
       53 JUMPIFEQKNIL                     R4 ; [+5]
       55 GETIMPORT                        R4 K14 [print]
       57 LOADK                            R5 K15 ["thumbnail rejected"]
       58 CALL                             R4 1 0
       59 RETURN                           R3 1
       60 LOADNIL                          R4
       61 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+40]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 1
       13 GETIMPORT                        R3 K1 [pairs]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 3
       17 FORGPREP_NEXT                    R3
       18 NAMECALL                         R8 R7 K2 ["GetTemporaryId"]
       20 CALL                             R8 1 1
       21 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       23 MOVE                             R10 R2
       24 MOVE                             R11 R8
       25 GETIMPORT                        R9 K5 [table.insert]
       27 CALL                             R9 2 0
       28 DUPTABLE                         R9 K8 [{"asset", "tempId"}]
       29 SETTABLEKS                       R7 R9 K6 ["asset"]
       31 SETTABLEKS                       R8 R9 K7 ["tempId"]
       33 SETTABLE                         R9 R1 R8
       34 FORGLOOP                         R3 2 ; [-17]
       36 SETUPVAL                         R1 2
       37 SETUPVAL                         R2 4
       38 GETIMPORT                        R3 K10 [print]
       40 LOADK                            R4 K11 ["thumbnail state now is:"]
       41 GETUPVAL                         R5 2
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["thumbnails changed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["thumbnail order changed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKNIL                     R4 ; [+3]
        2 MOVE                             R7 R4
        3 JUMP                             ; [+1]
        4 LOADB                            R7 0
        5 DUPTABLE                         R8 K7 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
        6 SETTABLEKS                       R0 R8 K0 ["id"]
        8 JUMPIFEQKNIL                     R1 ; [+3]
       10 MOVE                             R9 R1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R9
       13 SETTABLEKS                       R9 R8 K1 ["altText"]
       15 JUMPIFEQKNIL                     R2 ; [+3]
       17 MOVE                             R9 R2
       18 JUMP                             ; [+1]
       19 LOADB                            R9 1
       20 SETTABLEKS                       R9 R8 K2 ["approved"]
       22 JUMPIFEQKNIL                     R3 ; [+3]
       24 MOVE                             R9 R3
       25 JUMP                             ; [+1]
       26 MOVE                             R9 R0
       27 SETTABLEKS                       R9 R8 K3 ["imageId"]
       29 SETTABLEKS                       R7 R8 K4 ["isModerated"]
       31 JUMPIFEQKNIL                     R5 ; [+3]
       33 MOVE                             R9 R5
       34 JUMP                             ; [+1]
       35 LOADNIL                          R9
       36 SETTABLEKS                       R9 R8 K5 ["videoHash"]
       38 JUMPIFEQKNIL                     R6 ; [+3]
       40 MOVE                             R9 R6
       41 JUMP                             ; [+1]
       42 LOADNIL                          R9
       43 SETTABLEKS                       R9 R8 K6 ["videoTitle"]
       45 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["LayoutOrderIterator"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["getFileMaxSizeBytesOrDefault"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K11 ["Dash"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["append"]
       39 GETTABLEKS                       R7 R5 K13 ["join"]
       41 GETTABLEKS                       R8 R5 K14 ["keys"]
       43 GETIMPORT                        R9 K16 [game]
       45 LOADK                            R11 K17 ["StudioService"]
       46 NAMECALL                         R9 R9 K18 ["GetService"]
       48 CALL                             R9 2 1
       49 MOVE                             R10 R4
       50 CALL                             R10 0 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R12 R0 K2 ["UI"]
       55 GETTABLEKS                       R12 R12 K19 ["Components"]
       57 GETTABLEKS                       R12 R12 K20 ["MultiImagePicker"]
       59 CALL                             R11 1 1
       60 DUPCLOSURE                       R12 K21 [PROTO_0]
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R10
       63 NEWTABLE                         R13 0 0
       65 NEWTABLE                         R14 0 0
       67 NEWCLOSURE                       R15 P1
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R7
       70 CAPTURE                          REF R13
       71 CAPTURE                          VAL R6
       72 CAPTURE                          REF R14
       73 DUPCLOSURE                       R16 K22 [PROTO_2]
       74 DUPCLOSURE                       R17 K23 [PROTO_3]
       75 DUPCLOSURE                       R18 K24 [PROTO_4]
       76 NEWTABLE                         R19 0 5
       78 DUPTABLE                         R20 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
       79 LOADK                            R21 K33 [11457774193]
       80 SETTABLEKS                       R21 R20 K25 ["id"]
       82 LOADNIL                          R21
       83 SETTABLEKS                       R21 R20 K26 ["altText"]
       85 LOADB                            R21 1
       86 SETTABLEKS                       R21 R20 K27 ["approved"]
       88 LOADK                            R21 K33 [11457774193]
       89 SETTABLEKS                       R21 R20 K28 ["imageId"]
       91 LOADB                            R21 0
       92 SETTABLEKS                       R21 R20 K29 ["isModerated"]
       94 LOADNIL                          R21
       95 SETTABLEKS                       R21 R20 K30 ["videoHash"]
       97 LOADNIL                          R21
       98 SETTABLEKS                       R21 R20 K31 ["videoTitle"]
      100 DUPTABLE                         R21 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      101 LOADK                            R22 K34 [10979850405]
      102 SETTABLEKS                       R22 R21 K25 ["id"]
      104 LOADNIL                          R22
      105 SETTABLEKS                       R22 R21 K26 ["altText"]
      107 LOADB                            R22 1
      108 SETTABLEKS                       R22 R21 K27 ["approved"]
      110 LOADK                            R22 K34 [10979850405]
      111 SETTABLEKS                       R22 R21 K28 ["imageId"]
      113 LOADB                            R22 0
      114 SETTABLEKS                       R22 R21 K29 ["isModerated"]
      116 LOADNIL                          R22
      117 SETTABLEKS                       R22 R21 K30 ["videoHash"]
      119 LOADNIL                          R22
      120 SETTABLEKS                       R22 R21 K31 ["videoTitle"]
      122 DUPTABLE                         R22 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      123 LOADK                            R23 K35 [11114178824]
      124 SETTABLEKS                       R23 R22 K25 ["id"]
      126 LOADNIL                          R23
      127 SETTABLEKS                       R23 R22 K26 ["altText"]
      129 LOADB                            R23 1
      130 SETTABLEKS                       R23 R22 K27 ["approved"]
      132 LOADK                            R23 K35 [11114178824]
      133 SETTABLEKS                       R23 R22 K28 ["imageId"]
      135 LOADB                            R23 0
      136 SETTABLEKS                       R23 R22 K29 ["isModerated"]
      138 LOADNIL                          R23
      139 SETTABLEKS                       R23 R22 K30 ["videoHash"]
      141 LOADNIL                          R23
      142 SETTABLEKS                       R23 R22 K31 ["videoTitle"]
      144 DUPTABLE                         R23 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      145 LOADK                            R24 K36 [11187570100]
      146 SETTABLEKS                       R24 R23 K25 ["id"]
      148 LOADNIL                          R24
      149 SETTABLEKS                       R24 R23 K26 ["altText"]
      151 LOADB                            R24 1
      152 SETTABLEKS                       R24 R23 K27 ["approved"]
      154 LOADK                            R24 K36 [11187570100]
      155 SETTABLEKS                       R24 R23 K28 ["imageId"]
      157 LOADB                            R24 0
      158 SETTABLEKS                       R24 R23 K29 ["isModerated"]
      160 LOADNIL                          R24
      161 SETTABLEKS                       R24 R23 K30 ["videoHash"]
      163 LOADNIL                          R24
      164 SETTABLEKS                       R24 R23 K31 ["videoTitle"]
      166 DUPTABLE                         R24 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      167 LOADK                            R25 K37 [11260544390]
      168 SETTABLEKS                       R25 R24 K25 ["id"]
      170 LOADNIL                          R25
      171 SETTABLEKS                       R25 R24 K26 ["altText"]
      173 LOADB                            R25 1
      174 SETTABLEKS                       R25 R24 K27 ["approved"]
      176 LOADK                            R25 K37 [11260544390]
      177 SETTABLEKS                       R25 R24 K28 ["imageId"]
      179 LOADB                            R25 0
      180 SETTABLEKS                       R25 R24 K29 ["isModerated"]
      182 LOADNIL                          R25
      183 SETTABLEKS                       R25 R24 K30 ["videoHash"]
      185 LOADNIL                          R25
      186 SETTABLEKS                       R25 R24 K31 ["videoTitle"]
      188 SETLIST                          R19 R20 5 [1]
      190 MOVE                             R20 R8
      191 MOVE                             R21 R19
      192 CALL                             R20 1 1
      193 NEWTABLE                         R21 0 2
      195 DUPTABLE                         R22 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      196 LOADN                            R23 1
      197 SETTABLEKS                       R23 R22 K25 ["id"]
      199 LOADNIL                          R23
      200 SETTABLEKS                       R23 R22 K26 ["altText"]
      202 LOADB                            R23 1
      203 SETTABLEKS                       R23 R22 K27 ["approved"]
      205 LOADN                            R23 1
      206 SETTABLEKS                       R23 R22 K28 ["imageId"]
      208 LOADB                            R23 0
      209 SETTABLEKS                       R23 R22 K29 ["isModerated"]
      211 LOADK                            R23 K38 ["wBYjsROAy5w"]
      212 SETTABLEKS                       R23 R22 K30 ["videoHash"]
      214 LOADK                            R23 K39 ["RDC 2022 Intro"]
      215 SETTABLEKS                       R23 R22 K31 ["videoTitle"]
      217 DUPTABLE                         R23 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      218 LOADN                            R24 2
      219 SETTABLEKS                       R24 R23 K25 ["id"]
      221 LOADNIL                          R24
      222 SETTABLEKS                       R24 R23 K26 ["altText"]
      224 LOADB                            R24 0
      225 SETTABLEKS                       R24 R23 K27 ["approved"]
      227 LOADN                            R24 2
      228 SETTABLEKS                       R24 R23 K28 ["imageId"]
      230 LOADB                            R24 0
      231 SETTABLEKS                       R24 R23 K29 ["isModerated"]
      233 LOADK                            R24 K40 ["_EPelwsaF9E"]
      234 SETTABLEKS                       R24 R23 K30 ["videoHash"]
      236 LOADK                            R24 K41 ["Roblox 2021 Cinematic"]
      237 SETTABLEKS                       R24 R23 K31 ["videoTitle"]
      239 SETLIST                          R21 R22 2 [1]
      241 MOVE                             R22 R8
      242 MOVE                             R23 R21
      243 CALL                             R22 1 1
      244 NEWTABLE                         R23 0 4
      246 DUPTABLE                         R24 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      247 LOADK                            R25 K33 [11457774193]
      248 SETTABLEKS                       R25 R24 K25 ["id"]
      250 LOADNIL                          R25
      251 SETTABLEKS                       R25 R24 K26 ["altText"]
      253 LOADB                            R25 1
      254 SETTABLEKS                       R25 R24 K27 ["approved"]
      256 LOADK                            R25 K33 [11457774193]
      257 SETTABLEKS                       R25 R24 K28 ["imageId"]
      259 LOADB                            R25 1
      260 SETTABLEKS                       R25 R24 K29 ["isModerated"]
      262 LOADNIL                          R25
      263 SETTABLEKS                       R25 R24 K30 ["videoHash"]
      265 LOADNIL                          R25
      266 SETTABLEKS                       R25 R24 K31 ["videoTitle"]
      268 DUPTABLE                         R25 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      269 LOADK                            R26 K35 [11114178824]
      270 SETTABLEKS                       R26 R25 K25 ["id"]
      272 LOADNIL                          R26
      273 SETTABLEKS                       R26 R25 K26 ["altText"]
      275 LOADB                            R26 1
      276 SETTABLEKS                       R26 R25 K27 ["approved"]
      278 LOADK                            R26 K35 [11114178824]
      279 SETTABLEKS                       R26 R25 K28 ["imageId"]
      281 LOADB                            R26 0
      282 SETTABLEKS                       R26 R25 K29 ["isModerated"]
      284 LOADNIL                          R26
      285 SETTABLEKS                       R26 R25 K30 ["videoHash"]
      287 LOADNIL                          R26
      288 SETTABLEKS                       R26 R25 K31 ["videoTitle"]
      290 DUPTABLE                         R26 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      291 LOADK                            R27 K37 [11260544390]
      292 SETTABLEKS                       R27 R26 K25 ["id"]
      294 LOADNIL                          R27
      295 SETTABLEKS                       R27 R26 K26 ["altText"]
      297 LOADB                            R27 0
      298 SETTABLEKS                       R27 R26 K27 ["approved"]
      300 LOADK                            R27 K37 [11260544390]
      301 SETTABLEKS                       R27 R26 K28 ["imageId"]
      303 LOADB                            R27 1
      304 SETTABLEKS                       R27 R26 K29 ["isModerated"]
      306 LOADNIL                          R27
      307 SETTABLEKS                       R27 R26 K30 ["videoHash"]
      309 LOADNIL                          R27
      310 SETTABLEKS                       R27 R26 K31 ["videoTitle"]
      312 DUPTABLE                         R27 K32 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
      313 LOADK                            R28 K42 [11647696560]
      314 SETTABLEKS                       R28 R27 K25 ["id"]
      316 LOADNIL                          R28
      317 SETTABLEKS                       R28 R27 K26 ["altText"]
      319 LOADB                            R28 0
      320 SETTABLEKS                       R28 R27 K27 ["approved"]
      322 LOADK                            R28 K42 [11647696560]
      323 SETTABLEKS                       R28 R27 K28 ["imageId"]
      325 LOADB                            R28 0
      326 SETTABLEKS                       R28 R27 K29 ["isModerated"]
      328 LOADNIL                          R28
      329 SETTABLEKS                       R28 R27 K30 ["videoHash"]
      331 LOADNIL                          R28
      332 SETTABLEKS                       R28 R27 K31 ["videoTitle"]
      334 SETLIST                          R23 R24 4 [1]
      336 MOVE                             R24 R8
      337 MOVE                             R25 R23
      338 CALL                             R24 1 1
      339 GETTABLEKS                       R25 R3 K43 ["new"]
      341 CALL                             R25 0 1
      342 DUPTABLE                         R26 K45 [{"stories"}]
      343 NEWTABLE                         R27 0 8
      345 DUPTABLE                         R28 K48 [{"name", "story"}]
      346 LOADK                            R29 K49 ["Empty MultiImagePicker"]
      347 SETTABLEKS                       R29 R28 K46 ["name"]
      349 GETTABLEKS                       R29 R1 K50 ["createElement"]
      351 MOVE                             R30 R11
      352 DUPTABLE                         R31 K62 [{"AddThumbnail", "AltTextError", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Notes", "Order", "Thumbnails", "ThumbnailsChanged", "ThumbnailOrderChanged"}]
      353 SETTABLEKS                       R15 R31 K51 ["AddThumbnail"]
      355 DUPTABLE                         R32 K63 [{"ErrorMessage"}]
      356 LOADK                            R33 K64 ["Alt text error"]
      357 SETTABLEKS                       R33 R32 K54 ["ErrorMessage"]
      359 SETTABLEKS                       R32 R31 K52 ["AltTextError"]
      361 LOADB                            R32 1
      362 SETTABLEKS                       R32 R31 K53 ["Enabled"]
      364 LOADNIL                          R32
      365 SETTABLEKS                       R32 R31 K54 ["ErrorMessage"]
      367 LOADB                            R32 1
      368 SETTABLEKS                       R32 R31 K55 ["IsVideoAllowed"]
      370 NAMECALL                         R32 R25 K65 ["getNextOrder"]
      372 CALL                             R32 1 1
      373 SETTABLEKS                       R32 R31 K56 ["LayoutOrder"]
      375 LOADNIL                          R32
      376 SETTABLEKS                       R32 R31 K57 ["Notes"]
      378 SETTABLEKS                       R14 R31 K58 ["Order"]
      380 SETTABLEKS                       R13 R31 K59 ["Thumbnails"]
      382 SETTABLEKS                       R16 R31 K60 ["ThumbnailsChanged"]
      384 SETTABLEKS                       R17 R31 K61 ["ThumbnailOrderChanged"]
      386 CALL                             R29 2 1
      387 SETTABLEKS                       R29 R28 K47 ["story"]
      389 DUPTABLE                         R29 K48 [{"name", "story"}]
      390 LOADK                            R30 K66 ["MultiImagePicker with title hidden"]
      391 SETTABLEKS                       R30 R29 K46 ["name"]
      393 GETTABLEKS                       R30 R1 K50 ["createElement"]
      395 MOVE                             R31 R11
      396 DUPTABLE                         R32 K68 [{"AddThumbnail", "AltTextError", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Notes", "Order", "ShowTitle", "Thumbnails", "ThumbnailsChanged", "ThumbnailOrderChanged"}]
      397 SETTABLEKS                       R15 R32 K51 ["AddThumbnail"]
      399 DUPTABLE                         R33 K63 [{"ErrorMessage"}]
      400 LOADK                            R34 K64 ["Alt text error"]
      401 SETTABLEKS                       R34 R33 K54 ["ErrorMessage"]
      403 SETTABLEKS                       R33 R32 K52 ["AltTextError"]
      405 LOADB                            R33 1
      406 SETTABLEKS                       R33 R32 K53 ["Enabled"]
      408 LOADNIL                          R33
      409 SETTABLEKS                       R33 R32 K54 ["ErrorMessage"]
      411 LOADB                            R33 1
      412 SETTABLEKS                       R33 R32 K55 ["IsVideoAllowed"]
      414 NAMECALL                         R33 R25 K65 ["getNextOrder"]
      416 CALL                             R33 1 1
      417 SETTABLEKS                       R33 R32 K56 ["LayoutOrder"]
      419 LOADNIL                          R33
      420 SETTABLEKS                       R33 R32 K57 ["Notes"]
      422 SETTABLEKS                       R14 R32 K58 ["Order"]
      424 LOADB                            R33 0
      425 SETTABLEKS                       R33 R32 K67 ["ShowTitle"]
      427 SETTABLEKS                       R13 R32 K59 ["Thumbnails"]
      429 SETTABLEKS                       R16 R32 K60 ["ThumbnailsChanged"]
      431 SETTABLEKS                       R17 R32 K61 ["ThumbnailOrderChanged"]
      433 CALL                             R30 2 1
      434 SETTABLEKS                       R30 R29 K47 ["story"]
      436 DUPTABLE                         R30 K48 [{"name", "story"}]
      437 LOADK                            R31 K69 ["MultiImagePicker with smaller thumbnails"]
      438 SETTABLEKS                       R31 R30 K46 ["name"]
      440 GETTABLEKS                       R31 R1 K50 ["createElement"]
      442 MOVE                             R32 R11
      443 DUPTABLE                         R33 K71 [{"AddThumbnail", "AltTextError", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Notes", "Order", "ThumbnailSize", "Thumbnails", "ThumbnailsChanged", "ThumbnailOrderChanged"}]
      444 SETTABLEKS                       R15 R33 K51 ["AddThumbnail"]
      446 DUPTABLE                         R34 K63 [{"ErrorMessage"}]
      447 LOADK                            R35 K64 ["Alt text error"]
      448 SETTABLEKS                       R35 R34 K54 ["ErrorMessage"]
      450 SETTABLEKS                       R34 R33 K52 ["AltTextError"]
      452 LOADB                            R34 1
      453 SETTABLEKS                       R34 R33 K53 ["Enabled"]
      455 LOADNIL                          R34
      456 SETTABLEKS                       R34 R33 K54 ["ErrorMessage"]
      458 LOADB                            R34 1
      459 SETTABLEKS                       R34 R33 K55 ["IsVideoAllowed"]
      461 NAMECALL                         R34 R25 K65 ["getNextOrder"]
      463 CALL                             R34 1 1
      464 SETTABLEKS                       R34 R33 K56 ["LayoutOrder"]
      466 LOADNIL                          R34
      467 SETTABLEKS                       R34 R33 K57 ["Notes"]
      469 SETTABLEKS                       R14 R33 K58 ["Order"]
      471 GETIMPORT                        R34 K73 [UDim2.new]
      473 LOADN                            R35 0
      474 LOADN                            R36 185
      475 LOADN                            R37 0
      476 LOADN                            R38 104
      477 CALL                             R34 4 1
      478 SETTABLEKS                       R34 R33 K70 ["ThumbnailSize"]
      480 SETTABLEKS                       R13 R33 K59 ["Thumbnails"]
      482 SETTABLEKS                       R16 R33 K60 ["ThumbnailsChanged"]
      484 SETTABLEKS                       R17 R33 K61 ["ThumbnailOrderChanged"]
      486 CALL                             R31 2 1
      487 SETTABLEKS                       R31 R30 K47 ["story"]
      489 DUPTABLE                         R31 K48 [{"name", "story"}]
      490 LOADK                            R32 K74 ["Five Thumbnails in MultiImagePicker (Nonupdateable)"]
      491 SETTABLEKS                       R32 R31 K46 ["name"]
      493 GETTABLEKS                       R32 R1 K50 ["createElement"]
      495 MOVE                             R33 R11
      496 DUPTABLE                         R34 K62 [{"AddThumbnail", "AltTextError", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Notes", "Order", "Thumbnails", "ThumbnailsChanged", "ThumbnailOrderChanged"}]
      497 SETTABLEKS                       R15 R34 K51 ["AddThumbnail"]
      499 DUPTABLE                         R35 K76 [{"ThumbnailId", "ErrorMessage"}]
      500 LOADNIL                          R36
      501 SETTABLEKS                       R36 R35 K75 ["ThumbnailId"]
      503 LOADK                            R36 K64 ["Alt text error"]
      504 SETTABLEKS                       R36 R35 K54 ["ErrorMessage"]
      506 SETTABLEKS                       R35 R34 K52 ["AltTextError"]
      508 LOADB                            R35 1
      509 SETTABLEKS                       R35 R34 K53 ["Enabled"]
      511 LOADNIL                          R35
      512 SETTABLEKS                       R35 R34 K54 ["ErrorMessage"]
      514 LOADB                            R35 1
      515 SETTABLEKS                       R35 R34 K55 ["IsVideoAllowed"]
      517 NAMECALL                         R35 R25 K65 ["getNextOrder"]
      519 CALL                             R35 1 1
      520 SETTABLEKS                       R35 R34 K56 ["LayoutOrder"]
      522 LOADNIL                          R35
      523 SETTABLEKS                       R35 R34 K57 ["Notes"]
      525 SETTABLEKS                       R20 R34 K58 ["Order"]
      527 SETTABLEKS                       R19 R34 K59 ["Thumbnails"]
      529 SETTABLEKS                       R16 R34 K60 ["ThumbnailsChanged"]
      531 SETTABLEKS                       R17 R34 K61 ["ThumbnailOrderChanged"]
      533 CALL                             R32 2 1
      534 SETTABLEKS                       R32 R31 K47 ["story"]
      536 DUPTABLE                         R32 K48 [{"name", "story"}]
      537 LOADK                            R33 K77 ["Thumbnails with alt text hidden in MultiImagePicker (Nonupdateable)"]
      538 SETTABLEKS                       R33 R32 K46 ["name"]
      540 GETTABLEKS                       R33 R1 K50 ["createElement"]
      542 MOVE                             R34 R11
      543 DUPTABLE                         R35 K79 [{"AddThumbnail", "AltTextError", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Notes", "Order", "ShowAltText", "Thumbnails", "ThumbnailsChanged", "ThumbnailOrderChanged"}]
      544 SETTABLEKS                       R15 R35 K51 ["AddThumbnail"]
      546 DUPTABLE                         R36 K76 [{"ThumbnailId", "ErrorMessage"}]
      547 LOADNIL                          R37
      548 SETTABLEKS                       R37 R36 K75 ["ThumbnailId"]
      550 LOADK                            R37 K64 ["Alt text error"]
      551 SETTABLEKS                       R37 R36 K54 ["ErrorMessage"]
      553 SETTABLEKS                       R36 R35 K52 ["AltTextError"]
      555 LOADB                            R36 1
      556 SETTABLEKS                       R36 R35 K53 ["Enabled"]
      558 LOADNIL                          R36
      559 SETTABLEKS                       R36 R35 K54 ["ErrorMessage"]
      561 LOADB                            R36 1
      562 SETTABLEKS                       R36 R35 K55 ["IsVideoAllowed"]
      564 NAMECALL                         R36 R25 K65 ["getNextOrder"]
      566 CALL                             R36 1 1
      567 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
      569 LOADNIL                          R36
      570 SETTABLEKS                       R36 R35 K57 ["Notes"]
      572 SETTABLEKS                       R20 R35 K58 ["Order"]
      574 LOADB                            R36 0
      575 SETTABLEKS                       R36 R35 K78 ["ShowAltText"]
      577 SETTABLEKS                       R19 R35 K59 ["Thumbnails"]
      579 SETTABLEKS                       R16 R35 K60 ["ThumbnailsChanged"]
      581 SETTABLEKS                       R17 R35 K61 ["ThumbnailOrderChanged"]
      583 CALL                             R33 2 1
      584 SETTABLEKS                       R33 R32 K47 ["story"]
      586 DUPTABLE                         R33 K48 [{"name", "story"}]
      587 LOADK                            R34 K80 ["Video thumbnails in MultiImagePicker (Nonupdateable) with IsVideoAllowed = false"]
      588 SETTABLEKS                       R34 R33 K46 ["name"]
      590 GETTABLEKS                       R34 R1 K50 ["createElement"]
      592 MOVE                             R35 R11
      593 DUPTABLE                         R36 K62 [{"AddThumbnail", "AltTextError", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Notes", "Order", "Thumbnails", "ThumbnailsChanged", "ThumbnailOrderChanged"}]
      594 SETTABLEKS                       R15 R36 K51 ["AddThumbnail"]
      596 DUPTABLE                         R37 K76 [{"ThumbnailId", "ErrorMessage"}]
      597 LOADNIL                          R38
      598 SETTABLEKS                       R38 R37 K75 ["ThumbnailId"]
      600 LOADK                            R38 K64 ["Alt text error"]
      601 SETTABLEKS                       R38 R37 K54 ["ErrorMessage"]
      603 SETTABLEKS                       R37 R36 K52 ["AltTextError"]
      605 LOADB                            R37 1
      606 SETTABLEKS                       R37 R36 K53 ["Enabled"]
      608 LOADNIL                          R37
      609 SETTABLEKS                       R37 R36 K54 ["ErrorMessage"]
      611 LOADB                            R37 0
      612 SETTABLEKS                       R37 R36 K55 ["IsVideoAllowed"]
      614 NAMECALL                         R37 R25 K65 ["getNextOrder"]
      616 CALL                             R37 1 1
      617 SETTABLEKS                       R37 R36 K56 ["LayoutOrder"]
      619 LOADNIL                          R37
      620 SETTABLEKS                       R37 R36 K57 ["Notes"]
      622 SETTABLEKS                       R22 R36 K58 ["Order"]
      624 SETTABLEKS                       R21 R36 K59 ["Thumbnails"]
      626 SETTABLEKS                       R16 R36 K60 ["ThumbnailsChanged"]
      628 SETTABLEKS                       R17 R36 K61 ["ThumbnailOrderChanged"]
      630 CALL                             R34 2 1
      631 SETTABLEKS                       R34 R33 K47 ["story"]
      633 DUPTABLE                         R34 K48 [{"name", "story"}]
      634 LOADK                            R35 K81 ["Video thumbnails in MultiImagePicker (Nonupdateable) with IsVideoAllowed = true"]
      635 SETTABLEKS                       R35 R34 K46 ["name"]
      637 GETTABLEKS                       R35 R1 K50 ["createElement"]
      639 MOVE                             R36 R11
      640 DUPTABLE                         R37 K62 [{"AddThumbnail", "AltTextError", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Notes", "Order", "Thumbnails", "ThumbnailsChanged", "ThumbnailOrderChanged"}]
      641 SETTABLEKS                       R15 R37 K51 ["AddThumbnail"]
      643 DUPTABLE                         R38 K76 [{"ThumbnailId", "ErrorMessage"}]
      644 LOADNIL                          R39
      645 SETTABLEKS                       R39 R38 K75 ["ThumbnailId"]
      647 LOADK                            R39 K64 ["Alt text error"]
      648 SETTABLEKS                       R39 R38 K54 ["ErrorMessage"]
      650 SETTABLEKS                       R38 R37 K52 ["AltTextError"]
      652 LOADB                            R38 1
      653 SETTABLEKS                       R38 R37 K53 ["Enabled"]
      655 LOADNIL                          R38
      656 SETTABLEKS                       R38 R37 K54 ["ErrorMessage"]
      658 LOADB                            R38 1
      659 SETTABLEKS                       R38 R37 K55 ["IsVideoAllowed"]
      661 NAMECALL                         R38 R25 K65 ["getNextOrder"]
      663 CALL                             R38 1 1
      664 SETTABLEKS                       R38 R37 K56 ["LayoutOrder"]
      666 LOADNIL                          R38
      667 SETTABLEKS                       R38 R37 K57 ["Notes"]
      669 SETTABLEKS                       R22 R37 K58 ["Order"]
      671 SETTABLEKS                       R21 R37 K59 ["Thumbnails"]
      673 SETTABLEKS                       R16 R37 K60 ["ThumbnailsChanged"]
      675 SETTABLEKS                       R17 R37 K61 ["ThumbnailOrderChanged"]
      677 CALL                             R35 2 1
      678 SETTABLEKS                       R35 R34 K47 ["story"]
      680 DUPTABLE                         R35 K48 [{"name", "story"}]
      681 LOADK                            R36 K82 ["Some moderated thumbnails in MultiImagePicker"]
      682 SETTABLEKS                       R36 R35 K46 ["name"]
      684 GETTABLEKS                       R36 R1 K50 ["createElement"]
      686 MOVE                             R37 R11
      687 DUPTABLE                         R38 K62 [{"AddThumbnail", "AltTextError", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Notes", "Order", "Thumbnails", "ThumbnailsChanged", "ThumbnailOrderChanged"}]
      688 SETTABLEKS                       R15 R38 K51 ["AddThumbnail"]
      690 DUPTABLE                         R39 K76 [{"ThumbnailId", "ErrorMessage"}]
      691 LOADNIL                          R40
      692 SETTABLEKS                       R40 R39 K75 ["ThumbnailId"]
      694 LOADK                            R40 K64 ["Alt text error"]
      695 SETTABLEKS                       R40 R39 K54 ["ErrorMessage"]
      697 SETTABLEKS                       R39 R38 K52 ["AltTextError"]
      699 LOADB                            R39 1
      700 SETTABLEKS                       R39 R38 K53 ["Enabled"]
      702 LOADNIL                          R39
      703 SETTABLEKS                       R39 R38 K54 ["ErrorMessage"]
      705 LOADB                            R39 1
      706 SETTABLEKS                       R39 R38 K55 ["IsVideoAllowed"]
      708 NAMECALL                         R39 R25 K65 ["getNextOrder"]
      710 CALL                             R39 1 1
      711 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      713 LOADNIL                          R39
      714 SETTABLEKS                       R39 R38 K57 ["Notes"]
      716 SETTABLEKS                       R24 R38 K58 ["Order"]
      718 SETTABLEKS                       R23 R38 K59 ["Thumbnails"]
      720 SETTABLEKS                       R16 R38 K60 ["ThumbnailsChanged"]
      722 SETTABLEKS                       R17 R38 K61 ["ThumbnailOrderChanged"]
      724 CALL                             R36 2 1
      725 SETTABLEKS                       R36 R35 K47 ["story"]
      727 SETLIST                          R27 R28 8 [1]
      729 SETTABLEKS                       R27 R26 K44 ["stories"]
      731 CLOSEUPVALS                      R13
      732 RETURN                           R26 1
