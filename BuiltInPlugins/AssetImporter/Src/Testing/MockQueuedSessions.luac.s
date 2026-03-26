MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K7 ["Types"]
       20 GETTABLEKS                       R3 R4 K8 ["QueuedSession"]
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
       41 GETTABLEKS                       R7 R1 K38 ["FileType"]
       43 GETTABLEKS                       R6 R7 K39 ["Scene"]
       45 SETTABLEKS                       R6 R5 K33 ["fileType"]
       47 LOADN                            R6 1
       48 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
       50 GETTABLEKS                       R7 R1 K40 ["SessionState"]
       52 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
       74 GETTABLEKS                       R7 R1 K40 ["SessionState"]
       76 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
       98 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      100 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
      122 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      124 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
      146 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      148 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
      170 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      172 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
      194 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      196 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
      218 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      220 GETTABLEKS                       R6 R7 K50 ["Invalid"]
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
      239 GETTABLEKS                       R7 R1 K38 ["FileType"]
      241 GETTABLEKS                       R6 R7 K39 ["Scene"]
      243 SETTABLEKS                       R6 R5 K33 ["fileType"]
      245 LOADN                            R6 9
      246 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      248 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      250 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
      275 GETTABLEKS                       R7 R1 K38 ["FileType"]
      277 GETTABLEKS                       R6 R7 K39 ["Scene"]
      279 SETTABLEKS                       R6 R5 K33 ["fileType"]
      281 LOADN                            R6 10
      282 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      284 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      286 GETTABLEKS                       R6 R7 K41 ["Parsed"]
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
      308 GETTABLEKS                       R7 R1 K38 ["FileType"]
      310 GETTABLEKS                       R6 R7 K39 ["Scene"]
      312 SETTABLEKS                       R6 R5 K33 ["fileType"]
      314 LOADN                            R6 11
      315 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      317 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      319 GETTABLEKS                       R6 R7 K61 ["Imported"]
      321 SETTABLEKS                       R6 R5 K35 ["state"]
      323 DUPTABLE                         R6 K66 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
      324 NEWTABLE                         R7 0 0
      326 SETTABLEKS                       R7 R6 K62 ["AssetIds"]
      328 NEWTABLE                         R7 0 0
      330 SETTABLEKS                       R7 R6 K63 ["ErrorMessages"]
      332 LOADK                            R7 K67 ["test"]
      333 SETTABLEKS                       R7 R6 K64 ["Instance"]
      335 LOADB                            R7 1
      336 SETTABLEKS                       R7 R6 K65 ["Succeeded"]
      338 SETTABLEKS                       R6 R5 K58 ["uploadResults"]
      340 CALL                             R4 1 1
      341 SETTABLEKS                       R4 R3 K20 ["UploadSuccessAsset"]
      343 GETTABLEKS                       R4 R2 K29 ["new"]
      345 DUPTABLE                         R5 K59 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "uploadResults"}]
      346 LOADK                            R6 K21 ["UploadFailedAsset"]
      347 SETTABLEKS                       R6 R5 K30 ["assetName"]
      349 LOADB                            R6 0
      350 SETTABLEKS                       R6 R5 K31 ["enabled"]
      352 LOADK                            R6 K68 ["my/path/UploadFailedAsset"]
      353 SETTABLEKS                       R6 R5 K32 ["filepath"]
      355 GETTABLEKS                       R7 R1 K38 ["FileType"]
      357 GETTABLEKS                       R6 R7 K39 ["Scene"]
      359 SETTABLEKS                       R6 R5 K33 ["fileType"]
      361 LOADN                            R6 12
      362 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      364 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      366 GETTABLEKS                       R6 R7 K61 ["Imported"]
      368 SETTABLEKS                       R6 R5 K35 ["state"]
      370 DUPTABLE                         R6 K66 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
      371 NEWTABLE                         R7 0 0
      373 SETTABLEKS                       R7 R6 K62 ["AssetIds"]
      375 NEWTABLE                         R7 1 0
      377 LOADK                            R8 K69 ["Test Error Message"]
      378 SETTABLEKS                       R8 R7 K70 ["Asset1"]
      380 SETTABLEKS                       R7 R6 K63 ["ErrorMessages"]
      382 LOADK                            R7 K67 ["test"]
      383 SETTABLEKS                       R7 R6 K64 ["Instance"]
      385 LOADB                            R7 0
      386 SETTABLEKS                       R7 R6 K65 ["Succeeded"]
      388 SETTABLEKS                       R6 R5 K58 ["uploadResults"]
      390 CALL                             R4 1 1
      391 SETTABLEKS                       R4 R3 K21 ["UploadFailedAsset"]
      393 GETTABLEKS                       R4 R2 K29 ["new"]
      395 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      396 LOADK                            R6 K10 ["Cube"]
      397 SETTABLEKS                       R6 R5 K30 ["assetName"]
      399 LOADB                            R6 1
      400 SETTABLEKS                       R6 R5 K31 ["enabled"]
      402 LOADK                            R6 K37 ["my/path/Cube"]
      403 SETTABLEKS                       R6 R5 K32 ["filepath"]
      405 GETTABLEKS                       R7 R1 K38 ["FileType"]
      407 GETTABLEKS                       R6 R7 K39 ["Scene"]
      409 SETTABLEKS                       R6 R5 K33 ["fileType"]
      411 LOADN                            R6 13
      412 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      414 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      416 GETTABLEKS                       R6 R7 K71 ["Parsing"]
      418 SETTABLEKS                       R6 R5 K35 ["state"]
      420 CALL                             R4 1 1
      421 SETTABLEKS                       R4 R3 K22 ["ParsingAsset"]
      423 GETTABLEKS                       R4 R2 K29 ["new"]
      425 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      426 LOADK                            R6 K10 ["Cube"]
      427 SETTABLEKS                       R6 R5 K30 ["assetName"]
      429 LOADB                            R6 1
      430 SETTABLEKS                       R6 R5 K31 ["enabled"]
      432 LOADK                            R6 K37 ["my/path/Cube"]
      433 SETTABLEKS                       R6 R5 K32 ["filepath"]
      435 GETTABLEKS                       R7 R1 K38 ["FileType"]
      437 GETTABLEKS                       R6 R7 K39 ["Scene"]
      439 SETTABLEKS                       R6 R5 K33 ["fileType"]
      441 LOADN                            R6 14
      442 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      444 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      446 GETTABLEKS                       R6 R7 K72 ["Importing"]
      448 SETTABLEKS                       R6 R5 K35 ["state"]
      450 CALL                             R4 1 1
      451 SETTABLEKS                       R4 R3 K23 ["ImportingAsset"]
      453 GETTABLEKS                       R4 R2 K29 ["new"]
      455 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      456 LOADK                            R6 K73 ["Audio"]
      457 SETTABLEKS                       R6 R5 K30 ["assetName"]
      459 LOADB                            R6 1
      460 SETTABLEKS                       R6 R5 K31 ["enabled"]
      462 LOADK                            R6 K74 ["my/path/Audio.mp3"]
      463 SETTABLEKS                       R6 R5 K32 ["filepath"]
      465 GETTABLEKS                       R7 R1 K38 ["FileType"]
      467 GETTABLEKS                       R6 R7 K73 ["Audio"]
      469 SETTABLEKS                       R6 R5 K33 ["fileType"]
      471 LOADN                            R6 15
      472 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      474 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      476 GETTABLEKS                       R6 R7 K41 ["Parsed"]
      478 SETTABLEKS                       R6 R5 K35 ["state"]
      480 CALL                             R4 1 1
      481 SETTABLEKS                       R4 R3 K24 ["AudioAsset"]
      483 GETTABLEKS                       R4 R2 K29 ["new"]
      485 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      486 LOADK                            R6 K75 ["Video"]
      487 SETTABLEKS                       R6 R5 K30 ["assetName"]
      489 LOADB                            R6 1
      490 SETTABLEKS                       R6 R5 K31 ["enabled"]
      492 LOADK                            R6 K76 ["my/path/Video.mp4"]
      493 SETTABLEKS                       R6 R5 K32 ["filepath"]
      495 GETTABLEKS                       R7 R1 K38 ["FileType"]
      497 GETTABLEKS                       R6 R7 K75 ["Video"]
      499 SETTABLEKS                       R6 R5 K33 ["fileType"]
      501 LOADN                            R6 16
      502 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      504 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      506 GETTABLEKS                       R6 R7 K41 ["Parsed"]
      508 SETTABLEKS                       R6 R5 K35 ["state"]
      510 CALL                             R4 1 1
      511 SETTABLEKS                       R4 R3 K25 ["VideoAsset"]
      513 GETTABLEKS                       R4 R2 K29 ["new"]
      515 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      516 LOADK                            R6 K77 ["Image"]
      517 SETTABLEKS                       R6 R5 K30 ["assetName"]
      519 LOADB                            R6 1
      520 SETTABLEKS                       R6 R5 K31 ["enabled"]
      522 LOADK                            R6 K78 ["my/path/Image.png"]
      523 SETTABLEKS                       R6 R5 K32 ["filepath"]
      525 GETTABLEKS                       R7 R1 K38 ["FileType"]
      527 GETTABLEKS                       R6 R7 K77 ["Image"]
      529 SETTABLEKS                       R6 R5 K33 ["fileType"]
      531 LOADN                            R6 17
      532 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      534 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      536 GETTABLEKS                       R6 R7 K41 ["Parsed"]
      538 SETTABLEKS                       R6 R5 K35 ["state"]
      540 CALL                             R4 1 1
      541 SETTABLEKS                       R4 R3 K26 ["ImageAsset"]
      543 GETTABLEKS                       R4 R2 K29 ["new"]
      545 DUPTABLE                         R5 K36 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
      546 LOADK                            R6 K10 ["Cube"]
      547 SETTABLEKS                       R6 R5 K30 ["assetName"]
      549 LOADB                            R6 1
      550 SETTABLEKS                       R6 R5 K31 ["enabled"]
      552 LOADK                            R6 K79 ["Users/mysteriouslylongusername/Desktop/Roblox/supersecret.fbx"]
      553 SETTABLEKS                       R6 R5 K32 ["filepath"]
      555 GETTABLEKS                       R7 R1 K38 ["FileType"]
      557 GETTABLEKS                       R6 R7 K39 ["Scene"]
      559 SETTABLEKS                       R6 R5 K33 ["fileType"]
      561 LOADN                            R6 1
      562 SETTABLEKS                       R6 R5 K34 ["sortOrder"]
      564 GETTABLEKS                       R7 R1 K40 ["SessionState"]
      566 GETTABLEKS                       R6 R7 K41 ["Parsed"]
      568 SETTABLEKS                       R6 R5 K35 ["state"]
      570 CALL                             R4 1 1
      571 SETTABLEKS                       R4 R3 K27 ["LongFilePathTestAsset"]
      573 RETURN                           R3 1
