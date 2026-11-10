PROTO_0:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETIMPORT                        R2 K3 [game]
        4 GETTABLEKS                       R2 R2 K4 ["GetFastInt"]
        6 GETIMPORT                        R3 K3 [game]
        8 MOVE                             R4 R0
        9 CALL                             R1 3 2
       10 JUMPIFNOT                        R1 ; [+12]
       11 FASTCALL1                        TYPE R2 ; [+3]
       12 MOVE                             R5 R2
       13 GETIMPORT                        R4 K6 [type]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K7 ["number"] ; [+6]
       18 LOADN                            R4 1
       19 JUMPIFNOTLE                      R4 R2 ; [+3]
       21 MOVE                             R3 R2
       22 RETURN                           R3 1
       23 LOADN                            R3 50
       24 RETURN                           R3 1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+12]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["not available for this component"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Name"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K5 [type]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+2]
       17 RETURN                           R0 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
        7 LOADK                            R3 K3 ["Unknown"]
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R0 K4 ["Id"]
       11 FASTCALL1                        TYPE R3 ; [+3]
       12 MOVE                             R5 R3
       13 GETIMPORT                        R4 K1 [type]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+3]
       18 JUMPIFNOTEQKN                    R3 K6 [0] ; [+3]
       20 LOADK                            R4 K3 ["Unknown"]
       21 RETURN                           R4 1
       22 FASTCALL1                        TYPE R2 ; [+3]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R4 K1 [type]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+3]
       29 JUMPIFNOTEQKN                    R2 K6 [0] ; [+3]
       31 LOADK                            R4 K3 ["Unknown"]
       32 RETURN                           R4 1
       33 GETTABLEKS                       R5 R0 K7 ["Type"]
       35 FASTCALL1                        TYPEOF R5 ; [+3]
       36 MOVE                             R7 R5
       37 GETIMPORT                        R6 K9 [typeof]
       39 CALL                             R6 1 1
       40 JUMPIFNOTEQKS                    R6 K10 ["EnumItem"] ; [+4]
       42 GETTABLEKS                       R4 R5 K11 ["Name"]
       44 JUMP                             ; [+10]
       45 FASTCALL1                        TYPE R5 ; [+3]
       46 MOVE                             R7 R5
       47 GETIMPORT                        R6 K1 [type]
       49 CALL                             R6 1 1
       50 JUMPIFNOTEQKS                    R6 K12 ["string"] ; [+3]
       52 MOVE                             R4 R5
       53 JUMP                             ; [+1]
       54 LOADNIL                          R4
       55 FASTCALL1                        TYPEOF R1 ; [+3]
       56 MOVE                             R7 R1
       57 GETIMPORT                        R6 K9 [typeof]
       59 CALL                             R6 1 1
       60 JUMPIFNOTEQKS                    R6 K10 ["EnumItem"] ; [+4]
       62 GETTABLEKS                       R5 R1 K11 ["Name"]
       64 JUMP                             ; [+10]
       65 FASTCALL1                        TYPE R1 ; [+3]
       66 MOVE                             R7 R1
       67 GETIMPORT                        R6 K1 [type]
       69 CALL                             R6 1 1
       70 JUMPIFNOTEQKS                    R6 K12 ["string"] ; [+3]
       72 MOVE                             R5 R1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R5
       75 JUMPIFEQKNIL                     R4 ; [+3]
       77 JUMPIFNOTEQKNIL                  R5 ; [+3]
       79 LOADK                            R6 K3 ["Unknown"]
       80 RETURN                           R6 1
       81 GETUPVAL                         R7 0
       82 GETTABLE                         R6 R7 R4
       83 JUMPIFNOT                        R6 ; [+3]
       84 GETUPVAL                         R7 0
       85 GETTABLE                         R6 R7 R5
       86 JUMPIF                           R6 ; [+2]
       87 LOADK                            R6 K3 ["Unknown"]
       88 RETURN                           R6 1
       89 JUMPIFNOTEQ                      R4 R5 ; [+5]
       91 JUMPIFNOTEQ                      R3 R2 ; [+3]
       93 LOADK                            R6 K13 ["SameAccount"]
       94 RETURN                           R6 1
       95 LOADK                            R6 K14 ["OtherAccount"]
       96 RETURN                           R6 1

PROTO_4:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+14]
        8 LOADB                            R1 0
        9 LOADN                            R2 1
       10 JUMPIFNOTLE                      R2 R0 ; [+10]
       12 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       13 MOVE                             R3 R0
       14 GETIMPORT                        R2 K5 [math.floor]
       16 CALL                             R2 1 1
       17 JUMPIFEQ                         R2 R0 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_5:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 FASTCALL1                        TYPE R6 ; [+3]
        5 MOVE                             R8 R6
        6 GETIMPORT                        R7 K1 [type]
        8 CALL                             R7 1 1
        9 JUMPIFNOTEQKS                    R7 K2 ["number"] ; [+3]
       11 LOADB                            R7 1
       12 SETTABLE                         R7 R0 R6
       13 FORGLOOP                         R2 2 ; [-10]
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["PublishAssetVersionsAndWaitAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["PublishLatestDraftsAndWaitAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 NEWTABLE                         R5 0 0
        2 GETUPVAL                         R6 0
        3 CALL                             R6 0 1
        4 JUMPIF                           R6 ; [+4]
        5 GETUPVAL                         R6 1
        6 LOADK                            R7 K0 ["publish: gate is off (FFlagAmrPublishDraftAssetsOnInsert)"]
        7 CALL                             R6 1 0
        8 RETURN                           R5 1
        9 GETUPVAL                         R6 1
       10 LOADK                            R10 K1 ["publish: gate entered for %* asset(s) using inventory state, destination is "]
       11 LENGTH                           R12 R1
       12 NAMECALL                         R10 R10 K2 ["format"]
       14 CALL                             R10 2 1
       15 MOVE                             R8 R10
       16 LOADK                            R9 K3 ["%*:%*"]
       17 FASTCALL1                        TYPEOF R2 ; [+3]
       18 MOVE                             R14 R2
       19 GETIMPORT                        R13 K6 [typeof]
       21 CALL                             R13 1 1
       22 JUMPIFNOTEQKS                    R13 K7 ["EnumItem"] ; [+4]
       24 GETTABLEKS                       R12 R2 K8 ["Name"]
       26 JUMP                             ; [+10]
       27 FASTCALL1                        TYPE R2 ; [+3]
       28 MOVE                             R14 R2
       29 GETIMPORT                        R13 K10 [type]
       31 CALL                             R13 1 1
       32 JUMPIFNOTEQKS                    R13 K11 ["string"] ; [+3]
       34 MOVE                             R12 R2
       35 JUMP                             ; [+1]
       36 LOADNIL                          R12
       37 ORK                              R11 R12 K4 ["unknown"]
       38 MOVE                             R12 R3
       39 NAMECALL                         R9 R9 K2 ["format"]
       41 CALL                             R9 3 1
       42 CONCAT                           R7 R8 R9
       43 CALL                             R6 1 0
       44 JUMPIFNOT                        R0 ; [+3]
       45 LENGTH                           R6 R1
       46 JUMPIFNOTEQKN                    R6 K12 [0] ; [+5]
       48 GETUPVAL                         R6 1
       49 LOADK                            R7 K13 ["publish: skipped, no AssetAccessController or no asset ids"]
       50 CALL                             R6 1 0
       51 RETURN                           R5 1
       52 NEWTABLE                         R6 0 0
       54 NEWTABLE                         R7 0 0
       56 LOADN                            R8 0
       57 MOVE                             R9 R1
       58 LOADNIL                          R10
       59 LOADNIL                          R11
       60 FORGPREP                         R9
       61 JUMPIFEQKNIL                     R4 ; [+3]
       63 GETTABLE                         R14 R4 R12
       64 JUMP                             ; [+1]
       65 LOADNIL                          R14
       66 JUMPIFEQKNIL                     R14 ; [+4]
       68 GETTABLEKS                       R15 R14 K14 ["Creator"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R15
       72 GETUPVAL                         R16 2
       73 MOVE                             R17 R15
       74 MOVE                             R18 R2
       75 MOVE                             R19 R3
       76 CALL                             R16 3 1
       77 JUMPIFNOTEQKS                    R16 K15 ["SameAccount"] ; [+3]
       79 ADDK                             R8 R8 K16 [1]
       80 JUMP                             ; [+92]
       81 JUMPIFNOTEQKS                    R16 K17 ["Unknown"] ; [+9]
       83 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       85 MOVE                             R18 R7
       86 MOVE                             R19 R13
       87 GETIMPORT                        R17 K20 [table.insert]
       89 CALL                             R17 2 0
       90 JUMP                             ; [+82]
       91 JUMPIFEQKNIL                     R14 ; [+4]
       93 GETTABLEKS                       R17 R14 K21 ["DraftStatus"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R17
       97 JUMPIFEQKNIL                     R14 ; [+4]
       99 GETTABLEKS                       R18 R14 K22 ["VersionNumber"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R18
      103 JUMPIFEQKNIL                     R14 ; [+4]
      105 GETTABLEKS                       R19 R14 K23 ["ModerationStatus"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R19
      109 GETUPVAL                         R20 3
      110 GETTABLEKS                       R20 R20 K21 ["DraftStatus"]
      112 GETTABLEKS                       R20 R20 K24 ["Published"]
      114 JUMPIFNOTEQ                      R17 R20 ; [+3]
      116 ADDK                             R8 R8 K16 [1]
      117 JUMP                             ; [+55]
      118 GETUPVAL                         R20 3
      119 GETTABLEKS                       R20 R20 K21 ["DraftStatus"]
      121 GETTABLEKS                       R20 R20 K25 ["Draft"]
      123 JUMPIFNOTEQ                      R17 R20 ; [+42]
      125 GETUPVAL                         R20 3
      126 GETTABLEKS                       R20 R20 K23 ["ModerationStatus"]
      128 GETTABLEKS                       R20 R20 K26 ["Approved"]
      130 JUMPIFNOTEQ                      R19 R20 ; [+35]
      132 LOADB                            R20 0
      133 FASTCALL1                        TYPE R18 ; [+3]
      134 MOVE                             R22 R18
      135 GETIMPORT                        R21 K10 [type]
      137 CALL                             R21 1 1
      138 JUMPIFNOTEQKS                    R21 K27 ["number"] ; [+14]
      140 LOADB                            R20 0
      141 LOADN                            R21 1
      142 JUMPIFNOTLE                      R21 R18 ; [+10]
      144 FASTCALL1                        MATH_FLOOR R18 ; [+3]
      145 MOVE                             R22 R18
      146 GETIMPORT                        R21 K30 [math.floor]
      148 CALL                             R21 1 1
      149 JUMPIFEQ                         R21 R18 ; [+2]
      151 LOADB                            R20 0 +1
      152 LOADB                            R20 1
      153 JUMPIFNOT                        R20 ; [+12]
      154 DUPTABLE                         R22 K32 [{"AssetId", "VersionNumber"}]
      155 SETTABLEKS                       R13 R22 K31 ["AssetId"]
      157 SETTABLEKS                       R18 R22 K22 ["VersionNumber"]
      159 FASTCALL2                        TABLE_INSERT R6 R22 ; [+4]
      161 MOVE                             R21 R6
      162 GETIMPORT                        R20 K20 [table.insert]
      164 CALL                             R20 2 0
      165 JUMP                             ; [+7]
      166 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      168 MOVE                             R21 R7
      169 MOVE                             R22 R13
      170 GETIMPORT                        R20 K20 [table.insert]
      172 CALL                             R20 2 0
      173 FORGLOOP                         R9 2 ; [-113]
      175 GETUPVAL                         R9 1
      176 LOADK                            R13 K33 ["publish: %* asset(s) to publish by version, %* need publish state, "]
      177 LENGTH                           R15 R6
      178 LENGTH                           R16 R7
      179 NAMECALL                         R13 R13 K2 ["format"]
      181 CALL                             R13 3 1
      182 MOVE                             R11 R13
      183 LOADK                            R12 K34 ["%* need no publish"]
      184 MOVE                             R14 R8
      185 NAMECALL                         R12 R12 K2 ["format"]
      187 CALL                             R12 2 1
      188 CONCAT                           R10 R11 R12
      189 CALL                             R9 1 0
      190 GETIMPORT                        R10 K36 [pcall]
      192 GETIMPORT                        R11 K38 [game]
      194 GETTABLEKS                       R11 R11 K39 ["GetFastInt"]
      196 GETIMPORT                        R12 K38 [game]
      198 LOADK                            R13 K40 ["AssetAccessControllerRequestAssetPublishMaxRequests"]
      199 CALL                             R10 3 2
      200 JUMPIFNOT                        R10 ; [+12]
      201 FASTCALL1                        TYPE R11 ; [+3]
      202 MOVE                             R13 R11
      203 GETIMPORT                        R12 K10 [type]
      205 CALL                             R12 1 1
      206 JUMPIFNOTEQKS                    R12 K27 ["number"] ; [+6]
      208 LOADN                            R12 1
      209 JUMPIFNOTLE                      R12 R11 ; [+3]
      211 MOVE                             R9 R11
      212 JUMP                             ; [+1]
      213 LOADN                            R9 50
      214 LOADN                            R12 1
      215 LENGTH                           R10 R6
      216 MOVE                             R11 R9
      217 FORNPREP                         R10
      218 ADD                              R15 R12 R9
      219 SUBK                             R14 R15 K16 [1]
      220 LENGTH                           R15 R6
      221 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      223 GETIMPORT                        R13 K42 [math.min]
      225 CALL                             R13 2 1
      226 GETIMPORT                        R14 K44 [table.move]
      228 MOVE                             R15 R6
      229 MOVE                             R16 R12
      230 MOVE                             R17 R13
      231 LOADN                            R18 1
      232 NEWTABLE                         R19 0 0
      234 CALL                             R14 5 1
      235 GETUPVAL                         R15 1
      236 LOADK                            R16 K45 ["publish: publishing %* asset version(s), waiting for each to settle"]
      237 LENGTH                           R18 R14
      238 NAMECALL                         R16 R16 K2 ["format"]
      240 CALL                             R16 2 1
      241 CALL                             R15 1 0
      242 GETIMPORT                        R15 K36 [pcall]
      244 NEWCLOSURE                       R16 P0
      245 CAPTURE                          VAL R0
      246 CAPTURE                          VAL R14
      247 CALL                             R15 1 2
      248 JUMPIFNOT                        R15 ; [+7]
      249 FASTCALL1                        TYPE R16 ; [+3]
      250 MOVE                             R18 R16
      251 GETIMPORT                        R17 K10 [type]
      253 CALL                             R17 1 1
      254 JUMPIFEQKS                       R17 K18 ["table"] ; [+34]
      256 LOADB                            R17 0
      257 FASTCALL1                        TYPE R16 ; [+3]
      258 MOVE                             R19 R16
      259 GETIMPORT                        R18 K10 [type]
      261 CALL                             R18 1 1
      262 JUMPIFNOTEQKS                    R18 K11 ["string"] ; [+12]
      264 GETIMPORT                        R18 K47 [string.find]
      266 MOVE                             R19 R16
      267 LOADK                            R20 K48 ["not available for this component"]
      268 LOADN                            R21 1
      269 LOADB                            R22 1
      270 CALL                             R18 4 1
      271 JUMPIFNOTEQKNIL                  R18 ; [+2]
      273 LOADB                            R17 0 +1
      274 LOADB                            R17 1
      275 JUMPIFNOT                        R17 ; [+4]
      276 GETUPVAL                         R17 1
      277 LOADK                            R18 K49 ["publish: skipped, PublishAssetVersionsAndWaitAsync is not registered on this Studio"]
      278 CALL                             R17 1 0
      279 RETURN                           R5 1
      280 GETIMPORT                        R17 K51 [warn]
      282 LOADK                            R18 K52 ["Could not publish draft assets, continuing without publishing them: %*"]
      283 MOVE                             R20 R16
      284 NAMECALL                         R18 R18 K2 ["format"]
      286 CALL                             R18 2 1
      287 CALL                             R17 1 0
      288 JUMP                             ; [+15]
      289 MOVE                             R17 R16
      290 LOADNIL                          R18
      291 LOADNIL                          R19
      292 FORGPREP                         R17
      293 FASTCALL1                        TYPE R21 ; [+3]
      294 MOVE                             R23 R21
      295 GETIMPORT                        R22 K10 [type]
      297 CALL                             R22 1 1
      298 JUMPIFNOTEQKS                    R22 K27 ["number"] ; [+3]
      300 LOADB                            R22 1
      301 SETTABLE                         R22 R5 R21
      302 FORGLOOP                         R17 2 ; [-10]
      304 FORNLOOP                         R10
      305 GETIMPORT                        R11 K36 [pcall]
      307 GETIMPORT                        R12 K38 [game]
      309 GETTABLEKS                       R12 R12 K39 ["GetFastInt"]
      311 GETIMPORT                        R13 K38 [game]
      313 LOADK                            R14 K53 ["AssetAccessControllerGetAssetPublishStatesMaxIds"]
      314 CALL                             R11 3 2
      315 JUMPIFNOT                        R11 ; [+12]
      316 FASTCALL1                        TYPE R12 ; [+3]
      317 MOVE                             R14 R12
      318 GETIMPORT                        R13 K10 [type]
      320 CALL                             R13 1 1
      321 JUMPIFNOTEQKS                    R13 K27 ["number"] ; [+6]
      323 LOADN                            R13 1
      324 JUMPIFNOTLE                      R13 R12 ; [+3]
      326 MOVE                             R10 R12
      327 JUMP                             ; [+1]
      328 LOADN                            R10 50
      329 LOADN                            R13 1
      330 LENGTH                           R11 R7
      331 MOVE                             R12 R10
      332 FORNPREP                         R11
      333 GETIMPORT                        R14 K44 [table.move]
      335 MOVE                             R15 R7
      336 MOVE                             R16 R13
      337 ADD                              R19 R13 R10
      338 SUBK                             R18 R19 K16 [1]
      339 LENGTH                           R19 R7
      340 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
      342 GETIMPORT                        R17 K42 [math.min]
      344 CALL                             R17 2 1
      345 LOADN                            R18 1
      346 NEWTABLE                         R19 0 0
      348 CALL                             R14 5 1
      349 GETUPVAL                         R15 1
      350 LOADK                            R16 K54 ["publish: publishing drafts among %* asset(s), waiting for each to settle"]
      351 LENGTH                           R18 R14
      352 NAMECALL                         R16 R16 K2 ["format"]
      354 CALL                             R16 2 1
      355 CALL                             R15 1 0
      356 GETIMPORT                        R15 K36 [pcall]
      358 NEWCLOSURE                       R16 P1
      359 CAPTURE                          VAL R0
      360 CAPTURE                          VAL R14
      361 CALL                             R15 1 2
      362 JUMPIFNOT                        R15 ; [+7]
      363 FASTCALL1                        TYPE R16 ; [+3]
      364 MOVE                             R18 R16
      365 GETIMPORT                        R17 K10 [type]
      367 CALL                             R17 1 1
      368 JUMPIFEQKS                       R17 K18 ["table"] ; [+34]
      370 LOADB                            R17 0
      371 FASTCALL1                        TYPE R16 ; [+3]
      372 MOVE                             R19 R16
      373 GETIMPORT                        R18 K10 [type]
      375 CALL                             R18 1 1
      376 JUMPIFNOTEQKS                    R18 K11 ["string"] ; [+12]
      378 GETIMPORT                        R18 K47 [string.find]
      380 MOVE                             R19 R16
      381 LOADK                            R20 K48 ["not available for this component"]
      382 LOADN                            R21 1
      383 LOADB                            R22 1
      384 CALL                             R18 4 1
      385 JUMPIFNOTEQKNIL                  R18 ; [+2]
      387 LOADB                            R17 0 +1
      388 LOADB                            R17 1
      389 JUMPIFNOT                        R17 ; [+4]
      390 GETUPVAL                         R17 1
      391 LOADK                            R18 K55 ["publish: skipped, PublishLatestDraftsAndWaitAsync is not registered on this Studio"]
      392 CALL                             R17 1 0
      393 JUMP                             ; [+25]
      394 GETIMPORT                        R17 K51 [warn]
      396 LOADK                            R18 K52 ["Could not publish draft assets, continuing without publishing them: %*"]
      397 MOVE                             R20 R16
      398 NAMECALL                         R18 R18 K2 ["format"]
      400 CALL                             R18 2 1
      401 CALL                             R17 1 0
      402 JUMP                             ; [+15]
      403 MOVE                             R17 R16
      404 LOADNIL                          R18
      405 LOADNIL                          R19
      406 FORGPREP                         R17
      407 FASTCALL1                        TYPE R21 ; [+3]
      408 MOVE                             R23 R21
      409 GETIMPORT                        R22 K10 [type]
      411 CALL                             R22 1 1
      412 JUMPIFNOTEQKS                    R22 K27 ["number"] ; [+3]
      414 LOADB                            R22 1
      415 SETTABLE                         R22 R5 R21
      416 FORGLOOP                         R17 2 ; [-10]
      418 FORNLOOP                         R11
      419 LOADN                            R11 0
      420 MOVE                             R12 R5
      421 LOADNIL                          R13
      422 LOADNIL                          R14
      423 FORGPREP                         R12
      424 ADDK                             R11 R11 K16 [1]
      425 FORGLOOP                         R12 1 ; [-2]
      427 JUMPIFNOTEQKN                    R11 K12 [0] ; [+5]
      429 GETUPVAL                         R12 1
      430 LOADK                            R13 K56 ["publish: every asset is publishable and servable, proceeding to the grant"]
      431 CALL                             R12 1 0
      432 RETURN                           R5 1
      433 GETIMPORT                        R12 K51 [warn]
      435 LOADK                            R13 K57 ["%* asset(s) could not be published and will be left out"]
      436 MOVE                             R15 R11
      437 NAMECALL                         R13 R13 K2 ["format"]
      439 CALL                             R13 2 1
      440 CALL                             R12 1 0
      441 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["logIfDebug"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K15 [{["User"] = True, ["Group"] = True}]
       33 DUPCLOSURE                       R5 K16 [PROTO_0]
       34 DUPCLOSURE                       R6 K17 [PROTO_1]
       35 DUPCLOSURE                       R7 K18 [PROTO_2]
       36 DUPCLOSURE                       R8 K19 [PROTO_3]
       37 CAPTURE                          VAL R4
       38 DUPCLOSURE                       R9 K20 [PROTO_4]
       39 DUPCLOSURE                       R10 K21 [PROTO_5]
       40 DUPCLOSURE                       R11 K22 [PROTO_8]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R1
       45 RETURN                           R11 1
