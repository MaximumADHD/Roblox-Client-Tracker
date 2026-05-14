MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 GETTABLEKS                       R3 R3 K8 ["QueuedSession"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K28 [{"Empty", "Cube", "Sphere", "Octahedron", "Dodecahedron", "Rhombicosidodecahedron", "RigAsset", "EnvironmentalAsset", "InvalidAsset", "HasImportDataError", "HasImportDataWarnings", "UploadSuccessAsset", "UploadFailedAsset", "ParsingAsset", "ImportingAsset", "AudioAsset", "VideoAsset", "ImageAsset", "LongFilePathTestAsset"}]
       24 GETTABLEKS                       R4 R2 K29 ["new"]
       26 CALL                             R4 0 1
       27 SETTABLEKS                       R4 R3 K9 ["Empty"]
       29 GETTABLEKS                       R4 R2 K29 ["new"]
       31 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
       32 LOADK                            R6 K10 ["Cube"]
       33 SETTABLEKS                       R6 R5 K30 ["assetName"]
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K31 ["enabled"]
       38 LOADK                            R6 K37 ["my/path/Cube"]
       39 SETTABLEKS                       R6 R5 K32 ["filepath"]
       41 GETTABLEKS                       R6 R1 K38 ["FileType"]
       43 GETTABLEKS                       R6 R6 K39 ["Scene"]
       45 SETTABLEKS                       R6 R5 K33 ["fileType"]
       47 LOADN                            R6 1
       48 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
       50 GETTABLEKS                       R6 R1 K40 ["SessionState"]
       52 GETTABLEKS                       R6 R6 K41 ["Parsed"]
       54 SETTABLEKS                       R6 R5 K35 ["state"]
       56 CALL                             R4 1 1
       57 SETTABLEKS                       R4 R3 K10 ["Cube"]
       59 GETTABLEKS                       R4 R2 K29 ["new"]
       61 DUPTABLE                         R5 K42 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
       62 LOADK                            R6 K11 ["Sphere"]
       63 SETTABLEKS                       R6 R5 K30 ["assetName"]
       65 LOADB                            R6 1
       66 SETTABLEKS                       R6 R5 K31 ["enabled"]
       68 LOADK                            R6 K43 ["my/path/Sphere"]
       69 SETTABLEKS                       R6 R5 K32 ["filepath"]
       71 LOADN                            R6 2
       72 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
       74 GETTABLEKS                       R6 R1 K40 ["SessionState"]
       76 GETTABLEKS                       R6 R6 K41 ["Parsed"]
       78 SETTABLEKS                       R6 R5 K35 ["state"]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K11 ["Sphere"]
       83 GETTABLEKS                       R4 R2 K29 ["new"]
       85 DUPTABLE                         R5 K42 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
       86 LOADK                            R6 K12 ["Octahedron"]
       87 SETTABLEKS                       R6 R5 K30 ["assetName"]
       89 LOADB                            R6 1
       90 SETTABLEKS                       R6 R5 K31 ["enabled"]
       92 LOADK                            R6 K44 ["my/path/Octahedron"]
       93 SETTABLEKS                       R6 R5 K32 ["filepath"]
       95 LOADN                            R6 3
       96 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
       98 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      100 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      102 SETTABLEKS                       R6 R5 K35 ["state"]
      104 CALL                             R4 1 1
      105 SETTABLEKS                       R4 R3 K12 ["Octahedron"]
      107 GETTABLEKS                       R4 R2 K29 ["new"]
      109 DUPTABLE                         R5 K42 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
      110 LOADK                            R6 K13 ["Dodecahedron"]
      111 SETTABLEKS                       R6 R5 K30 ["assetName"]
      113 LOADB                            R6 1
      114 SETTABLEKS                       R6 R5 K31 ["enabled"]
      116 LOADK                            R6 K45 ["my/path/Dodecahedron"]
      117 SETTABLEKS                       R6 R5 K32 ["filepath"]
      119 LOADN                            R6 4
      120 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      122 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      124 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      126 SETTABLEKS                       R6 R5 K35 ["state"]
      128 CALL                             R4 1 1
      129 SETTABLEKS                       R4 R3 K13 ["Dodecahedron"]
      131 GETTABLEKS                       R4 R2 K29 ["new"]
      133 DUPTABLE                         R5 K42 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
      134 LOADK                            R6 K14 ["Rhombicosidodecahedron"]
      135 SETTABLEKS                       R6 R5 K30 ["assetName"]
      137 LOADB                            R6 1
      138 SETTABLEKS                       R6 R5 K31 ["enabled"]
      140 LOADK                            R6 K46 ["my/path/Rhombicosidodecahedron"]
      141 SETTABLEKS                       R6 R5 K32 ["filepath"]
      143 LOADN                            R6 5
      144 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      146 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      148 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      150 SETTABLEKS                       R6 R5 K35 ["state"]
      152 CALL                             R4 1 1
      153 SETTABLEKS                       R4 R3 K14 ["Rhombicosidodecahedron"]
      155 GETTABLEKS                       R4 R2 K29 ["new"]
      157 DUPTABLE                         R5 K42 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
      158 LOADK                            R6 K15 ["RigAsset"]
      159 SETTABLEKS                       R6 R5 K30 ["assetName"]
      161 LOADB                            R6 1
      162 SETTABLEKS                       R6 R5 K31 ["enabled"]
      164 LOADK                            R6 K47 ["my/path/RigAsset"]
      165 SETTABLEKS                       R6 R5 K32 ["filepath"]
      167 LOADN                            R6 6
      168 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      170 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      172 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      174 SETTABLEKS                       R6 R5 K35 ["state"]
      176 CALL                             R4 1 1
      177 SETTABLEKS                       R4 R3 K15 ["RigAsset"]
      179 GETTABLEKS                       R4 R2 K29 ["new"]
      181 DUPTABLE                         R5 K42 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
      182 LOADK                            R6 K16 ["EnvironmentalAsset"]
      183 SETTABLEKS                       R6 R5 K30 ["assetName"]
      185 LOADB                            R6 0
      186 SETTABLEKS                       R6 R5 K31 ["enabled"]
      188 LOADK                            R6 K48 ["my/path/EnvironmentalAsset"]
      189 SETTABLEKS                       R6 R5 K32 ["filepath"]
      191 LOADN                            R6 7
      192 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      194 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      196 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      198 SETTABLEKS                       R6 R5 K35 ["state"]
      200 CALL                             R4 1 1
      201 SETTABLEKS                       R4 R3 K16 ["EnvironmentalAsset"]
      203 GETTABLEKS                       R4 R2 K29 ["new"]
      205 DUPTABLE                         R5 K42 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
      206 LOADK                            R6 K17 ["InvalidAsset"]
      207 SETTABLEKS                       R6 R5 K30 ["assetName"]
      209 LOADB                            R6 0
      210 SETTABLEKS                       R6 R5 K31 ["enabled"]
      212 LOADK                            R6 K49 ["my/path/InvalidAsset"]
      213 SETTABLEKS                       R6 R5 K32 ["filepath"]
      215 LOADN                            R6 248
      216 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      218 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      220 GETTABLEKS                       R6 R6 K50 ["Invalid"]
      222 SETTABLEKS                       R6 R5 K35 ["state"]
      224 CALL                             R4 1 1
      225 SETTABLEKS                       R4 R3 K17 ["InvalidAsset"]
      227 GETTABLEKS                       R4 R2 K29 ["new"]
      229 DUPTABLE                         R5 K53 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "importDataError", "errors"}]
      230 LOADK                            R6 K18 ["HasImportDataError"]
      231 SETTABLEKS                       R6 R5 K30 ["assetName"]
      233 LOADB                            R6 0
      234 SETTABLEKS                       R6 R5 K31 ["enabled"]
      236 LOADK                            R6 K54 ["my/path/HasImportDataError"]
      237 SETTABLEKS                       R6 R5 K32 ["filepath"]
      239 GETTABLEKS                       R6 R1 K38 ["FileType"]
      241 GETTABLEKS                       R6 R6 K39 ["Scene"]
      243 SETTABLEKS                       R6 R5 K33 ["fileType"]
      245 LOADN                            R6 9
      246 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      248 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      250 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      252 SETTABLEKS                       R6 R5 K35 ["state"]
      254 LOADB                            R6 1
      255 SETTABLEKS                       R6 R5 K51 ["importDataError"]
      257 LOADN                            R6 2
      258 SETTABLEKS                       R6 R5 K52 ["errors"]
      260 CALL                             R4 1 1
      261 SETTABLEKS                       R4 R3 K18 ["HasImportDataError"]
      263 GETTABLEKS                       R4 R2 K29 ["new"]
      265 DUPTABLE                         R5 K56 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "warnings"}]
      266 LOADK                            R6 K19 ["HasImportDataWarnings"]
      267 SETTABLEKS                       R6 R5 K30 ["assetName"]
      269 LOADB                            R6 0
      270 SETTABLEKS                       R6 R5 K31 ["enabled"]
      272 LOADK                            R6 K57 ["my/path/HasImportDataWarnings"]
      273 SETTABLEKS                       R6 R5 K32 ["filepath"]
      275 GETTABLEKS                       R6 R1 K38 ["FileType"]
      277 GETTABLEKS                       R6 R6 K39 ["Scene"]
      279 SETTABLEKS                       R6 R5 K33 ["fileType"]
      281 LOADN                            R6 10
      282 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      284 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      286 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      288 SETTABLEKS                       R6 R5 K35 ["state"]
      290 LOADN                            R6 2
      291 SETTABLEKS                       R6 R5 K55 ["warnings"]
      293 CALL                             R4 1 1
      294 SETTABLEKS                       R4 R3 K19 ["HasImportDataWarnings"]
      296 GETTABLEKS                       R4 R2 K29 ["new"]
      298 DUPTABLE                         R5 K59 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "uploadResults"}]
      299 LOADK                            R6 K20 ["UploadSuccessAsset"]
      300 SETTABLEKS                       R6 R5 K30 ["assetName"]
      302 LOADB                            R6 0
      303 SETTABLEKS                       R6 R5 K31 ["enabled"]
      305 LOADK                            R6 K60 ["my/path/UploadSuccessAsset"]
      306 SETTABLEKS                       R6 R5 K32 ["filepath"]
      308 GETTABLEKS                       R6 R1 K38 ["FileType"]
      310 GETTABLEKS                       R6 R6 K39 ["Scene"]
      312 SETTABLEKS                       R6 R5 K33 ["fileType"]
      314 LOADN                            R6 11
      315 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      317 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      319 GETTABLEKS                       R6 R6 K61 ["Imported"]
      321 SETTABLEKS                       R6 R5 K35 ["state"]
      323 DUPTABLE                         R6 K66 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
      324 NEWTABLE                         R7 1 0
      326 LOADN                            R8 57
      327 SETTABLEKS                       R8 R7 K67 ["0"]
      329 SETTABLEKS                       R7 R6 K62 ["AssetIds"]
      331 NEWTABLE                         R7 0 0
      333 SETTABLEKS                       R7 R6 K63 ["ErrorMessages"]
      335 GETIMPORT                        R7 K68 [Instance.new]
      337 LOADK                            R8 K69 ["Model"]
      338 CALL                             R7 1 1
      339 SETTABLEKS                       R7 R6 K64 ["Instance"]
      341 LOADB                            R7 1
      342 SETTABLEKS                       R7 R6 K65 ["Succeeded"]
      344 SETTABLEKS                       R6 R5 K58 ["uploadResults"]
      346 CALL                             R4 1 1
      347 SETTABLEKS                       R4 R3 K20 ["UploadSuccessAsset"]
      349 GETTABLEKS                       R4 R2 K29 ["new"]
      351 DUPTABLE                         R5 K59 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "uploadResults"}]
      352 LOADK                            R6 K21 ["UploadFailedAsset"]
      353 SETTABLEKS                       R6 R5 K30 ["assetName"]
      355 LOADB                            R6 0
      356 SETTABLEKS                       R6 R5 K31 ["enabled"]
      358 LOADK                            R6 K70 ["my/path/UploadFailedAsset"]
      359 SETTABLEKS                       R6 R5 K32 ["filepath"]
      361 GETTABLEKS                       R6 R1 K38 ["FileType"]
      363 GETTABLEKS                       R6 R6 K39 ["Scene"]
      365 SETTABLEKS                       R6 R5 K33 ["fileType"]
      367 LOADN                            R6 12
      368 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      370 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      372 GETTABLEKS                       R6 R6 K61 ["Imported"]
      374 SETTABLEKS                       R6 R5 K35 ["state"]
      376 DUPTABLE                         R6 K66 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
      377 LOADNIL                          R7
      378 SETTABLEKS                       R7 R6 K62 ["AssetIds"]
      380 NEWTABLE                         R7 1 0
      382 LOADK                            R8 K71 ["Test Error Message"]
      383 SETTABLEKS                       R8 R7 K72 ["Asset1"]
      385 SETTABLEKS                       R7 R6 K63 ["ErrorMessages"]
      387 LOADNIL                          R7
      388 SETTABLEKS                       R7 R6 K64 ["Instance"]
      390 LOADB                            R7 0
      391 SETTABLEKS                       R7 R6 K65 ["Succeeded"]
      393 SETTABLEKS                       R6 R5 K58 ["uploadResults"]
      395 CALL                             R4 1 1
      396 SETTABLEKS                       R4 R3 K21 ["UploadFailedAsset"]
      398 GETTABLEKS                       R4 R2 K29 ["new"]
      400 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      401 LOADK                            R6 K10 ["Cube"]
      402 SETTABLEKS                       R6 R5 K30 ["assetName"]
      404 LOADB                            R6 1
      405 SETTABLEKS                       R6 R5 K31 ["enabled"]
      407 LOADK                            R6 K37 ["my/path/Cube"]
      408 SETTABLEKS                       R6 R5 K32 ["filepath"]
      410 GETTABLEKS                       R6 R1 K38 ["FileType"]
      412 GETTABLEKS                       R6 R6 K39 ["Scene"]
      414 SETTABLEKS                       R6 R5 K33 ["fileType"]
      416 LOADN                            R6 13
      417 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      419 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      421 GETTABLEKS                       R6 R6 K73 ["Parsing"]
      423 SETTABLEKS                       R6 R5 K35 ["state"]
      425 CALL                             R4 1 1
      426 SETTABLEKS                       R4 R3 K22 ["ParsingAsset"]
      428 GETTABLEKS                       R4 R2 K29 ["new"]
      430 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      431 LOADK                            R6 K10 ["Cube"]
      432 SETTABLEKS                       R6 R5 K30 ["assetName"]
      434 LOADB                            R6 1
      435 SETTABLEKS                       R6 R5 K31 ["enabled"]
      437 LOADK                            R6 K37 ["my/path/Cube"]
      438 SETTABLEKS                       R6 R5 K32 ["filepath"]
      440 GETTABLEKS                       R6 R1 K38 ["FileType"]
      442 GETTABLEKS                       R6 R6 K39 ["Scene"]
      444 SETTABLEKS                       R6 R5 K33 ["fileType"]
      446 LOADN                            R6 14
      447 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      449 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      451 GETTABLEKS                       R6 R6 K74 ["Importing"]
      453 SETTABLEKS                       R6 R5 K35 ["state"]
      455 CALL                             R4 1 1
      456 SETTABLEKS                       R4 R3 K23 ["ImportingAsset"]
      458 GETTABLEKS                       R4 R2 K29 ["new"]
      460 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      461 LOADK                            R6 K75 ["Audio"]
      462 SETTABLEKS                       R6 R5 K30 ["assetName"]
      464 LOADB                            R6 1
      465 SETTABLEKS                       R6 R5 K31 ["enabled"]
      467 LOADK                            R6 K76 ["my/path/Audio.mp3"]
      468 SETTABLEKS                       R6 R5 K32 ["filepath"]
      470 GETTABLEKS                       R6 R1 K38 ["FileType"]
      472 GETTABLEKS                       R6 R6 K75 ["Audio"]
      474 SETTABLEKS                       R6 R5 K33 ["fileType"]
      476 LOADN                            R6 15
      477 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      479 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      481 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      483 SETTABLEKS                       R6 R5 K35 ["state"]
      485 CALL                             R4 1 1
      486 SETTABLEKS                       R4 R3 K24 ["AudioAsset"]
      488 GETTABLEKS                       R4 R2 K29 ["new"]
      490 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      491 LOADK                            R6 K77 ["Video"]
      492 SETTABLEKS                       R6 R5 K30 ["assetName"]
      494 LOADB                            R6 1
      495 SETTABLEKS                       R6 R5 K31 ["enabled"]
      497 LOADK                            R6 K78 ["my/path/Video.mp4"]
      498 SETTABLEKS                       R6 R5 K32 ["filepath"]
      500 GETTABLEKS                       R6 R1 K38 ["FileType"]
      502 GETTABLEKS                       R6 R6 K77 ["Video"]
      504 SETTABLEKS                       R6 R5 K33 ["fileType"]
      506 LOADN                            R6 16
      507 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      509 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      511 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      513 SETTABLEKS                       R6 R5 K35 ["state"]
      515 CALL                             R4 1 1
      516 SETTABLEKS                       R4 R3 K25 ["VideoAsset"]
      518 GETTABLEKS                       R4 R2 K29 ["new"]
      520 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      521 LOADK                            R6 K79 ["Image"]
      522 SETTABLEKS                       R6 R5 K30 ["assetName"]
      524 LOADB                            R6 1
      525 SETTABLEKS                       R6 R5 K31 ["enabled"]
      527 LOADK                            R6 K80 ["my/path/Image.png"]
      528 SETTABLEKS                       R6 R5 K32 ["filepath"]
      530 GETTABLEKS                       R6 R1 K38 ["FileType"]
      532 GETTABLEKS                       R6 R6 K79 ["Image"]
      534 SETTABLEKS                       R6 R5 K33 ["fileType"]
      536 LOADN                            R6 17
      537 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      539 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      541 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      543 SETTABLEKS                       R6 R5 K35 ["state"]
      545 CALL                             R4 1 1
      546 SETTABLEKS                       R4 R3 K26 ["ImageAsset"]
      548 GETTABLEKS                       R4 R2 K29 ["new"]
      550 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      551 LOADK                            R6 K10 ["Cube"]
      552 SETTABLEKS                       R6 R5 K30 ["assetName"]
      554 LOADB                            R6 1
      555 SETTABLEKS                       R6 R5 K31 ["enabled"]
      557 LOADK                            R6 K81 ["Users/mysteriouslylongusername/Desktop/Roblox/supersecret.fbx"]
      558 SETTABLEKS                       R6 R5 K32 ["filepath"]
      560 GETTABLEKS                       R6 R1 K38 ["FileType"]
      562 GETTABLEKS                       R6 R6 K39 ["Scene"]
      564 SETTABLEKS                       R6 R5 K33 ["fileType"]
      566 LOADN                            R6 1
      567 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      569 GETTABLEKS                       R6 R1 K40 ["SessionState"]
      571 GETTABLEKS                       R6 R6 K41 ["Parsed"]
      573 SETTABLEKS                       R6 R5 K35 ["state"]
      575 CALL                             R4 1 1
      576 SETTABLEKS                       R4 R3 K27 ["LongFilePathTestAsset"]
      578 RETURN                           R3 1
