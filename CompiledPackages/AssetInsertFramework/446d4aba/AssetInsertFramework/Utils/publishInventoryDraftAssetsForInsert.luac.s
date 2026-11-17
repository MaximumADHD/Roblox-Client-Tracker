PROTO_0:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["GetFastInt"]
        4 GETIMPORT                        R3 K1 [game]
        6 MOVE                             R4 R0
        7 FASTPCALL                        pcall 3 ; [+2]
        8 GETIMPORT                        R1 K4 [pcall]
       10 CALL                             R1 3 2
       11 JUMPIFNOT                        R1 ; [+12]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R4 K6 [type]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K7 ["number"] ; [+6]
       19 LOADN                            R4 1
       20 JUMPIFNOTLE                      R4 R2 ; [+3]
       22 MOVE                             R3 R2
       23 RETURN                           R3 1
       24 LOADN                            R3 50
       25 RETURN                           R3 1

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
       10 LOADK                            R8 K1 ["publish: gate entered for %* asset(s) using inventory state, destination is "]
       11 LENGTH                           R10 R1
       12 NAMECALL                         R8 R8 K2 ["format"]
       14 CALL                             R8 2 1
       15 LOADK                            R9 K3 ["%*:%*"]
       16 FASTCALL1                        TYPEOF R2 ; [+3]
       17 MOVE                             R14 R2
       18 GETIMPORT                        R13 K6 [typeof]
       20 CALL                             R13 1 1
       21 JUMPIFNOTEQKS                    R13 K7 ["EnumItem"] ; [+4]
       23 GETTABLEKS                       R12 R2 K8 ["Name"]
       25 JUMP                             ; [+10]
       26 FASTCALL1                        TYPE R2 ; [+3]
       27 MOVE                             R14 R2
       28 GETIMPORT                        R13 K10 [type]
       30 CALL                             R13 1 1
       31 JUMPIFNOTEQKS                    R13 K11 ["string"] ; [+3]
       33 MOVE                             R12 R2
       34 JUMP                             ; [+1]
       35 LOADNIL                          R12
       36 ORK                              R11 R12 K4 ["unknown"]
       37 MOVE                             R12 R3
       38 NAMECALL                         R9 R9 K2 ["format"]
       40 CALL                             R9 3 1
       41 CONCAT                           R7 R8 R9
       42 CALL                             R6 1 0
       43 JUMPIFNOT                        R0 ; [+3]
       44 LENGTH                           R6 R1
       45 JUMPIFNOTEQKN                    R6 K12 [0] ; [+5]
       47 GETUPVAL                         R6 1
       48 LOADK                            R7 K13 ["publish: skipped, no AssetAccessController or no asset ids"]
       49 CALL                             R6 1 0
       50 RETURN                           R5 1
       51 NEWTABLE                         R6 0 0
       53 NEWTABLE                         R7 0 0
       55 LOADN                            R8 0
       56 MOVE                             R9 R1
       57 LOADNIL                          R10
       58 LOADNIL                          R11
       59 FORGPREP                         R9
       60 JUMPIFEQKNIL                     R4 ; [+3]
       62 GETTABLE                         R14 R4 R12
       63 JUMP                             ; [+1]
       64 LOADNIL                          R14
       65 JUMPIFEQKNIL                     R14 ; [+4]
       67 GETTABLEKS                       R15 R14 K14 ["Creator"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R15
       71 GETUPVAL                         R16 2
       72 MOVE                             R17 R15
       73 MOVE                             R18 R2
       74 MOVE                             R19 R3
       75 CALL                             R16 3 1
       76 JUMPIFNOTEQKS                    R16 K15 ["SameAccount"] ; [+3]
       78 ADDK                             R8 R8 K16 [1]
       79 JUMP                             ; [+92]
       80 JUMPIFNOTEQKS                    R16 K17 ["Unknown"] ; [+9]
       82 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       84 MOVE                             R18 R7
       85 MOVE                             R19 R13
       86 GETIMPORT                        R17 K20 [table.insert]
       88 CALL                             R17 2 0
       89 JUMP                             ; [+82]
       90 JUMPIFEQKNIL                     R14 ; [+4]
       92 GETTABLEKS                       R17 R14 K21 ["DraftStatus"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R17
       96 JUMPIFEQKNIL                     R14 ; [+4]
       98 GETTABLEKS                       R18 R14 K22 ["VersionNumber"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R18
      102 JUMPIFEQKNIL                     R14 ; [+4]
      104 GETTABLEKS                       R19 R14 K23 ["ModerationStatus"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R19
      108 GETUPVAL                         R20 3
      109 GETTABLEKS                       R20 R20 K21 ["DraftStatus"]
      111 GETTABLEKS                       R20 R20 K24 ["Published"]
      113 JUMPIFNOTEQ                      R17 R20 ; [+3]
      115 ADDK                             R8 R8 K16 [1]
      116 JUMP                             ; [+55]
      117 GETUPVAL                         R20 3
      118 GETTABLEKS                       R20 R20 K21 ["DraftStatus"]
      120 GETTABLEKS                       R20 R20 K25 ["Draft"]
      122 JUMPIFNOTEQ                      R17 R20 ; [+42]
      124 GETUPVAL                         R20 3
      125 GETTABLEKS                       R20 R20 K23 ["ModerationStatus"]
      127 GETTABLEKS                       R20 R20 K26 ["Approved"]
      129 JUMPIFNOTEQ                      R19 R20 ; [+35]
      131 LOADB                            R20 0
      132 FASTCALL1                        TYPE R18 ; [+3]
      133 MOVE                             R22 R18
      134 GETIMPORT                        R21 K10 [type]
      136 CALL                             R21 1 1
      137 JUMPIFNOTEQKS                    R21 K27 ["number"] ; [+14]
      139 LOADB                            R20 0
      140 LOADN                            R21 1
      141 JUMPIFNOTLE                      R21 R18 ; [+10]
      143 FASTCALL1                        MATH_FLOOR R18 ; [+3]
      144 MOVE                             R22 R18
      145 GETIMPORT                        R21 K30 [math.floor]
      147 CALL                             R21 1 1
      148 JUMPIFEQ                         R21 R18 ; [+2]
      150 LOADB                            R20 0 +1
      151 LOADB                            R20 1
      152 JUMPIFNOT                        R20 ; [+12]
      153 DUPTABLE                         R22 K32 [{"AssetId", "VersionNumber"}]
      154 SETTABLEKS                       R13 R22 K31 ["AssetId"]
      156 SETTABLEKS                       R18 R22 K22 ["VersionNumber"]
      158 FASTCALL2                        TABLE_INSERT R6 R22 ; [+4]
      160 MOVE                             R21 R6
      161 GETIMPORT                        R20 K20 [table.insert]
      163 CALL                             R20 2 0
      164 JUMP                             ; [+7]
      165 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      167 MOVE                             R21 R7
      168 MOVE                             R22 R13
      169 GETIMPORT                        R20 K20 [table.insert]
      171 CALL                             R20 2 0
      172 FORGLOOP                         R9 2 ; [-113]
      174 GETUPVAL                         R9 1
      175 LOADK                            R11 K33 ["publish: %* asset(s) to publish by version, %* need publish state, "]
      176 LENGTH                           R13 R6
      177 LENGTH                           R14 R7
      178 NAMECALL                         R11 R11 K2 ["format"]
      180 CALL                             R11 3 1
      181 LOADK                            R12 K34 ["%* need no publish"]
      182 MOVE                             R14 R8
      183 NAMECALL                         R12 R12 K2 ["format"]
      185 CALL                             R12 2 1
      186 CONCAT                           R10 R11 R12
      187 CALL                             R9 1 0
      188 GETIMPORT                        R11 K36 [game]
      190 GETTABLEKS                       R11 R11 K37 ["GetFastInt"]
      192 GETIMPORT                        R12 K36 [game]
      194 LOADK                            R13 K38 ["AssetAccessControllerRequestAssetPublishMaxRequests"]
      195 FASTPCALL                        pcall 3 ; [+2]
      196 GETIMPORT                        R10 K40 [pcall]
      198 CALL                             R10 3 2
      199 JUMPIFNOT                        R10 ; [+12]
      200 FASTCALL1                        TYPE R11 ; [+3]
      201 MOVE                             R13 R11
      202 GETIMPORT                        R12 K10 [type]
      204 CALL                             R12 1 1
      205 JUMPIFNOTEQKS                    R12 K27 ["number"] ; [+6]
      207 LOADN                            R12 1
      208 JUMPIFNOTLE                      R12 R11 ; [+3]
      210 MOVE                             R9 R11
      211 JUMP                             ; [+1]
      212 LOADN                            R9 50
      213 LOADN                            R12 1
      214 LENGTH                           R10 R6
      215 MOVE                             R11 R9
      216 FORNPREP                         R10
      217 ADD                              R15 R12 R9
      218 SUBK                             R14 R15 K16 [1]
      219 LENGTH                           R15 R6
      220 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      222 GETIMPORT                        R13 K42 [math.min]
      224 CALL                             R13 2 1
      225 GETIMPORT                        R14 K44 [table.move]
      227 MOVE                             R15 R6
      228 MOVE                             R16 R12
      229 MOVE                             R17 R13
      230 LOADN                            R18 1
      231 NEWTABLE                         R19 0 0
      233 CALL                             R14 5 1
      234 GETUPVAL                         R15 1
      235 LOADK                            R16 K45 ["publish: publishing %* asset version(s), waiting for each to settle"]
      236 LENGTH                           R18 R14
      237 NAMECALL                         R16 R16 K2 ["format"]
      239 CALL                             R16 2 1
      240 CALL                             R15 1 0
      241 NEWCLOSURE                       R16 P0
      242 CAPTURE                          VAL R0
      243 CAPTURE                          VAL R14
      244 FASTPCALL                        pcall 1 ; [+2]
      245 GETIMPORT                        R15 K40 [pcall]
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
      305 GETIMPORT                        R12 K36 [game]
      307 GETTABLEKS                       R12 R12 K37 ["GetFastInt"]
      309 GETIMPORT                        R13 K36 [game]
      311 LOADK                            R14 K53 ["AssetAccessControllerGetAssetPublishStatesMaxIds"]
      312 FASTPCALL                        pcall 3 ; [+2]
      313 GETIMPORT                        R11 K40 [pcall]
      315 CALL                             R11 3 2
      316 JUMPIFNOT                        R11 ; [+12]
      317 FASTCALL1                        TYPE R12 ; [+3]
      318 MOVE                             R14 R12
      319 GETIMPORT                        R13 K10 [type]
      321 CALL                             R13 1 1
      322 JUMPIFNOTEQKS                    R13 K27 ["number"] ; [+6]
      324 LOADN                            R13 1
      325 JUMPIFNOTLE                      R13 R12 ; [+3]
      327 MOVE                             R10 R12
      328 JUMP                             ; [+1]
      329 LOADN                            R10 50
      330 LOADN                            R13 1
      331 LENGTH                           R11 R7
      332 MOVE                             R12 R10
      333 FORNPREP                         R11
      334 GETIMPORT                        R14 K44 [table.move]
      336 MOVE                             R15 R7
      337 MOVE                             R16 R13
      338 ADD                              R19 R13 R10
      339 SUBK                             R18 R19 K16 [1]
      340 LENGTH                           R19 R7
      341 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
      343 GETIMPORT                        R17 K42 [math.min]
      345 CALL                             R17 2 1
      346 LOADN                            R18 1
      347 NEWTABLE                         R19 0 0
      349 CALL                             R14 5 1
      350 GETUPVAL                         R15 1
      351 LOADK                            R16 K54 ["publish: publishing drafts among %* asset(s), waiting for each to settle"]
      352 LENGTH                           R18 R14
      353 NAMECALL                         R16 R16 K2 ["format"]
      355 CALL                             R16 2 1
      356 CALL                             R15 1 0
      357 NEWCLOSURE                       R16 P1
      358 CAPTURE                          VAL R0
      359 CAPTURE                          VAL R14
      360 FASTPCALL                        pcall 1 ; [+2]
      361 GETIMPORT                        R15 K40 [pcall]
      363 CALL                             R15 1 2
      364 JUMPIFNOT                        R15 ; [+7]
      365 FASTCALL1                        TYPE R16 ; [+3]
      366 MOVE                             R18 R16
      367 GETIMPORT                        R17 K10 [type]
      369 CALL                             R17 1 1
      370 JUMPIFEQKS                       R17 K18 ["table"] ; [+34]
      372 LOADB                            R17 0
      373 FASTCALL1                        TYPE R16 ; [+3]
      374 MOVE                             R19 R16
      375 GETIMPORT                        R18 K10 [type]
      377 CALL                             R18 1 1
      378 JUMPIFNOTEQKS                    R18 K11 ["string"] ; [+12]
      380 GETIMPORT                        R18 K47 [string.find]
      382 MOVE                             R19 R16
      383 LOADK                            R20 K48 ["not available for this component"]
      384 LOADN                            R21 1
      385 LOADB                            R22 1
      386 CALL                             R18 4 1
      387 JUMPIFNOTEQKNIL                  R18 ; [+2]
      389 LOADB                            R17 0 +1
      390 LOADB                            R17 1
      391 JUMPIFNOT                        R17 ; [+4]
      392 GETUPVAL                         R17 1
      393 LOADK                            R18 K55 ["publish: skipped, PublishLatestDraftsAndWaitAsync is not registered on this Studio"]
      394 CALL                             R17 1 0
      395 JUMP                             ; [+25]
      396 GETIMPORT                        R17 K51 [warn]
      398 LOADK                            R18 K52 ["Could not publish draft assets, continuing without publishing them: %*"]
      399 MOVE                             R20 R16
      400 NAMECALL                         R18 R18 K2 ["format"]
      402 CALL                             R18 2 1
      403 CALL                             R17 1 0
      404 JUMP                             ; [+15]
      405 MOVE                             R17 R16
      406 LOADNIL                          R18
      407 LOADNIL                          R19
      408 FORGPREP                         R17
      409 FASTCALL1                        TYPE R21 ; [+3]
      410 MOVE                             R23 R21
      411 GETIMPORT                        R22 K10 [type]
      413 CALL                             R22 1 1
      414 JUMPIFNOTEQKS                    R22 K27 ["number"] ; [+3]
      416 LOADB                            R22 1
      417 SETTABLE                         R22 R5 R21
      418 FORGLOOP                         R17 2 ; [-10]
      420 FORNLOOP                         R11
      421 LOADN                            R11 0
      422 MOVE                             R12 R5
      423 LOADNIL                          R13
      424 LOADNIL                          R14
      425 FORGPREP                         R12
      426 ADDK                             R11 R11 K16 [1]
      427 FORGLOOP                         R12 1 ; [-2]
      429 JUMPIFNOTEQKN                    R11 K12 [0] ; [+5]
      431 GETUPVAL                         R12 1
      432 LOADK                            R13 K56 ["publish: every asset is publishable and servable, proceeding to the grant"]
      433 CALL                             R12 1 0
      434 RETURN                           R5 1
      435 GETIMPORT                        R12 K51 [warn]
      437 LOADK                            R13 K57 ["%* asset(s) could not be published and will be left out"]
      438 MOVE                             R15 R11
      439 NAMECALL                         R13 R13 K2 ["format"]
      441 CALL                             R13 2 1
      442 CALL                             R12 1 0
      443 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetInsertFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Utils"]
       16 GETTABLEKS                       R3 R3 K8 ["logIfDebug"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R4 K10 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K14 [{["User"] = True, ["Group"] = True}]
       27 DUPCLOSURE                       R5 K15 [PROTO_0]
       28 DUPCLOSURE                       R6 K16 [PROTO_1]
       29 DUPCLOSURE                       R7 K17 [PROTO_2]
       30 DUPCLOSURE                       R8 K18 [PROTO_3]
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R9 K19 [PROTO_4]
       33 DUPCLOSURE                       R10 K20 [PROTO_5]
       34 DUPCLOSURE                       R11 K21 [PROTO_8]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R1
       39 RETURN                           R11 1
