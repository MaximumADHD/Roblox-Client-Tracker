PROTO_0:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+11]
        7 GETIMPORT                        R3 K4 [error]
        9 LOADK                            R5 K5 ["Invalid config option %* inside of %* - expected to be table"]
       10 MOVE                             R7 R2
       11 MOVE                             R8 R0
       12 NAMECALL                         R5 R5 K6 ["format"]
       14 CALL                             R5 3 1
       15 MOVE                             R4 R5
       16 CALL                             R3 1 0
       17 MOVE                             R3 R1
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 GETUPVAL                         R10 0
       22 GETTABLE                         R9 R10 R2
       23 GETTABLE                         R8 R9 R7
       24 JUMPIF                           R8 ; [+11]
       25 GETIMPORT                        R8 K4 [error]
       27 LOADK                            R10 K7 ["Invalid config option %* in %* inside of %*"]
       28 MOVE                             R12 R7
       29 MOVE                             R13 R2
       30 MOVE                             R14 R0
       31 NAMECALL                         R10 R10 K6 ["format"]
       33 CALL                             R10 4 1
       34 MOVE                             R9 R10
       35 CALL                             R8 1 0
       36 FORGLOOP                         R3 2 ; [-16]
       38 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R4 K2 ["Invalid ValidationConfig %* used on the module %*"]
        3 MOVE                             R6 R1
        4 GETUPVAL                         R7 0
        5 NAMECALL                         R4 R4 K3 ["format"]
        7 CALL                             R4 3 1
        8 MOVE                             R3 R4
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+10]
        4 GETIMPORT                        R1 K1 [error]
        6 LOADK                            R3 K2 ["%* does not exist in the preload table."]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R2 0
       14 GETTABLE                         R1 R2 R0
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       18 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K9 ["flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R0 K11 ["validationFolders"]
       30 GETTABLEKS                       R5 R0 K12 ["assetQualityFolders"]
       32 NEWTABLE                         R6 2 0
       34 NEWTABLE                         R7 0 5
       36 GETTABLEKS                       R8 R2 K13 ["SharedDataMember"]
       38 GETTABLEKS                       R8 R8 K14 ["aqsSummaryData"]
       40 GETTABLEKS                       R9 R2 K13 ["SharedDataMember"]
       42 GETTABLEKS                       R9 R9 K15 ["renderMeshesData"]
       44 GETTABLEKS                       R10 R2 K13 ["SharedDataMember"]
       46 GETTABLEKS                       R10 R10 K16 ["innerCagesData"]
       48 GETTABLEKS                       R11 R2 K13 ["SharedDataMember"]
       50 GETTABLEKS                       R11 R11 K17 ["outerCagesData"]
       52 GETTABLEKS                       R12 R2 K13 ["SharedDataMember"]
       54 GETTABLEKS                       R12 R12 K18 ["meshTextures"]
       56 SETLIST                          R7 R8 5 [1]
       58 NEWTABLE                         R8 0 0
       60 GETTABLEKS                       R9 R2 K19 ["ValidationModule"]
       62 LOADNIL                          R10
       63 LOADNIL                          R11
       64 FORGPREP                         R9
       65 SETTABLE                         R4 R8 R13
       66 FORGLOOP                         R9 2 ; [-2]
       68 MOVE                             R9 R3
       69 CALL                             R9 0 1
       70 JUMPIFNOT                        R9 ; [+8]
       71 GETTABLEKS                       R9 R2 K20 ["AssetQualityCheck"]
       73 LOADNIL                          R10
       74 LOADNIL                          R11
       75 FORGPREP                         R9
       76 SETTABLE                         R5 R8 R13
       77 FORGLOOP                         R9 2 ; [-2]
       79 NEWTABLE                         R9 0 0
       81 MOVE                             R10 R2
       82 LOADNIL                          R11
       83 LOADNIL                          R12
       84 FORGPREP                         R10
       85 NEWTABLE                         R15 0 0
       87 SETTABLE                         R15 R9 R13
       88 FASTCALL1                        TYPEOF R14 ; [+3]
       89 MOVE                             R16 R14
       90 GETIMPORT                        R15 K22 [typeof]
       92 CALL                             R15 1 1
       93 JUMPIFNOTEQKS                    R15 K23 ["table"] ; [+10]
       95 MOVE                             R15 R14
       96 LOADNIL                          R16
       97 LOADNIL                          R17
       98 FORGPREP                         R15
       99 GETTABLE                         R20 R9 R13
      100 LOADB                            R21 1
      101 SETTABLE                         R21 R20 R18
      102 FORGLOOP                         R15 2 ; [-4]
      104 FORGLOOP                         R10 2 ; [-20]
      106 DUPCLOSURE                       R10 K24 [PROTO_0]
      107 CAPTURE                          VAL R9
      108 DUPCLOSURE                       R11 K25 [PROTO_1]
      109 DUPCLOSURE                       R12 K26 [PROTO_2]
      110 NEWTABLE                         R13 0 0
      112 MOVE                             R14 R8
      113 LOADNIL                          R15
      114 LOADNIL                          R16
      115 FORGPREP                         R14
      116 MOVE                             R21 R17
      117 NAMECALL                         R19 R18 K27 ["FindFirstChild"]
      119 CALL                             R19 2 1
      120 JUMPIFNOTEQKNIL                  R19 ; [+12]
      122 GETIMPORT                        R20 K29 [error]
      124 LOADK                            R22 K30 ["%* validation folder is missing from %*"]
      125 MOVE                             R24 R17
      126 GETTABLEKS                       R25 R18 K31 ["Name"]
      128 NAMECALL                         R22 R22 K32 ["format"]
      130 CALL                             R22 3 1
      131 MOVE                             R21 R22
      132 CALL                             R20 1 0
      133 MOVE                             R22 R17
      134 NAMECALL                         R20 R19 K27 ["FindFirstChild"]
      136 CALL                             R20 2 1
      137 JUMPIFEQKNIL                     R20 ; [+6]
      139 LOADK                            R23 K33 ["ModuleScript"]
      140 NAMECALL                         R21 R20 K34 ["IsA"]
      142 CALL                             R21 2 1
      143 JUMPIF                           R21 ; [+12]
      144 GETIMPORT                        R21 K29 [error]
      146 LOADK                            R23 K35 ["%*.lua validation file is missing from %*/%*"]
      147 MOVE                             R25 R17
      148 GETTABLEKS                       R26 R18 K31 ["Name"]
      150 MOVE                             R27 R17
      151 NAMECALL                         R23 R23 K32 ["format"]
      153 CALL                             R23 4 1
      154 MOVE                             R22 R23
      155 CALL                             R21 1 0
      156 GETIMPORT                        R21 K4 [require]
      158 MOVE                             R22 R20
      159 CALL                             R21 1 1
      160 MOVE                             R22 R21
      161 LOADNIL                          R23
      162 LOADNIL                          R24
      163 FORGPREP                         R22
      164 FASTCALL1                        TYPEOF R25 ; [+3]
      165 MOVE                             R28 R25
      166 GETIMPORT                        R27 K22 [typeof]
      168 CALL                             R27 1 1
      169 JUMPIFEQKS                       R27 K36 ["string"] ; [+16]
      171 GETIMPORT                        R27 K29 [error]
      173 LOADK                            R29 K37 ["%*.lua contains non-string key %*"]
      174 MOVE                             R31 R17
      175 FASTCALL1                        TOSTRING R25 ; [+3]
      176 MOVE                             R33 R25
      177 GETIMPORT                        R32 K39 [tostring]
      179 CALL                             R32 1 1
      180 NAMECALL                         R29 R29 K32 ["format"]
      182 CALL                             R29 3 1
      183 MOVE                             R28 R29
      184 CALL                             R27 1 0
      185 JUMP                             ; [+14]
      186 GETTABLEKS                       R28 R9 K40 ["ValidationConfig"]
      188 GETTABLE                         R27 R28 R25
      189 JUMPIF                           R27 ; [+10]
      190 GETIMPORT                        R27 K29 [error]
      192 LOADK                            R29 K41 ["%*.lua contains unexpected member %*. Check for typos or add an extra ValidationEnums.ValidationConfig"]
      193 MOVE                             R31 R17
      194 MOVE                             R32 R25
      195 NAMECALL                         R29 R29 K32 ["format"]
      197 CALL                             R29 3 1
      198 MOVE                             R28 R29
      199 CALL                             R27 1 0
      200 FORGLOOP                         R22 2 ; [-37]
      202 GETTABLEKS                       R23 R21 K42 ["fflag"]
      204 OR                               R22 R23 R11
      205 SETTABLEKS                       R22 R21 K42 ["fflag"]
      207 GETTABLEKS                       R23 R21 K43 ["shadowFlag"]
      209 OR                               R22 R23 R12
      210 SETTABLEKS                       R22 R21 K43 ["shadowFlag"]
      212 GETTABLEKS                       R22 R21 K44 ["categories"]
      214 JUMPIF                           R22 ; [+2]
      215 NEWTABLE                         R22 0 0
      217 SETTABLEKS                       R22 R21 K44 ["categories"]
      219 GETTABLEKS                       R22 R21 K45 ["requiredData"]
      221 JUMPIF                           R22 ; [+2]
      222 NEWTABLE                         R22 0 0
      224 SETTABLEKS                       R22 R21 K45 ["requiredData"]
      226 GETTABLEKS                       R22 R21 K46 ["conditionalData"]
      228 JUMPIF                           R22 ; [+2]
      229 NEWTABLE                         R22 0 0
      231 SETTABLEKS                       R22 R21 K46 ["conditionalData"]
      233 GETTABLEKS                       R22 R21 K47 ["prereqTests"]
      235 JUMPIF                           R22 ; [+2]
      236 NEWTABLE                         R22 0 0
      238 SETTABLEKS                       R22 R21 K47 ["prereqTests"]
      240 GETTABLEKS                       R22 R21 K48 ["expectedFailures"]
      242 JUMPIF                           R22 ; [+2]
      243 NEWTABLE                         R22 0 0
      245 SETTABLEKS                       R22 R21 K48 ["expectedFailures"]
      247 GETTABLEKS                       R22 R21 K49 ["expectedAqsData"]
      249 JUMPIF                           R22 ; [+2]
      250 NEWTABLE                         R22 0 0
      252 SETTABLEKS                       R22 R21 K49 ["expectedAqsData"]
      254 GETTABLEKS                       R22 R21 K50 ["knownAqsUserErrors"]
      256 JUMPIF                           R22 ; [+2]
      257 NEWTABLE                         R22 0 0
      259 SETTABLEKS                       R22 R21 K50 ["knownAqsUserErrors"]
      261 JUMPIFEQ                         R18 R5 ; [+2]
      263 LOADB                            R22 0 +1
      264 LOADB                            R22 1
      265 SETTABLEKS                       R22 R21 K51 ["isAssetQualityModule"]
      267 MOVE                             R22 R3
      268 CALL                             R22 0 1
      269 JUMPIFNOT                        R22 ; [+25]
      270 GETTABLEKS                       R22 R21 K51 ["isAssetQualityModule"]
      272 JUMPIFNOT                        R22 ; [+50]
      273 MOVE                             R22 R7
      274 LOADNIL                          R23
      275 LOADNIL                          R24
      276 FORGPREP                         R22
      277 GETIMPORT                        R27 K53 [table.find]
      279 GETTABLEKS                       R28 R21 K45 ["requiredData"]
      281 MOVE                             R29 R26
      282 CALL                             R27 2 1
      283 JUMPIF                           R27 ; [+8]
      284 GETTABLEKS                       R28 R21 K45 ["requiredData"]
      286 FASTCALL2                        TABLE_INSERT R28 R26 ; [+4]
      288 MOVE                             R29 R26
      289 GETIMPORT                        R27 K55 [table.insert]
      291 CALL                             R27 2 0
      292 FORGLOOP                         R22 2 ; [-16]
      294 JUMP                             ; [+28]
      295 GETIMPORT                        R22 K57 [next]
      297 GETTABLEKS                       R23 R21 K49 ["expectedAqsData"]
      299 CALL                             R22 1 1
      300 JUMPIFEQKNIL                     R22 ; [+22]
      302 MOVE                             R22 R7
      303 LOADNIL                          R23
      304 LOADNIL                          R24
      305 FORGPREP                         R22
      306 GETIMPORT                        R27 K53 [table.find]
      308 GETTABLEKS                       R28 R21 K45 ["requiredData"]
      310 MOVE                             R29 R26
      311 CALL                             R27 2 1
      312 JUMPIF                           R27 ; [+8]
      313 GETTABLEKS                       R28 R21 K45 ["requiredData"]
      315 FASTCALL2                        TABLE_INSERT R28 R26 ; [+4]
      317 MOVE                             R29 R26
      318 GETIMPORT                        R27 K55 [table.insert]
      320 CALL                             R27 2 0
      321 FORGLOOP                         R22 2 ; [-16]
      323 GETTABLEKS                       R22 R21 K58 ["run"]
      325 JUMPIFEQKNIL                     R22 ; [+9]
      327 GETTABLEKS                       R23 R21 K58 ["run"]
      329 FASTCALL1                        TYPEOF R23 ; [+2]
      330 GETIMPORT                        R22 K22 [typeof]
      332 CALL                             R22 1 1
      333 JUMPIFEQKS                       R22 K59 ["function"] ; [+10]
      335 GETIMPORT                        R22 K29 [error]
      337 LOADK                            R24 K60 ["Missing module run function in %*"]
      338 MOVE                             R26 R17
      339 NAMECALL                         R24 R24 K32 ["format"]
      341 CALL                             R24 2 1
      342 MOVE                             R23 R24
      343 CALL                             R22 1 0
      344 DUPTABLE                         R24 K62 [{"__index"}]
      345 NEWCLOSURE                       R25 P3
      346 CAPTURE                          VAL R17
      347 SETTABLEKS                       R25 R24 K61 ["__index"]
      349 FASTCALL2                        SETMETATABLE R21 R24 ; [+4]
      351 MOVE                             R23 R21
      352 GETIMPORT                        R22 K64 [setmetatable]
      354 CALL                             R22 2 0
      355 GETTABLEKS                       R23 R21 K42 ["fflag"]
      357 FASTCALL1                        TYPEOF R23 ; [+2]
      358 GETIMPORT                        R22 K22 [typeof]
      360 CALL                             R22 1 1
      361 JUMPIFNOTEQKS                    R22 K59 ["function"] ; [+10]
      363 GETTABLEKS                       R23 R21 K42 ["fflag"]
      365 CALL                             R23 0 -1
      366 FASTCALL                         TYPEOF ; [+2]
      367 GETIMPORT                        R22 K22 [typeof]
      369 CALL                             R22 -1 1
      370 JUMPIFEQKS                       R22 K65 ["boolean"] ; [+10]
      372 GETIMPORT                        R22 K29 [error]
      374 LOADK                            R24 K66 ["Invalid FFlag config in %*"]
      375 MOVE                             R26 R17
      376 NAMECALL                         R24 R24 K32 ["format"]
      378 CALL                             R24 2 1
      379 MOVE                             R23 R24
      380 CALL                             R22 1 0
      381 GETTABLEKS                       R23 R21 K43 ["shadowFlag"]
      383 FASTCALL1                        TYPEOF R23 ; [+2]
      384 GETIMPORT                        R22 K22 [typeof]
      386 CALL                             R22 1 1
      387 JUMPIFNOTEQKS                    R22 K59 ["function"] ; [+10]
      389 GETTABLEKS                       R23 R21 K43 ["shadowFlag"]
      391 CALL                             R23 0 -1
      392 FASTCALL                         TYPEOF ; [+2]
      393 GETIMPORT                        R22 K22 [typeof]
      395 CALL                             R22 -1 1
      396 JUMPIFEQKS                       R22 K65 ["boolean"] ; [+10]
      398 GETIMPORT                        R22 K29 [error]
      400 LOADK                            R24 K67 ["Invalid shadowFlag config in %*"]
      401 MOVE                             R26 R17
      402 NAMECALL                         R24 R24 K32 ["format"]
      404 CALL                             R24 2 1
      405 MOVE                             R23 R24
      406 CALL                             R22 1 0
      407 MOVE                             R22 R10
      408 MOVE                             R23 R17
      409 GETTABLEKS                       R24 R21 K44 ["categories"]
      411 LOADK                            R25 K68 ["UploadCategory"]
      412 CALL                             R22 3 0
      413 MOVE                             R22 R10
      414 MOVE                             R23 R17
      415 GETTABLEKS                       R24 R21 K45 ["requiredData"]
      417 LOADK                            R25 K13 ["SharedDataMember"]
      418 CALL                             R22 3 0
      419 MOVE                             R22 R10
      420 MOVE                             R23 R17
      421 GETTABLEKS                       R24 R21 K46 ["conditionalData"]
      423 LOADK                            R25 K13 ["SharedDataMember"]
      424 CALL                             R22 3 0
      425 MOVE                             R22 R10
      426 MOVE                             R23 R17
      427 GETTABLEKS                       R24 R21 K47 ["prereqTests"]
      429 LOADK                            R25 K19 ["ValidationModule"]
      430 CALL                             R22 3 0
      431 SETTABLE                         R21 R13 R17
      432 FORGLOOP                         R14 2 ; [-317]
      434 SETTABLEKS                       R13 R6 K69 ["allModules"]
      436 DUPCLOSURE                       R14 K70 [PROTO_4]
      437 CAPTURE                          VAL R13
      438 SETTABLEKS                       R14 R6 K71 ["getValidationModule"]
      440 RETURN                           R6 1
