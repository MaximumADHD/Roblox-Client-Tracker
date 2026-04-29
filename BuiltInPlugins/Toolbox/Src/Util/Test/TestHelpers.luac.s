PROTO_0:
        0 GETIMPORT                        R0 K2 [Color3.new]
        2 GETIMPORT                        R1 K5 [math.random]
        4 CALL                             R1 0 1
        5 GETIMPORT                        R2 K5 [math.random]
        7 CALL                             R2 0 1
        8 GETIMPORT                        R3 K5 [math.random]
       10 CALL                             R3 0 -1
       11 CALL                             R0 -1 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R3 K1 [{"__index"}]
        3 DUPCLOSURE                       R4 K2 [PROTO_0]
        4 SETTABLEKS                       R4 R3 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R3 K1 [{"__index"}]
        3 DUPCLOSURE                       R4 K2 [PROTO_2]
        4 SETTABLEKS                       R4 R3 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+4]
        5 LOADNIL                          R2
        6 SETUPVAL                         R2 1
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 SETUPVAL                         R1 1
       10 LOADB                            R2 0
       11 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [error]
        2 GETIMPORT                        R1 K4 [string.format]
        4 LOADK                            R2 K5 ["pollAssertionUntil failed after %ds:\n%s"]
        5 GETUPVAL                         R4 0
        6 ORK                              R3 R4 K6 [1]
        7 GETUPVAL                         R5 1
        8 FASTCALL1                        TOSTRING R5 ; [+2]
        9 GETIMPORT                        R4 K8 [tostring]
       11 CALL                             R4 1 1
       12 CALL                             R1 3 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          REF R2
        5 MOVE                             R5 R1
        6 CALL                             R3 2 1
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          REF R2
       10 NAMECALL                         R3 R3 K0 ["catch"]
       12 CALL                             R3 2 1
       13 NAMECALL                         R3 R3 K1 ["await"]
       15 CALL                             R3 1 -1
       16 CLOSEUPVALS                      R2
       17 RETURN                           R3 -1

PROTO_7:
        0 DUPTABLE                         R0 K5 [{"isBundlesControllerEnabled", "isBundlesCreationEnabled", "isBundlesPublishingEnabled", "isGroupBundlesUploadEnabled", "allowedBundleTypeSettings"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isBundlesControllerEnabled"]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K1 ["isBundlesCreationEnabled"]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K2 ["isBundlesPublishingEnabled"]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K3 ["isGroupBundlesUploadEnabled"]
       13 DUPTABLE                         R1 K10 [{"Body", "DynamicHead", "Shoes", "AvatarAnimations"}]
       14 DUPTABLE                         R2 K14 [{"allowedAssetTypeSettings", "marketplaceFeePercentage", "allowedPriceRange"}]
       15 DUPTABLE                         R3 K23 [{"DynamicHead", "LeftArm", "LeftLeg", "RightArm", "RightLeg", "Torso", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
       16 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       17 LOADN                            R5 1
       18 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
       20 LOADN                            R5 1
       21 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
       26 NEWTABLE                         R5 0 1
       28 LOADK                            R6 K29 [".rbxm"]
       29 SETLIST                          R5 R6 1 [1]
       31 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       33 SETTABLEKS                       R4 R3 K7 ["DynamicHead"]
       35 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       36 LOADN                            R5 1
       37 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
       39 LOADN                            R5 1
       40 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
       42 LOADB                            R5 1
       43 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
       45 NEWTABLE                         R5 0 1
       47 LOADK                            R6 K29 [".rbxm"]
       48 SETLIST                          R5 R6 1 [1]
       50 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       52 SETTABLEKS                       R4 R3 K15 ["LeftArm"]
       54 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       55 LOADN                            R5 1
       56 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
       58 LOADN                            R5 1
       59 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
       61 LOADB                            R5 1
       62 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
       64 NEWTABLE                         R5 0 1
       66 LOADK                            R6 K29 [".rbxm"]
       67 SETLIST                          R5 R6 1 [1]
       69 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       71 SETTABLEKS                       R4 R3 K16 ["LeftLeg"]
       73 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       74 LOADN                            R5 1
       75 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
       77 LOADN                            R5 1
       78 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
       80 LOADB                            R5 1
       81 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
       83 NEWTABLE                         R5 0 1
       85 LOADK                            R6 K29 [".rbxm"]
       86 SETLIST                          R5 R6 1 [1]
       88 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       90 SETTABLEKS                       R4 R3 K17 ["RightArm"]
       92 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       93 LOADN                            R5 1
       94 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
       96 LOADN                            R5 1
       97 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
       99 LOADB                            R5 1
      100 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      102 NEWTABLE                         R5 0 1
      104 LOADK                            R6 K29 [".rbxm"]
      105 SETLIST                          R5 R6 1 [1]
      107 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      109 SETTABLEKS                       R4 R3 K18 ["RightLeg"]
      111 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      112 LOADN                            R5 1
      113 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      115 LOADN                            R5 1
      116 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      118 LOADB                            R5 1
      119 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      121 NEWTABLE                         R5 0 1
      123 LOADK                            R6 K29 [".rbxm"]
      124 SETLIST                          R5 R6 1 [1]
      126 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      128 SETTABLEKS                       R4 R3 K19 ["Torso"]
      130 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      131 LOADN                            R5 0
      132 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      134 LOADN                            R5 1
      135 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      137 LOADB                            R5 1
      138 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      140 NEWTABLE                         R5 0 1
      142 LOADK                            R6 K29 [".rbxm"]
      143 SETLIST                          R5 R6 1 [1]
      145 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      147 SETTABLEKS                       R4 R3 K20 ["EyebrowAccessory"]
      149 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      150 LOADN                            R5 0
      151 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      153 LOADN                            R5 1
      154 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      156 LOADB                            R5 1
      157 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      159 NEWTABLE                         R5 0 1
      161 LOADK                            R6 K29 [".rbxm"]
      162 SETLIST                          R5 R6 1 [1]
      164 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      166 SETTABLEKS                       R4 R3 K21 ["EyelashAccessory"]
      168 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      169 LOADN                            R5 0
      170 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      172 LOADN                            R5 1
      173 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      175 LOADB                            R5 1
      176 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      178 NEWTABLE                         R5 0 1
      180 LOADK                            R6 K29 [".rbxm"]
      181 SETLIST                          R5 R6 1 [1]
      183 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      185 SETTABLEKS                       R4 R3 K22 ["HairAccessory"]
      187 SETTABLEKS                       R3 R2 K11 ["allowedAssetTypeSettings"]
      189 LOADN                            R3 30
      190 SETTABLEKS                       R3 R2 K12 ["marketplaceFeePercentage"]
      192 DUPTABLE                         R3 K32 [{"minimumPrice", "maximumPrice"}]
      193 LOADN                            R4 175
      194 SETTABLEKS                       R4 R3 K30 ["minimumPrice"]
      196 LOADN                            R4 16
      197 SETTABLEKS                       R4 R3 K31 ["maximumPrice"]
      199 SETTABLEKS                       R3 R2 K13 ["allowedPriceRange"]
      201 SETTABLEKS                       R2 R1 K6 ["Body"]
      203 DUPTABLE                         R2 K14 [{"allowedAssetTypeSettings", "marketplaceFeePercentage", "allowedPriceRange"}]
      204 DUPTABLE                         R3 K33 [{"DynamicHead", "EyebrowAccessory", "EyelashAccessory"}]
      205 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      206 LOADN                            R5 1
      207 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      209 LOADN                            R5 1
      210 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      212 LOADB                            R5 1
      213 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      215 NEWTABLE                         R5 0 1
      217 LOADK                            R6 K29 [".rbxm"]
      218 SETLIST                          R5 R6 1 [1]
      220 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      222 SETTABLEKS                       R4 R3 K7 ["DynamicHead"]
      224 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      225 LOADN                            R5 0
      226 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      228 LOADN                            R5 1
      229 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      231 LOADB                            R5 1
      232 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      234 NEWTABLE                         R5 0 1
      236 LOADK                            R6 K29 [".rbxm"]
      237 SETLIST                          R5 R6 1 [1]
      239 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      241 SETTABLEKS                       R4 R3 K20 ["EyebrowAccessory"]
      243 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      244 LOADN                            R5 0
      245 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      247 LOADN                            R5 1
      248 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      250 LOADB                            R5 1
      251 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      253 NEWTABLE                         R5 0 1
      255 LOADK                            R6 K29 [".rbxm"]
      256 SETLIST                          R5 R6 1 [1]
      258 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      260 SETTABLEKS                       R4 R3 K21 ["EyelashAccessory"]
      262 SETTABLEKS                       R3 R2 K11 ["allowedAssetTypeSettings"]
      264 LOADN                            R3 30
      265 SETTABLEKS                       R3 R2 K12 ["marketplaceFeePercentage"]
      267 DUPTABLE                         R3 K32 [{"minimumPrice", "maximumPrice"}]
      268 LOADN                            R4 75
      269 SETTABLEKS                       R4 R3 K30 ["minimumPrice"]
      271 LOADN                            R4 16
      272 SETTABLEKS                       R4 R3 K31 ["maximumPrice"]
      274 SETTABLEKS                       R3 R2 K13 ["allowedPriceRange"]
      276 SETTABLEKS                       R2 R1 K7 ["DynamicHead"]
      278 DUPTABLE                         R2 K14 [{"allowedAssetTypeSettings", "marketplaceFeePercentage", "allowedPriceRange"}]
      279 DUPTABLE                         R3 K36 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      280 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      281 LOADN                            R5 1
      282 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      284 LOADN                            R5 1
      285 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      287 LOADB                            R5 1
      288 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      290 NEWTABLE                         R5 0 1
      292 LOADK                            R6 K29 [".rbxm"]
      293 SETLIST                          R5 R6 1 [1]
      295 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      297 SETTABLEKS                       R4 R3 K34 ["LeftShoeAccessory"]
      299 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      300 LOADN                            R5 0
      301 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      303 LOADN                            R5 1
      304 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      306 LOADB                            R5 1
      307 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      309 NEWTABLE                         R5 0 1
      311 LOADK                            R6 K29 [".rbxm"]
      312 SETLIST                          R5 R6 1 [1]
      314 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      316 SETTABLEKS                       R4 R3 K35 ["RightShoeAccessory"]
      318 SETTABLEKS                       R3 R2 K11 ["allowedAssetTypeSettings"]
      320 LOADN                            R3 30
      321 SETTABLEKS                       R3 R2 K12 ["marketplaceFeePercentage"]
      323 DUPTABLE                         R3 K32 [{"minimumPrice", "maximumPrice"}]
      324 LOADN                            R4 75
      325 SETTABLEKS                       R4 R3 K30 ["minimumPrice"]
      327 LOADN                            R4 16
      328 SETTABLEKS                       R4 R3 K31 ["maximumPrice"]
      330 SETTABLEKS                       R3 R2 K13 ["allowedPriceRange"]
      332 SETTABLEKS                       R2 R1 K8 ["Shoes"]
      334 DUPTABLE                         R2 K14 [{"allowedAssetTypeSettings", "marketplaceFeePercentage", "allowedPriceRange"}]
      335 DUPTABLE                         R3 K44 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      336 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      337 LOADN                            R5 1
      338 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      340 LOADN                            R5 1
      341 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      343 LOADB                            R5 1
      344 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      346 NEWTABLE                         R5 0 1
      348 LOADK                            R6 K29 [".rbxm"]
      349 SETLIST                          R5 R6 1 [1]
      351 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      353 SETTABLEKS                       R4 R3 K37 ["ClimbAnimation"]
      355 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      356 LOADN                            R5 1
      357 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      359 LOADN                            R5 1
      360 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      362 LOADB                            R5 1
      363 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      365 NEWTABLE                         R5 0 1
      367 LOADK                            R6 K29 [".rbxm"]
      368 SETLIST                          R5 R6 1 [1]
      370 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      372 SETTABLEKS                       R4 R3 K38 ["FallAnimation"]
      374 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      375 LOADN                            R5 1
      376 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      378 LOADN                            R5 1
      379 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      381 LOADB                            R5 1
      382 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      384 NEWTABLE                         R5 0 1
      386 LOADK                            R6 K29 [".rbxm"]
      387 SETLIST                          R5 R6 1 [1]
      389 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      391 SETTABLEKS                       R4 R3 K39 ["IdleAnimation"]
      393 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      394 LOADN                            R5 1
      395 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      397 LOADN                            R5 1
      398 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      400 LOADB                            R5 1
      401 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      403 NEWTABLE                         R5 0 1
      405 LOADK                            R6 K29 [".rbxm"]
      406 SETLIST                          R5 R6 1 [1]
      408 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      410 SETTABLEKS                       R4 R3 K40 ["JumpAnimation"]
      412 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      413 LOADN                            R5 1
      414 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      416 LOADN                            R5 1
      417 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      419 LOADB                            R5 1
      420 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      422 NEWTABLE                         R5 0 1
      424 LOADK                            R6 K29 [".rbxm"]
      425 SETLIST                          R5 R6 1 [1]
      427 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      429 SETTABLEKS                       R4 R3 K41 ["RunAnimation"]
      431 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      432 LOADN                            R5 1
      433 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      435 LOADN                            R5 1
      436 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      438 LOADB                            R5 1
      439 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      441 NEWTABLE                         R5 0 1
      443 LOADK                            R6 K29 [".rbxm"]
      444 SETLIST                          R5 R6 1 [1]
      446 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      448 SETTABLEKS                       R4 R3 K42 ["SwimAnimation"]
      450 DUPTABLE                         R4 K28 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      451 LOADN                            R5 1
      452 SETTABLEKS                       R5 R4 K24 ["minimumQuantity"]
      454 LOADN                            R5 1
      455 SETTABLEKS                       R5 R4 K25 ["maximumQuantity"]
      457 LOADB                            R5 1
      458 SETTABLEKS                       R5 R4 K26 ["isEligibleForUpload"]
      460 NEWTABLE                         R5 0 1
      462 LOADK                            R6 K29 [".rbxm"]
      463 SETLIST                          R5 R6 1 [1]
      465 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      467 SETTABLEKS                       R4 R3 K43 ["WalkAnimation"]
      469 SETTABLEKS                       R3 R2 K11 ["allowedAssetTypeSettings"]
      471 LOADN                            R3 30
      472 SETTABLEKS                       R3 R2 K12 ["marketplaceFeePercentage"]
      474 DUPTABLE                         R3 K32 [{"minimumPrice", "maximumPrice"}]
      475 LOADN                            R4 0
      476 SETTABLEKS                       R4 R3 K30 ["minimumPrice"]
      478 LOADN                            R4 136
      479 SETTABLEKS                       R4 R3 K31 ["maximumPrice"]
      481 SETTABLEKS                       R3 R2 K13 ["allowedPriceRange"]
      483 SETTABLEKS                       R2 R1 K9 ["AvatarAnimations"]
      485 SETTABLEKS                       R1 R0 K4 ["allowedBundleTypeSettings"]
      487 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K8 ["Util"]
       16 GETTABLEKS                       R3 R4 K9 ["pollUntil"]
       18 NEWTABLE                         R4 4 0
       20 DUPCLOSURE                       R5 K10 [PROTO_1]
       21 SETTABLEKS                       R5 R4 K11 ["createMockStudioStyleGuideColor"]
       23 DUPCLOSURE                       R5 K12 [PROTO_3]
       24 SETTABLEKS                       R5 R4 K13 ["createMockStudioStyleGuideModifier"]
       26 DUPCLOSURE                       R5 K14 [PROTO_6]
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R5 R4 K15 ["pollAssertionUntil"]
       30 DUPCLOSURE                       R5 K16 [PROTO_7]
       31 SETTABLEKS                       R5 R4 K17 ["getMockBundlesMetadata"]
       33 RETURN                           R4 1
