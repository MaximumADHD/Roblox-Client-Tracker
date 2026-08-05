PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 MOVE                             R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETIMPORT                        R5 K2 [math.random]
        8 LOADN                            R6 1
        9 LOADN                            R7 5
       10 CALL                             R5 2 1
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K3 ["asList"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K4 ["AssetType"]
       17 CALL                             R7 1 1
       18 GETIMPORT                        R8 K2 [math.random]
       20 LOADN                            R9 1
       21 LOADN                            R10 5
       22 CALL                             R8 2 1
       23 GETTABLE                         R6 R7 R8
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K3 ["asList"]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K5 ["ModerationStatus"]
       30 CALL                             R8 1 1
       31 GETIMPORT                        R9 K2 [math.random]
       33 LOADN                            R10 1
       34 LOADN                            R11 3
       35 CALL                             R9 2 1
       36 GETTABLE                         R7 R8 R9
       37 GETIMPORT                        R8 K2 [math.random]
       39 LOADN                            R9 1
       40 LOADN                            R10 10
       41 CALL                             R8 2 1
       42 JUMPIFNOTEQKN                    R4 K6 [1] ; [+7]
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K7 ["ScopeType"]
       47 GETTABLEKS                       R9 R9 K8 ["User"]
       49 JUMP                             ; [+5]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K7 ["ScopeType"]
       53 GETTABLEKS                       R9 R9 K9 ["Group"]
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K3 ["asList"]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R12 R12 K10 ["AssetSource"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K2 [math.random]
       64 LOADN                            R13 1
       65 LOADN                            R14 3
       66 CALL                             R12 2 1
       67 GETTABLE                         R10 R11 R12
       68 GETUPVAL                         R11 1
       69 DUPTABLE                         R12 K21 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"], ["VersionNumber"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
       70 LOADK                            R14 K22 ["users/%*/creator-inventory-items/asset-%*"]
       71 MOVE                             R16 R5
       72 GETUPVAL                         R17 1
       73 NAMECALL                         R14 R14 K23 ["format"]
       75 CALL                             R14 3 1
       76 MOVE                             R13 R14
       77 SETTABLEKS                       R13 R12 K11 ["Path"]
       79 GETUPVAL                         R13 1
       80 SETTABLEKS                       R13 R12 K12 ["AssetId"]
       82 SETTABLEKS                       R6 R12 K4 ["AssetType"]
       84 LOADK                            R14 K24 ["Test %*"]
       85 MOVE                             R16 R6
       86 NAMECALL                         R14 R14 K23 ["format"]
       88 CALL                             R14 2 1
       89 MOVE                             R13 R14
       90 SETTABLEKS                       R13 R12 K13 ["DisplayName"]
       92 SETTABLEKS                       R8 R12 K14 ["VersionNumber"]
       94 GETUPVAL                         R14 2
       95 CALL                             R14 0 1
       96 JUMPIFNOT                        R14 ; [+2]
       97 LOADK                            R13 K25 [1000000]
       98 JUMP                             ; [+1]
       99 LOADK                            R13 K26 ["2021-01-01T00:00:00Z"]
      100 SETTABLEKS                       R13 R12 K15 ["Created"]
      102 GETUPVAL                         R14 2
      103 CALL                             R14 0 1
      104 JUMPIFNOT                        R14 ; [+2]
      105 LOADK                            R13 K25 [1000000]
      106 JUMP                             ; [+1]
      107 LOADK                            R13 K26 ["2021-01-01T00:00:00Z"]
      108 SETTABLEKS                       R13 R12 K16 ["Modified"]
      110 SETTABLEKS                       R7 R12 K5 ["ModerationStatus"]
      112 DUPTABLE                         R13 K31 [{"Id", "Name", "Type", "Uid"}]
      113 SETTABLEKS                       R5 R13 K27 ["Id"]
      115 LOADK                            R15 K32 ["Creator %*"]
      116 MOVE                             R17 R5
      117 NAMECALL                         R15 R15 K23 ["format"]
      119 CALL                             R15 2 1
      120 MOVE                             R14 R15
      121 SETTABLEKS                       R14 R13 K28 ["Name"]
      123 SETTABLEKS                       R9 R13 K29 ["Type"]
      125 GETUPVAL                         R14 3
      126 MOVE                             R15 R9
      127 MOVE                             R16 R5
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K30 ["Uid"]
      131 SETTABLEKS                       R13 R12 K17 ["Creator"]
      133 SETTABLEKS                       R10 R12 K18 ["Source"]
      135 SETTABLE                         R12 R1 R11
      136 GETUPVAL                         R12 1
      137 ADDK                             R11 R12 K6 [1]
      138 SETUPVAL                         R11 1
      139 FORNLOOP                         R2
      140 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K9 ["createScopeUid"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrOptimizeLoadingPerformance"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 32 0
       34 LOADK                            R5 K12 [100000]
       35 SETTABLEKS                       R5 R4 K13 ["UserId"]
       37 LOADK                            R5 K14 ["TestUser"]
       38 SETTABLEKS                       R5 R4 K15 ["UserName"]
       40 LOADK                            R5 K16 [987654321]
       41 SETTABLEKS                       R5 R4 K17 ["GroupId1"]
       43 LOADK                            R5 K18 ["Group1"]
       44 SETTABLEKS                       R5 R4 K19 ["GroupName1"]
       46 LOADK                            R5 K20 [87654321]
       47 SETTABLEKS                       R5 R4 K21 ["GroupId2"]
       49 LOADK                            R5 K22 ["Group with a really long name"]
       50 SETTABLEKS                       R5 R4 K23 ["GroupName2"]
       52 LOADK                            R5 K24 [7654321]
       53 SETTABLEKS                       R5 R4 K25 ["GroupId3"]
       55 LOADK                            R5 K26 ["NoAssets :("]
       56 SETTABLEKS                       R5 R4 K27 ["GroupName3"]
       58 LOADN                            R5 123
       59 SETTABLEKS                       R5 R4 K28 ["ExperienceId"]
       61 LOADK                            R5 K29 ["TestExperience"]
       62 SETTABLEKS                       R5 R4 K30 ["ExperienceName"]
       64 GETIMPORT                        R5 K33 [math.randomseed]
       66 GETIMPORT                        R6 K35 [tick]
       68 CALL                             R6 0 -1
       69 CALL                             R5 -1 0
       70 GETIMPORT                        R5 K37 [math.random]
       72 LOADN                            R6 1000
       73 LOADK                            R7 K38 [1000000]
       74 CALL                             R5 2 1
       75 DUPTABLE                         R6 K41 [{"path", "assetItem"}]
       76 LOADK                            R8 K42 ["users/%*/creator-inventory-items/asset-1234567890"]
       77 GETTABLEKS                       R10 R4 K13 ["UserId"]
       79 NAMECALL                         R8 R8 K43 ["format"]
       81 CALL                             R8 2 1
       82 MOVE                             R7 R8
       83 SETTABLEKS                       R7 R6 K39 ["path"]
       85 DUPTABLE                         R7 K48 [{["asset"], ["sources"], ["isPackage"] = False}]
       86 DUPTABLE                         R8 K64 [{["createTime"] = "2021-01-01T00:00:00Z", ["updateTime"] = "2021-01-16T00:00:00Z", ["assetId"] = 1234567890, ["displayName"] = "Test Model", ["description"] = "This is a test model", ["assetType"] = "ASSET_TYPE_MODEL", ["creationContext"], ["state"] = "APPROVED"}]
       87 DUPTABLE                         R9 K66 [{"creator"}]
       88 DUPTABLE                         R10 K69 [{["userId"] = 123}]
       89 SETTABLEKS                       R10 R9 K65 ["creator"]
       91 SETTABLEKS                       R9 R8 K61 ["creationContext"]
       93 SETTABLEKS                       R8 R7 K44 ["asset"]
       95 NEWTABLE                         R8 0 1
       97 DUPTABLE                         R9 K71 [{"createdDetails"}]
       98 NEWTABLE                         R10 0 0
      100 SETTABLEKS                       R10 R9 K70 ["createdDetails"]
      102 SETLIST                          R8 R9 1 [1]
      104 SETTABLEKS                       R8 R7 K45 ["sources"]
      106 SETTABLEKS                       R7 R6 K40 ["assetItem"]
      108 NEWTABLE                         R7 0 1
      110 MOVE                             R8 R6
      111 SETLIST                          R7 R8 1 [1]
      113 SETTABLEKS                       R7 R4 K72 ["responseData"]
      115 NEWCLOSURE                       R7 P0
      116 CAPTURE                          VAL R1
      117 CAPTURE                          REF R5
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R2
      120 SETTABLEKS                       R7 R4 K73 ["generate"]
      122 NEWTABLE                         R7 0 17
      124 DUPTABLE                         R8 K88 [{["Path"], ["AssetId"] = 1234567890, ["AssetType"], ["DisplayName"] = "Test Model", ["Description"] = "This is a test model", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 1, ["Archived"] = False}]
      125 LOADK                            R10 K42 ["users/%*/creator-inventory-items/asset-1234567890"]
      126 GETTABLEKS                       R12 R4 K13 ["UserId"]
      128 NAMECALL                         R10 R10 K43 ["format"]
      130 CALL                             R10 2 1
      131 MOVE                             R9 R10
      132 SETTABLEKS                       R9 R8 K74 ["Path"]
      134 GETTABLEKS                       R9 R1 K76 ["AssetType"]
      136 GETTABLEKS                       R9 R9 K89 ["Model"]
      138 SETTABLEKS                       R9 R8 K76 ["AssetType"]
      140 MOVE                             R10 R3
      141 CALL                             R10 0 1
      142 JUMPIFNOT                        R10 ; [+2]
      143 LOADK                            R9 K38 [1000000]
      144 JUMP                             ; [+1]
      145 LOADK                            R9 K50 ["2021-01-01T00:00:00Z"]
      146 SETTABLEKS                       R9 R8 K81 ["Created"]
      148 MOVE                             R10 R3
      149 CALL                             R10 0 1
      150 JUMPIFNOT                        R10 ; [+2]
      151 LOADK                            R9 K90 [1160000]
      152 JUMP                             ; [+1]
      153 LOADK                            R9 K52 ["2021-01-16T00:00:00Z"]
      154 SETTABLEKS                       R9 R8 K82 ["Modified"]
      156 GETTABLEKS                       R9 R1 K83 ["ModerationStatus"]
      158 GETTABLEKS                       R9 R9 K91 ["Approved"]
      160 SETTABLEKS                       R9 R8 K83 ["ModerationStatus"]
      162 DUPTABLE                         R9 K96 [{"Id", "Name", "Type", "Uid"}]
      163 GETTABLEKS                       R10 R4 K13 ["UserId"]
      165 SETTABLEKS                       R10 R9 K92 ["Id"]
      167 GETTABLEKS                       R10 R4 K15 ["UserName"]
      169 SETTABLEKS                       R10 R9 K93 ["Name"]
      171 GETTABLEKS                       R10 R1 K97 ["ScopeType"]
      173 GETTABLEKS                       R10 R10 K98 ["User"]
      175 SETTABLEKS                       R10 R9 K94 ["Type"]
      177 MOVE                             R10 R2
      178 GETTABLEKS                       R11 R1 K97 ["ScopeType"]
      180 GETTABLEKS                       R11 R11 K98 ["User"]
      182 GETTABLEKS                       R12 R4 K13 ["UserId"]
      184 CALL                             R10 2 1
      185 SETTABLEKS                       R10 R9 K95 ["Uid"]
      187 SETTABLEKS                       R9 R8 K84 ["Creator"]
      189 GETTABLEKS                       R9 R1 K99 ["AssetSource"]
      191 GETTABLEKS                       R9 R9 K100 ["Uploaded"]
      193 SETTABLEKS                       R9 R8 K85 ["Source"]
      195 DUPTABLE                         R9 K105 [{["Path"], ["AssetId"] = 1234567891, ["AssetType"], ["DisplayName"] = "Test Mesh", ["Description"] = "This is a test mesh", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 2, ["Archived"] = False}]
      196 LOADK                            R11 K106 ["users/%*/creator-inventory-items/asset-1234567891"]
      197 GETTABLEKS                       R13 R4 K13 ["UserId"]
      199 NAMECALL                         R11 R11 K43 ["format"]
      201 CALL                             R11 2 1
      202 MOVE                             R10 R11
      203 SETTABLEKS                       R10 R9 K74 ["Path"]
      205 GETTABLEKS                       R10 R1 K76 ["AssetType"]
      207 GETTABLEKS                       R10 R10 K107 ["Mesh"]
      209 SETTABLEKS                       R10 R9 K76 ["AssetType"]
      211 MOVE                             R11 R3
      212 CALL                             R11 0 1
      213 JUMPIFNOT                        R11 ; [+2]
      214 LOADK                            R10 K38 [1000000]
      215 JUMP                             ; [+1]
      216 LOADK                            R10 K50 ["2021-01-01T00:00:00Z"]
      217 SETTABLEKS                       R10 R9 K81 ["Created"]
      219 MOVE                             R11 R3
      220 CALL                             R11 0 1
      221 JUMPIFNOT                        R11 ; [+2]
      222 LOADK                            R10 K108 [1150000]
      223 JUMP                             ; [+1]
      224 LOADK                            R10 K109 ["2021-01-15T00:00:00Z"]
      225 SETTABLEKS                       R10 R9 K82 ["Modified"]
      227 GETTABLEKS                       R10 R1 K83 ["ModerationStatus"]
      229 GETTABLEKS                       R10 R10 K91 ["Approved"]
      231 SETTABLEKS                       R10 R9 K83 ["ModerationStatus"]
      233 DUPTABLE                         R10 K112 [{["Id"] = 1234567892, ["Name"] = "1234567892", ["Type"], ["Uid"]}]
      234 GETTABLEKS                       R11 R1 K97 ["ScopeType"]
      236 GETTABLEKS                       R11 R11 K113 ["Group"]
      238 SETTABLEKS                       R11 R10 K94 ["Type"]
      240 MOVE                             R11 R2
      241 GETTABLEKS                       R12 R1 K97 ["ScopeType"]
      243 GETTABLEKS                       R12 R12 K113 ["Group"]
      245 LOADK                            R13 K110 [1234567892]
      246 CALL                             R11 2 1
      247 SETTABLEKS                       R11 R10 K95 ["Uid"]
      249 SETTABLEKS                       R10 R9 K84 ["Creator"]
      251 GETTABLEKS                       R10 R1 K99 ["AssetSource"]
      253 GETTABLEKS                       R10 R10 K100 ["Uploaded"]
      255 SETTABLEKS                       R10 R9 K85 ["Source"]
      257 DUPTABLE                         R10 K117 [{["Path"], ["AssetId"] = 1234567892, ["AssetType"], ["DisplayName"] = "Test Image", ["Description"] = "This is a test image", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 3, ["Archived"] = False}]
      258 LOADK                            R12 K118 ["users/%*/creator-inventory-items/asset-1234567892"]
      259 GETTABLEKS                       R14 R4 K13 ["UserId"]
      261 NAMECALL                         R12 R12 K43 ["format"]
      263 CALL                             R12 2 1
      264 MOVE                             R11 R12
      265 SETTABLEKS                       R11 R10 K74 ["Path"]
      267 GETTABLEKS                       R11 R1 K76 ["AssetType"]
      269 GETTABLEKS                       R11 R11 K119 ["Image"]
      271 SETTABLEKS                       R11 R10 K76 ["AssetType"]
      273 MOVE                             R12 R3
      274 CALL                             R12 0 1
      275 JUMPIFNOT                        R12 ; [+2]
      276 LOADK                            R11 K38 [1000000]
      277 JUMP                             ; [+1]
      278 LOADK                            R11 K50 ["2021-01-01T00:00:00Z"]
      279 SETTABLEKS                       R11 R10 K81 ["Created"]
      281 MOVE                             R12 R3
      282 CALL                             R12 0 1
      283 JUMPIFNOT                        R12 ; [+2]
      284 LOADK                            R11 K120 [1140000]
      285 JUMP                             ; [+1]
      286 LOADK                            R11 K121 ["2021-01-14T00:00:00Z"]
      287 SETTABLEKS                       R11 R10 K82 ["Modified"]
      289 GETTABLEKS                       R11 R1 K83 ["ModerationStatus"]
      291 GETTABLEKS                       R11 R11 K91 ["Approved"]
      293 SETTABLEKS                       R11 R10 K83 ["ModerationStatus"]
      295 DUPTABLE                         R11 K124 [{["Id"] = 1234567893, ["Name"] = "1234567893", ["Type"], ["Uid"]}]
      296 GETTABLEKS                       R12 R1 K97 ["ScopeType"]
      298 GETTABLEKS                       R12 R12 K113 ["Group"]
      300 SETTABLEKS                       R12 R11 K94 ["Type"]
      302 MOVE                             R12 R2
      303 GETTABLEKS                       R13 R1 K97 ["ScopeType"]
      305 GETTABLEKS                       R13 R13 K113 ["Group"]
      307 LOADK                            R14 K122 [1234567893]
      308 CALL                             R12 2 1
      309 SETTABLEKS                       R12 R11 K95 ["Uid"]
      311 SETTABLEKS                       R11 R10 K84 ["Creator"]
      313 GETTABLEKS                       R11 R1 K99 ["AssetSource"]
      315 GETTABLEKS                       R11 R11 K100 ["Uploaded"]
      317 SETTABLEKS                       R11 R10 K85 ["Source"]
      319 DUPTABLE                         R11 K128 [{["Path"], ["AssetId"] = 1234567893, ["AssetType"], ["DisplayName"] = "Test Audio", ["Description"] = "This is a test audio", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 4, ["Archived"] = False}]
      320 LOADK                            R13 K129 ["users/%*/creator-inventory-items/asset-1234567893"]
      321 GETTABLEKS                       R15 R4 K13 ["UserId"]
      323 NAMECALL                         R13 R13 K43 ["format"]
      325 CALL                             R13 2 1
      326 MOVE                             R12 R13
      327 SETTABLEKS                       R12 R11 K74 ["Path"]
      329 GETTABLEKS                       R12 R1 K76 ["AssetType"]
      331 GETTABLEKS                       R12 R12 K130 ["Audio"]
      333 SETTABLEKS                       R12 R11 K76 ["AssetType"]
      335 MOVE                             R13 R3
      336 CALL                             R13 0 1
      337 JUMPIFNOT                        R13 ; [+2]
      338 LOADK                            R12 K38 [1000000]
      339 JUMP                             ; [+1]
      340 LOADK                            R12 K50 ["2021-01-01T00:00:00Z"]
      341 SETTABLEKS                       R12 R11 K81 ["Created"]
      343 MOVE                             R13 R3
      344 CALL                             R13 0 1
      345 JUMPIFNOT                        R13 ; [+2]
      346 LOADK                            R12 K131 [1130000]
      347 JUMP                             ; [+1]
      348 LOADK                            R12 K132 ["2021-01-13T00:00:00Z"]
      349 SETTABLEKS                       R12 R11 K82 ["Modified"]
      351 GETTABLEKS                       R12 R1 K83 ["ModerationStatus"]
      353 GETTABLEKS                       R12 R12 K91 ["Approved"]
      355 SETTABLEKS                       R12 R11 K83 ["ModerationStatus"]
      357 DUPTABLE                         R12 K135 [{["Id"] = 1234567894, ["Name"] = "1234567894", ["Type"], ["Uid"]}]
      358 GETTABLEKS                       R13 R1 K97 ["ScopeType"]
      360 GETTABLEKS                       R13 R13 K113 ["Group"]
      362 SETTABLEKS                       R13 R12 K94 ["Type"]
      364 MOVE                             R13 R2
      365 GETTABLEKS                       R14 R1 K97 ["ScopeType"]
      367 GETTABLEKS                       R14 R14 K113 ["Group"]
      369 LOADK                            R15 K133 [1234567894]
      370 CALL                             R13 2 1
      371 SETTABLEKS                       R13 R12 K95 ["Uid"]
      373 SETTABLEKS                       R12 R11 K84 ["Creator"]
      375 GETTABLEKS                       R12 R1 K99 ["AssetSource"]
      377 GETTABLEKS                       R12 R12 K100 ["Uploaded"]
      379 SETTABLEKS                       R12 R11 K85 ["Source"]
      381 DUPTABLE                         R12 K139 [{["Path"], ["AssetId"] = 1234567894, ["AssetType"], ["DisplayName"] = "Test Video", ["Description"] = "This is a test video", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 5, ["Archived"] = False}]
      382 LOADK                            R14 K140 ["users/%*/creator-inventory-items/asset-1234567894"]
      383 GETTABLEKS                       R16 R4 K13 ["UserId"]
      385 NAMECALL                         R14 R14 K43 ["format"]
      387 CALL                             R14 2 1
      388 MOVE                             R13 R14
      389 SETTABLEKS                       R13 R12 K74 ["Path"]
      391 GETTABLEKS                       R13 R1 K76 ["AssetType"]
      393 GETTABLEKS                       R13 R13 K141 ["Video"]
      395 SETTABLEKS                       R13 R12 K76 ["AssetType"]
      397 MOVE                             R14 R3
      398 CALL                             R14 0 1
      399 JUMPIFNOT                        R14 ; [+2]
      400 LOADK                            R13 K38 [1000000]
      401 JUMP                             ; [+1]
      402 LOADK                            R13 K50 ["2021-01-01T00:00:00Z"]
      403 SETTABLEKS                       R13 R12 K81 ["Created"]
      405 MOVE                             R14 R3
      406 CALL                             R14 0 1
      407 JUMPIFNOT                        R14 ; [+2]
      408 LOADK                            R13 K142 [1120000]
      409 JUMP                             ; [+1]
      410 LOADK                            R13 K143 ["2021-01-12T00:00:00Z"]
      411 SETTABLEKS                       R13 R12 K82 ["Modified"]
      413 GETTABLEKS                       R13 R1 K83 ["ModerationStatus"]
      415 GETTABLEKS                       R13 R13 K91 ["Approved"]
      417 SETTABLEKS                       R13 R12 K83 ["ModerationStatus"]
      419 DUPTABLE                         R13 K146 [{["Id"] = 1234567895, ["Name"] = "1234567895", ["Type"], ["Uid"]}]
      420 GETTABLEKS                       R14 R1 K97 ["ScopeType"]
      422 GETTABLEKS                       R14 R14 K113 ["Group"]
      424 SETTABLEKS                       R14 R13 K94 ["Type"]
      426 MOVE                             R14 R2
      427 GETTABLEKS                       R15 R1 K97 ["ScopeType"]
      429 GETTABLEKS                       R15 R15 K113 ["Group"]
      431 LOADK                            R16 K144 [1234567895]
      432 CALL                             R14 2 1
      433 SETTABLEKS                       R14 R13 K95 ["Uid"]
      435 SETTABLEKS                       R13 R12 K84 ["Creator"]
      437 GETTABLEKS                       R13 R1 K99 ["AssetSource"]
      439 GETTABLEKS                       R13 R13 K100 ["Uploaded"]
      441 SETTABLEKS                       R13 R12 K85 ["Source"]
      443 DUPTABLE                         R13 K148 [{["Path"], ["AssetId"] = 1234567895, ["AssetType"], ["DisplayName"] = "Test Image", ["Description"] = "This is a test image", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 6, ["Archived"] = False}]
      444 LOADK                            R15 K149 ["users/%*/creator-inventory-items/asset-1234567895"]
      445 GETTABLEKS                       R17 R4 K13 ["UserId"]
      447 NAMECALL                         R15 R15 K43 ["format"]
      449 CALL                             R15 2 1
      450 MOVE                             R14 R15
      451 SETTABLEKS                       R14 R13 K74 ["Path"]
      453 GETTABLEKS                       R14 R1 K76 ["AssetType"]
      455 GETTABLEKS                       R14 R14 K119 ["Image"]
      457 SETTABLEKS                       R14 R13 K76 ["AssetType"]
      459 MOVE                             R15 R3
      460 CALL                             R15 0 1
      461 JUMPIFNOT                        R15 ; [+2]
      462 LOADK                            R14 K38 [1000000]
      463 JUMP                             ; [+1]
      464 LOADK                            R14 K50 ["2021-01-01T00:00:00Z"]
      465 SETTABLEKS                       R14 R13 K81 ["Created"]
      467 MOVE                             R15 R3
      468 CALL                             R15 0 1
      469 JUMPIFNOT                        R15 ; [+2]
      470 LOADK                            R14 K150 [1110000]
      471 JUMP                             ; [+1]
      472 LOADK                            R14 K151 ["2021-01-11T00:00:00Z"]
      473 SETTABLEKS                       R14 R13 K82 ["Modified"]
      475 GETTABLEKS                       R14 R1 K83 ["ModerationStatus"]
      477 GETTABLEKS                       R14 R14 K91 ["Approved"]
      479 SETTABLEKS                       R14 R13 K83 ["ModerationStatus"]
      481 DUPTABLE                         R14 K154 [{["Id"] = 1234567896, ["Name"] = "1234567896", ["Type"], ["Uid"]}]
      482 GETTABLEKS                       R15 R1 K97 ["ScopeType"]
      484 GETTABLEKS                       R15 R15 K113 ["Group"]
      486 SETTABLEKS                       R15 R14 K94 ["Type"]
      488 MOVE                             R15 R2
      489 GETTABLEKS                       R16 R1 K97 ["ScopeType"]
      491 GETTABLEKS                       R16 R16 K113 ["Group"]
      493 LOADK                            R17 K152 [1234567896]
      494 CALL                             R15 2 1
      495 SETTABLEKS                       R15 R14 K95 ["Uid"]
      497 SETTABLEKS                       R14 R13 K84 ["Creator"]
      499 GETTABLEKS                       R14 R1 K99 ["AssetSource"]
      501 GETTABLEKS                       R14 R14 K100 ["Uploaded"]
      503 SETTABLEKS                       R14 R13 K85 ["Source"]
      505 DUPTABLE                         R14 K156 [{["Path"], ["AssetId"] = 1234567896, ["AssetType"], ["DisplayName"] = "Test Video", ["Description"] = "This is a test video", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 7, ["Archived"] = False}]
      506 LOADK                            R16 K157 ["users/%*/creator-inventory-items/asset-1234567896"]
      507 GETTABLEKS                       R18 R4 K13 ["UserId"]
      509 NAMECALL                         R16 R16 K43 ["format"]
      511 CALL                             R16 2 1
      512 MOVE                             R15 R16
      513 SETTABLEKS                       R15 R14 K74 ["Path"]
      515 GETTABLEKS                       R15 R1 K76 ["AssetType"]
      517 GETTABLEKS                       R15 R15 K141 ["Video"]
      519 SETTABLEKS                       R15 R14 K76 ["AssetType"]
      521 MOVE                             R16 R3
      522 CALL                             R16 0 1
      523 JUMPIFNOT                        R16 ; [+2]
      524 LOADK                            R15 K38 [1000000]
      525 JUMP                             ; [+1]
      526 LOADK                            R15 K50 ["2021-01-01T00:00:00Z"]
      527 SETTABLEKS                       R15 R14 K81 ["Created"]
      529 MOVE                             R16 R3
      530 CALL                             R16 0 1
      531 JUMPIFNOT                        R16 ; [+2]
      532 LOADK                            R15 K158 [1100000]
      533 JUMP                             ; [+1]
      534 LOADK                            R15 K159 ["2021-01-10T00:00:00Z"]
      535 SETTABLEKS                       R15 R14 K82 ["Modified"]
      537 GETTABLEKS                       R15 R1 K83 ["ModerationStatus"]
      539 GETTABLEKS                       R15 R15 K91 ["Approved"]
      541 SETTABLEKS                       R15 R14 K83 ["ModerationStatus"]
      543 DUPTABLE                         R15 K162 [{["Id"] = 1234567897, ["Name"] = "1234567897", ["Type"], ["Uid"]}]
      544 GETTABLEKS                       R16 R1 K97 ["ScopeType"]
      546 GETTABLEKS                       R16 R16 K113 ["Group"]
      548 SETTABLEKS                       R16 R15 K94 ["Type"]
      550 MOVE                             R16 R2
      551 GETTABLEKS                       R17 R1 K97 ["ScopeType"]
      553 GETTABLEKS                       R17 R17 K113 ["Group"]
      555 LOADK                            R18 K160 [1234567897]
      556 CALL                             R16 2 1
      557 SETTABLEKS                       R16 R15 K95 ["Uid"]
      559 SETTABLEKS                       R15 R14 K84 ["Creator"]
      561 GETTABLEKS                       R15 R1 K99 ["AssetSource"]
      563 GETTABLEKS                       R15 R15 K100 ["Uploaded"]
      565 SETTABLEKS                       R15 R14 K85 ["Source"]
      567 DUPTABLE                         R15 K166 [{["Path"], ["AssetId"] = 1234567897, ["AssetType"], ["DisplayName"] = "Test Animation", ["Description"] = "This is a test animation", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 8, ["Archived"] = False}]
      568 LOADK                            R17 K167 ["users/%*/creator-inventory-items/asset-1234567897"]
      569 GETTABLEKS                       R19 R4 K13 ["UserId"]
      571 NAMECALL                         R17 R17 K43 ["format"]
      573 CALL                             R17 2 1
      574 MOVE                             R16 R17
      575 SETTABLEKS                       R16 R15 K74 ["Path"]
      577 GETTABLEKS                       R16 R1 K76 ["AssetType"]
      579 GETTABLEKS                       R16 R16 K168 ["Animation"]
      581 SETTABLEKS                       R16 R15 K76 ["AssetType"]
      583 MOVE                             R17 R3
      584 CALL                             R17 0 1
      585 JUMPIFNOT                        R17 ; [+2]
      586 LOADK                            R16 K38 [1000000]
      587 JUMP                             ; [+1]
      588 LOADK                            R16 K50 ["2021-01-01T00:00:00Z"]
      589 SETTABLEKS                       R16 R15 K81 ["Created"]
      591 MOVE                             R17 R3
      592 CALL                             R17 0 1
      593 JUMPIFNOT                        R17 ; [+2]
      594 LOADK                            R16 K169 [1090000]
      595 JUMP                             ; [+1]
      596 LOADK                            R16 K170 ["2021-01-09T00:00:00Z"]
      597 SETTABLEKS                       R16 R15 K82 ["Modified"]
      599 GETTABLEKS                       R16 R1 K83 ["ModerationStatus"]
      601 GETTABLEKS                       R16 R16 K91 ["Approved"]
      603 SETTABLEKS                       R16 R15 K83 ["ModerationStatus"]
      605 DUPTABLE                         R16 K173 [{["Id"] = 1234567898, ["Name"] = "1234567898", ["Type"], ["Uid"]}]
      606 GETTABLEKS                       R17 R1 K97 ["ScopeType"]
      608 GETTABLEKS                       R17 R17 K113 ["Group"]
      610 SETTABLEKS                       R17 R16 K94 ["Type"]
      612 MOVE                             R17 R2
      613 GETTABLEKS                       R18 R1 K97 ["ScopeType"]
      615 GETTABLEKS                       R18 R18 K113 ["Group"]
      617 LOADK                            R19 K171 [1234567898]
      618 CALL                             R17 2 1
      619 SETTABLEKS                       R17 R16 K95 ["Uid"]
      621 SETTABLEKS                       R16 R15 K84 ["Creator"]
      623 GETTABLEKS                       R16 R1 K99 ["AssetSource"]
      625 GETTABLEKS                       R16 R16 K100 ["Uploaded"]
      627 SETTABLEKS                       R16 R15 K85 ["Source"]
      629 DUPTABLE                         R16 K179 [{["Path"], ["AssetId"] = 1234567898, ["AssetType"], ["DisplayName"] = "Mock Model", ["Description"] = "This is a mock model", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["SearchRank"] = 9, ["Source"], ["Archived"] = False, ["IsPackage"] = True}]
      630 LOADK                            R18 K180 ["users/%*/creator-inventory-items/asset-1234567898"]
      631 GETTABLEKS                       R20 R4 K13 ["UserId"]
      633 NAMECALL                         R18 R18 K43 ["format"]
      635 CALL                             R18 2 1
      636 MOVE                             R17 R18
      637 SETTABLEKS                       R17 R16 K74 ["Path"]
      639 GETTABLEKS                       R17 R1 K76 ["AssetType"]
      641 GETTABLEKS                       R17 R17 K89 ["Model"]
      643 SETTABLEKS                       R17 R16 K76 ["AssetType"]
      645 MOVE                             R18 R3
      646 CALL                             R18 0 1
      647 JUMPIFNOT                        R18 ; [+2]
      648 LOADK                            R17 K38 [1000000]
      649 JUMP                             ; [+1]
      650 LOADK                            R17 K50 ["2021-01-01T00:00:00Z"]
      651 SETTABLEKS                       R17 R16 K81 ["Created"]
      653 MOVE                             R18 R3
      654 CALL                             R18 0 1
      655 JUMPIFNOT                        R18 ; [+2]
      656 LOADK                            R17 K181 [1080000]
      657 JUMP                             ; [+1]
      658 LOADK                            R17 K182 ["2021-01-08T00:00:00Z"]
      659 SETTABLEKS                       R17 R16 K82 ["Modified"]
      661 GETTABLEKS                       R17 R1 K83 ["ModerationStatus"]
      663 GETTABLEKS                       R17 R17 K91 ["Approved"]
      665 SETTABLEKS                       R17 R16 K83 ["ModerationStatus"]
      667 DUPTABLE                         R17 K184 [{["Id"] = 1234567890, ["Name"] = "TestOtherUser", ["Type"], ["Uid"]}]
      668 GETTABLEKS                       R18 R1 K97 ["ScopeType"]
      670 GETTABLEKS                       R18 R18 K98 ["User"]
      672 SETTABLEKS                       R18 R17 K94 ["Type"]
      674 MOVE                             R18 R2
      675 GETTABLEKS                       R19 R1 K97 ["ScopeType"]
      677 GETTABLEKS                       R19 R19 K98 ["User"]
      679 LOADK                            R20 K54 [1234567890]
      680 CALL                             R18 2 1
      681 SETTABLEKS                       R18 R17 K95 ["Uid"]
      683 SETTABLEKS                       R17 R16 K84 ["Creator"]
      685 GETTABLEKS                       R17 R1 K99 ["AssetSource"]
      687 GETTABLEKS                       R17 R17 K185 ["SharedWithMe"]
      689 SETTABLEKS                       R17 R16 K85 ["Source"]
      691 DUPTABLE                         R17 K190 [{["Path"], ["AssetId"] = 1234567899, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 10, ["Archived"] = False}]
      692 LOADK                            R19 K191 ["users/%*/creator-inventory-items/asset-1234567899"]
      693 GETTABLEKS                       R21 R4 K13 ["UserId"]
      695 NAMECALL                         R19 R19 K43 ["format"]
      697 CALL                             R19 2 1
      698 MOVE                             R18 R19
      699 SETTABLEKS                       R18 R17 K74 ["Path"]
      701 GETTABLEKS                       R18 R1 K76 ["AssetType"]
      703 GETTABLEKS                       R18 R18 K107 ["Mesh"]
      705 SETTABLEKS                       R18 R17 K76 ["AssetType"]
      707 MOVE                             R19 R3
      708 CALL                             R19 0 1
      709 JUMPIFNOT                        R19 ; [+2]
      710 LOADK                            R18 K38 [1000000]
      711 JUMP                             ; [+1]
      712 LOADK                            R18 K50 ["2021-01-01T00:00:00Z"]
      713 SETTABLEKS                       R18 R17 K81 ["Created"]
      715 MOVE                             R19 R3
      716 CALL                             R19 0 1
      717 JUMPIFNOT                        R19 ; [+2]
      718 LOADK                            R18 K192 [1070000]
      719 JUMP                             ; [+1]
      720 LOADK                            R18 K193 ["2021-01-07T00:00:00Z"]
      721 SETTABLEKS                       R18 R17 K82 ["Modified"]
      723 GETTABLEKS                       R18 R1 K83 ["ModerationStatus"]
      725 GETTABLEKS                       R18 R18 K91 ["Approved"]
      727 SETTABLEKS                       R18 R17 K83 ["ModerationStatus"]
      729 DUPTABLE                         R18 K196 [{["Id"] = 1234567900, ["Name"] = "1234567900", ["Type"], ["Uid"]}]
      730 GETTABLEKS                       R19 R1 K97 ["ScopeType"]
      732 GETTABLEKS                       R19 R19 K113 ["Group"]
      734 SETTABLEKS                       R19 R18 K94 ["Type"]
      736 MOVE                             R19 R2
      737 GETTABLEKS                       R20 R1 K97 ["ScopeType"]
      739 GETTABLEKS                       R20 R20 K113 ["Group"]
      741 LOADK                            R21 K194 [1234567900]
      742 CALL                             R19 2 1
      743 SETTABLEKS                       R19 R18 K95 ["Uid"]
      745 SETTABLEKS                       R18 R17 K84 ["Creator"]
      747 GETTABLEKS                       R18 R1 K99 ["AssetSource"]
      749 GETTABLEKS                       R18 R18 K100 ["Uploaded"]
      751 SETTABLEKS                       R18 R17 K85 ["Source"]
      753 DUPTABLE                         R18 K200 [{["Path"], ["AssetId"] = 1234567900, ["AssetType"], ["DisplayName"] = "Mock Plugin", ["Description"] = "This is a mock Plugin", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 11, ["Archived"] = False}]
      754 LOADK                            R20 K201 ["users/%*/creator-inventory-items/asset-1234567900"]
      755 GETTABLEKS                       R22 R4 K13 ["UserId"]
      757 NAMECALL                         R20 R20 K43 ["format"]
      759 CALL                             R20 2 1
      760 MOVE                             R19 R20
      761 SETTABLEKS                       R19 R18 K74 ["Path"]
      763 GETTABLEKS                       R19 R1 K76 ["AssetType"]
      765 GETTABLEKS                       R19 R19 K202 ["Plugin"]
      767 SETTABLEKS                       R19 R18 K76 ["AssetType"]
      769 MOVE                             R20 R3
      770 CALL                             R20 0 1
      771 JUMPIFNOT                        R20 ; [+2]
      772 LOADK                            R19 K38 [1000000]
      773 JUMP                             ; [+1]
      774 LOADK                            R19 K50 ["2021-01-01T00:00:00Z"]
      775 SETTABLEKS                       R19 R18 K81 ["Created"]
      777 MOVE                             R20 R3
      778 CALL                             R20 0 1
      779 JUMPIFNOT                        R20 ; [+2]
      780 LOADK                            R19 K203 [1060000]
      781 JUMP                             ; [+1]
      782 LOADK                            R19 K204 ["2021-01-06T00:00:00Z"]
      783 SETTABLEKS                       R19 R18 K82 ["Modified"]
      785 GETTABLEKS                       R19 R1 K83 ["ModerationStatus"]
      787 GETTABLEKS                       R19 R19 K91 ["Approved"]
      789 SETTABLEKS                       R19 R18 K83 ["ModerationStatus"]
      791 DUPTABLE                         R19 K207 [{["Id"] = 1234567901, ["Name"] = "1234567901", ["Type"], ["Uid"]}]
      792 GETTABLEKS                       R20 R1 K97 ["ScopeType"]
      794 GETTABLEKS                       R20 R20 K113 ["Group"]
      796 SETTABLEKS                       R20 R19 K94 ["Type"]
      798 MOVE                             R20 R2
      799 GETTABLEKS                       R21 R1 K97 ["ScopeType"]
      801 GETTABLEKS                       R21 R21 K113 ["Group"]
      803 LOADK                            R22 K205 [1234567901]
      804 CALL                             R20 2 1
      805 SETTABLEKS                       R20 R19 K95 ["Uid"]
      807 SETTABLEKS                       R19 R18 K84 ["Creator"]
      809 GETTABLEKS                       R19 R1 K99 ["AssetSource"]
      811 GETTABLEKS                       R19 R19 K100 ["Uploaded"]
      813 SETTABLEKS                       R19 R18 K85 ["Source"]
      815 DUPTABLE                         R19 K211 [{["Path"], ["AssetId"] = 1234567901, ["AssetType"], ["DisplayName"] = "Mock Audio", ["Description"] = "This is a mock audio", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 12, ["Archived"] = False}]
      816 LOADK                            R21 K212 ["users/%*/creator-inventory-items/asset-1234567901"]
      817 GETTABLEKS                       R23 R4 K13 ["UserId"]
      819 NAMECALL                         R21 R21 K43 ["format"]
      821 CALL                             R21 2 1
      822 MOVE                             R20 R21
      823 SETTABLEKS                       R20 R19 K74 ["Path"]
      825 GETTABLEKS                       R20 R1 K76 ["AssetType"]
      827 GETTABLEKS                       R20 R20 K130 ["Audio"]
      829 SETTABLEKS                       R20 R19 K76 ["AssetType"]
      831 MOVE                             R21 R3
      832 CALL                             R21 0 1
      833 JUMPIFNOT                        R21 ; [+2]
      834 LOADK                            R20 K38 [1000000]
      835 JUMP                             ; [+1]
      836 LOADK                            R20 K50 ["2021-01-01T00:00:00Z"]
      837 SETTABLEKS                       R20 R19 K81 ["Created"]
      839 MOVE                             R21 R3
      840 CALL                             R21 0 1
      841 JUMPIFNOT                        R21 ; [+2]
      842 LOADK                            R20 K213 [1050000]
      843 JUMP                             ; [+1]
      844 LOADK                            R20 K214 ["2021-01-05T00:00:00Z"]
      845 SETTABLEKS                       R20 R19 K82 ["Modified"]
      847 GETTABLEKS                       R20 R1 K83 ["ModerationStatus"]
      849 GETTABLEKS                       R20 R20 K91 ["Approved"]
      851 SETTABLEKS                       R20 R19 K83 ["ModerationStatus"]
      853 DUPTABLE                         R20 K217 [{["Id"] = 1234567902, ["Name"] = "1234567902", ["Type"], ["Uid"]}]
      854 GETTABLEKS                       R21 R1 K97 ["ScopeType"]
      856 GETTABLEKS                       R21 R21 K113 ["Group"]
      858 SETTABLEKS                       R21 R20 K94 ["Type"]
      860 MOVE                             R21 R2
      861 GETTABLEKS                       R22 R1 K97 ["ScopeType"]
      863 GETTABLEKS                       R22 R22 K113 ["Group"]
      865 LOADK                            R23 K215 [1234567902]
      866 CALL                             R21 2 1
      867 SETTABLEKS                       R21 R20 K95 ["Uid"]
      869 SETTABLEKS                       R20 R19 K84 ["Creator"]
      871 GETTABLEKS                       R20 R1 K99 ["AssetSource"]
      873 GETTABLEKS                       R20 R20 K100 ["Uploaded"]
      875 SETTABLEKS                       R20 R19 K85 ["Source"]
      877 DUPTABLE                         R20 K219 [{["Path"], ["AssetId"] = 1234567902, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 13, ["Archived"] = False}]
      878 LOADK                            R22 K220 ["users/%*/creator-inventory-items/asset-1234567902"]
      879 GETTABLEKS                       R24 R4 K13 ["UserId"]
      881 NAMECALL                         R22 R22 K43 ["format"]
      883 CALL                             R22 2 1
      884 MOVE                             R21 R22
      885 SETTABLEKS                       R21 R20 K74 ["Path"]
      887 GETTABLEKS                       R21 R1 K76 ["AssetType"]
      889 GETTABLEKS                       R21 R21 K107 ["Mesh"]
      891 SETTABLEKS                       R21 R20 K76 ["AssetType"]
      893 MOVE                             R22 R3
      894 CALL                             R22 0 1
      895 JUMPIFNOT                        R22 ; [+2]
      896 LOADK                            R21 K38 [1000000]
      897 JUMP                             ; [+1]
      898 LOADK                            R21 K50 ["2021-01-01T00:00:00Z"]
      899 SETTABLEKS                       R21 R20 K81 ["Created"]
      901 MOVE                             R22 R3
      902 CALL                             R22 0 1
      903 JUMPIFNOT                        R22 ; [+2]
      904 LOADK                            R21 K221 [1040000]
      905 JUMP                             ; [+1]
      906 LOADK                            R21 K222 ["2021-01-04T00:00:00Z"]
      907 SETTABLEKS                       R21 R20 K82 ["Modified"]
      909 GETTABLEKS                       R21 R1 K83 ["ModerationStatus"]
      911 GETTABLEKS                       R21 R21 K91 ["Approved"]
      913 SETTABLEKS                       R21 R20 K83 ["ModerationStatus"]
      915 DUPTABLE                         R21 K225 [{["Id"] = 1234567903, ["Name"] = "1234567903", ["Type"], ["Uid"]}]
      916 GETTABLEKS                       R22 R1 K97 ["ScopeType"]
      918 GETTABLEKS                       R22 R22 K113 ["Group"]
      920 SETTABLEKS                       R22 R21 K94 ["Type"]
      922 MOVE                             R22 R2
      923 GETTABLEKS                       R23 R1 K97 ["ScopeType"]
      925 GETTABLEKS                       R23 R23 K113 ["Group"]
      927 LOADK                            R24 K223 [1234567903]
      928 CALL                             R22 2 1
      929 SETTABLEKS                       R22 R21 K95 ["Uid"]
      931 SETTABLEKS                       R21 R20 K84 ["Creator"]
      933 GETTABLEKS                       R21 R1 K99 ["AssetSource"]
      935 GETTABLEKS                       R21 R21 K100 ["Uploaded"]
      937 SETTABLEKS                       R21 R20 K85 ["Source"]
      939 DUPTABLE                         R21 K229 [{["Path"], ["AssetId"] = 1234567903, ["AssetType"], ["DisplayName"] = "Mock Image", ["Description"] = "This is a mock image", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 14, ["Archived"] = False}]
      940 LOADK                            R23 K230 ["users/%*/creator-inventory-items/asset-1234567903"]
      941 GETTABLEKS                       R25 R4 K13 ["UserId"]
      943 NAMECALL                         R23 R23 K43 ["format"]
      945 CALL                             R23 2 1
      946 MOVE                             R22 R23
      947 SETTABLEKS                       R22 R21 K74 ["Path"]
      949 GETTABLEKS                       R22 R1 K76 ["AssetType"]
      951 GETTABLEKS                       R22 R22 K119 ["Image"]
      953 SETTABLEKS                       R22 R21 K76 ["AssetType"]
      955 MOVE                             R23 R3
      956 CALL                             R23 0 1
      957 JUMPIFNOT                        R23 ; [+2]
      958 LOADK                            R22 K38 [1000000]
      959 JUMP                             ; [+1]
      960 LOADK                            R22 K50 ["2021-01-01T00:00:00Z"]
      961 SETTABLEKS                       R22 R21 K81 ["Created"]
      963 MOVE                             R23 R3
      964 CALL                             R23 0 1
      965 JUMPIFNOT                        R23 ; [+2]
      966 LOADK                            R22 K231 [1030000]
      967 JUMP                             ; [+1]
      968 LOADK                            R22 K232 ["2021-01-03T00:00:00Z"]
      969 SETTABLEKS                       R22 R21 K82 ["Modified"]
      971 GETTABLEKS                       R22 R1 K83 ["ModerationStatus"]
      973 GETTABLEKS                       R22 R22 K91 ["Approved"]
      975 SETTABLEKS                       R22 R21 K83 ["ModerationStatus"]
      977 DUPTABLE                         R22 K235 [{["Id"] = 1234567904, ["Name"] = "1234567904", ["Type"], ["Uid"]}]
      978 GETTABLEKS                       R23 R1 K97 ["ScopeType"]
      980 GETTABLEKS                       R23 R23 K236 ["Universe"]
      982 SETTABLEKS                       R23 R22 K94 ["Type"]
      984 MOVE                             R23 R2
      985 GETTABLEKS                       R24 R1 K97 ["ScopeType"]
      987 GETTABLEKS                       R24 R24 K236 ["Universe"]
      989 LOADK                            R25 K233 [1234567904]
      990 CALL                             R23 2 1
      991 SETTABLEKS                       R23 R22 K95 ["Uid"]
      993 SETTABLEKS                       R22 R21 K84 ["Creator"]
      995 GETTABLEKS                       R22 R1 K99 ["AssetSource"]
      997 GETTABLEKS                       R22 R22 K100 ["Uploaded"]
      999 SETTABLEKS                       R22 R21 K85 ["Source"]
     1001 DUPTABLE                         R22 K240 [{["Path"], ["AssetId"] = 1234567904, ["AssetType"], ["DisplayName"] = "Mock FontFamily", ["Description"] = "This is a mock FontFamily", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 15, ["Archived"] = False}]
     1002 LOADK                            R24 K241 ["users/%*/creator-inventory-items/asset-1234567904"]
     1003 GETTABLEKS                       R26 R4 K13 ["UserId"]
     1005 NAMECALL                         R24 R24 K43 ["format"]
     1007 CALL                             R24 2 1
     1008 MOVE                             R23 R24
     1009 SETTABLEKS                       R23 R22 K74 ["Path"]
     1011 GETTABLEKS                       R23 R1 K76 ["AssetType"]
     1013 GETTABLEKS                       R23 R23 K242 ["FontFamily"]
     1015 SETTABLEKS                       R23 R22 K76 ["AssetType"]
     1017 MOVE                             R24 R3
     1018 CALL                             R24 0 1
     1019 JUMPIFNOT                        R24 ; [+2]
     1020 LOADK                            R23 K38 [1000000]
     1021 JUMP                             ; [+1]
     1022 LOADK                            R23 K50 ["2021-01-01T00:00:00Z"]
     1023 SETTABLEKS                       R23 R22 K81 ["Created"]
     1025 MOVE                             R24 R3
     1026 CALL                             R24 0 1
     1027 JUMPIFNOT                        R24 ; [+2]
     1028 LOADK                            R23 K243 [1020000]
     1029 JUMP                             ; [+1]
     1030 LOADK                            R23 K244 ["2021-01-02T00:00:00Z"]
     1031 SETTABLEKS                       R23 R22 K82 ["Modified"]
     1033 GETTABLEKS                       R23 R1 K83 ["ModerationStatus"]
     1035 GETTABLEKS                       R23 R23 K91 ["Approved"]
     1037 SETTABLEKS                       R23 R22 K83 ["ModerationStatus"]
     1039 DUPTABLE                         R23 K247 [{["Id"] = 1234567905, ["Name"] = "1234567905", ["Type"], ["Uid"]}]
     1040 GETTABLEKS                       R24 R1 K97 ["ScopeType"]
     1042 GETTABLEKS                       R24 R24 K113 ["Group"]
     1044 SETTABLEKS                       R24 R23 K94 ["Type"]
     1046 MOVE                             R24 R2
     1047 GETTABLEKS                       R25 R1 K97 ["ScopeType"]
     1049 GETTABLEKS                       R25 R25 K113 ["Group"]
     1051 LOADK                            R26 K245 [1234567905]
     1052 CALL                             R24 2 1
     1053 SETTABLEKS                       R24 R23 K95 ["Uid"]
     1055 SETTABLEKS                       R23 R22 K84 ["Creator"]
     1057 GETTABLEKS                       R23 R1 K99 ["AssetSource"]
     1059 GETTABLEKS                       R23 R23 K100 ["Uploaded"]
     1061 SETTABLEKS                       R23 R22 K85 ["Source"]
     1063 DUPTABLE                         R23 K251 [{["Path"], ["AssetId"] = 1234567905, ["AssetType"], ["DisplayName"] = "Mock Animation", ["Description"] = "This is a mock animation", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 16, ["Archived"] = False}]
     1064 LOADK                            R25 K252 ["users/%*/creator-inventory-items/asset-1234567905"]
     1065 GETTABLEKS                       R27 R4 K13 ["UserId"]
     1067 NAMECALL                         R25 R25 K43 ["format"]
     1069 CALL                             R25 2 1
     1070 MOVE                             R24 R25
     1071 SETTABLEKS                       R24 R23 K74 ["Path"]
     1073 GETTABLEKS                       R24 R1 K76 ["AssetType"]
     1075 GETTABLEKS                       R24 R24 K168 ["Animation"]
     1077 SETTABLEKS                       R24 R23 K76 ["AssetType"]
     1079 MOVE                             R25 R3
     1080 CALL                             R25 0 1
     1081 JUMPIFNOT                        R25 ; [+2]
     1082 LOADK                            R24 K38 [1000000]
     1083 JUMP                             ; [+1]
     1084 LOADK                            R24 K50 ["2021-01-01T00:00:00Z"]
     1085 SETTABLEKS                       R24 R23 K81 ["Created"]
     1087 MOVE                             R25 R3
     1088 CALL                             R25 0 1
     1089 JUMPIFNOT                        R25 ; [+2]
     1090 LOADK                            R24 K253 [1010000]
     1091 JUMP                             ; [+1]
     1092 LOADK                            R24 K50 ["2021-01-01T00:00:00Z"]
     1093 SETTABLEKS                       R24 R23 K82 ["Modified"]
     1095 GETTABLEKS                       R24 R1 K83 ["ModerationStatus"]
     1097 GETTABLEKS                       R24 R24 K91 ["Approved"]
     1099 SETTABLEKS                       R24 R23 K83 ["ModerationStatus"]
     1101 DUPTABLE                         R24 K256 [{["Id"] = 1234567906, ["Name"] = "1234567906", ["Type"], ["Uid"]}]
     1102 GETTABLEKS                       R25 R1 K97 ["ScopeType"]
     1104 GETTABLEKS                       R25 R25 K113 ["Group"]
     1106 SETTABLEKS                       R25 R24 K94 ["Type"]
     1108 MOVE                             R25 R2
     1109 GETTABLEKS                       R26 R1 K97 ["ScopeType"]
     1111 GETTABLEKS                       R26 R26 K113 ["Group"]
     1113 LOADK                            R27 K254 [1234567906]
     1114 CALL                             R25 2 1
     1115 SETTABLEKS                       R25 R24 K95 ["Uid"]
     1117 SETTABLEKS                       R24 R23 K84 ["Creator"]
     1119 GETTABLEKS                       R24 R1 K99 ["AssetSource"]
     1121 GETTABLEKS                       R24 R24 K100 ["Uploaded"]
     1123 SETTABLEKS                       R24 R23 K85 ["Source"]
     1125 SETLIST                          R7 R8 16 [1]
     1127 DUPTABLE                         R8 K258 [{["Path"], ["AssetId"] = 1234567906, ["AssetType"], ["DisplayName"] = "Test Model", ["Description"] = "This is a test model", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 17, ["Archived"] = True}]
     1128 LOADK                            R25 K259 ["users/%*/creator-inventory-items/asset-1234567906"]
     1129 GETTABLEKS                       R27 R4 K13 ["UserId"]
     1131 NAMECALL                         R25 R25 K43 ["format"]
     1133 CALL                             R25 2 1
     1134 MOVE                             R24 R25
     1135 SETTABLEKS                       R24 R8 K74 ["Path"]
     1137 GETTABLEKS                       R24 R1 K76 ["AssetType"]
     1139 GETTABLEKS                       R24 R24 K89 ["Model"]
     1141 SETTABLEKS                       R24 R8 K76 ["AssetType"]
     1143 MOVE                             R25 R3
     1144 CALL                             R25 0 1
     1145 JUMPIFNOT                        R25 ; [+2]
     1146 LOADK                            R24 K38 [1000000]
     1147 JUMP                             ; [+1]
     1148 LOADK                            R24 K50 ["2021-01-01T00:00:00Z"]
     1149 SETTABLEKS                       R24 R8 K81 ["Created"]
     1151 MOVE                             R25 R3
     1152 CALL                             R25 0 1
     1153 JUMPIFNOT                        R25 ; [+2]
     1154 LOADK                            R24 K90 [1160000]
     1155 JUMP                             ; [+1]
     1156 LOADK                            R24 K52 ["2021-01-16T00:00:00Z"]
     1157 SETTABLEKS                       R24 R8 K82 ["Modified"]
     1159 GETTABLEKS                       R24 R1 K83 ["ModerationStatus"]
     1161 GETTABLEKS                       R24 R24 K91 ["Approved"]
     1163 SETTABLEKS                       R24 R8 K83 ["ModerationStatus"]
     1165 DUPTABLE                         R24 K260 [{["Id"] = 1234567890, ["Name"] = "TestUser", ["Type"], ["Uid"]}]
     1166 GETTABLEKS                       R25 R1 K97 ["ScopeType"]
     1168 GETTABLEKS                       R25 R25 K98 ["User"]
     1170 SETTABLEKS                       R25 R24 K94 ["Type"]
     1172 MOVE                             R25 R2
     1173 GETTABLEKS                       R26 R1 K97 ["ScopeType"]
     1175 GETTABLEKS                       R26 R26 K98 ["User"]
     1177 LOADK                            R27 K54 [1234567890]
     1178 CALL                             R25 2 1
     1179 SETTABLEKS                       R25 R24 K95 ["Uid"]
     1181 SETTABLEKS                       R24 R8 K84 ["Creator"]
     1183 GETTABLEKS                       R24 R1 K99 ["AssetSource"]
     1185 GETTABLEKS                       R24 R24 K100 ["Uploaded"]
     1187 SETTABLEKS                       R24 R8 K85 ["Source"]
     1189 SETLIST                          R7 R8 1 [17]
     1191 NEWTABLE                         R8 0 2
     1193 DUPTABLE                         R9 K264 [{["Path"], ["AssetId"] = 98765, ["AssetType"], ["DisplayName"] = "Test Place", ["Description"] = "This is a test Place", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["SearchRank"] = 1, ["Source"], ["Archived"] = False}]
     1194 LOADK                            R11 K265 ["universe/%*/creator-inventory-items/asset-98765"]
     1195 GETTABLEKS                       R13 R4 K28 ["ExperienceId"]
     1197 NAMECALL                         R11 R11 K43 ["format"]
     1199 CALL                             R11 2 1
     1200 MOVE                             R10 R11
     1201 SETTABLEKS                       R10 R9 K74 ["Path"]
     1203 GETTABLEKS                       R10 R1 K76 ["AssetType"]
     1205 GETTABLEKS                       R10 R10 K266 ["Place"]
     1207 SETTABLEKS                       R10 R9 K76 ["AssetType"]
     1209 MOVE                             R11 R3
     1210 CALL                             R11 0 1
     1211 JUMPIFNOT                        R11 ; [+2]
     1212 LOADK                            R10 K38 [1000000]
     1213 JUMP                             ; [+1]
     1214 LOADK                            R10 K50 ["2021-01-01T00:00:00Z"]
     1215 SETTABLEKS                       R10 R9 K81 ["Created"]
     1217 MOVE                             R11 R3
     1218 CALL                             R11 0 1
     1219 JUMPIFNOT                        R11 ; [+2]
     1220 LOADK                            R10 K90 [1160000]
     1221 JUMP                             ; [+1]
     1222 LOADK                            R10 K52 ["2021-01-16T00:00:00Z"]
     1223 SETTABLEKS                       R10 R9 K82 ["Modified"]
     1225 GETTABLEKS                       R10 R1 K83 ["ModerationStatus"]
     1227 GETTABLEKS                       R10 R10 K91 ["Approved"]
     1229 SETTABLEKS                       R10 R9 K83 ["ModerationStatus"]
     1231 DUPTABLE                         R10 K269 [{["Id"] = 11111, ["Name"] = "TestGame", ["Type"], ["Uid"]}]
     1232 GETTABLEKS                       R11 R1 K97 ["ScopeType"]
     1234 GETTABLEKS                       R11 R11 K236 ["Universe"]
     1236 SETTABLEKS                       R11 R10 K94 ["Type"]
     1238 MOVE                             R11 R2
     1239 GETTABLEKS                       R12 R1 K97 ["ScopeType"]
     1241 GETTABLEKS                       R12 R12 K236 ["Universe"]
     1243 LOADN                            R13 11111
     1244 CALL                             R11 2 1
     1245 SETTABLEKS                       R11 R10 K95 ["Uid"]
     1247 SETTABLEKS                       R10 R9 K84 ["Creator"]
     1249 GETTABLEKS                       R10 R1 K99 ["AssetSource"]
     1251 GETTABLEKS                       R10 R10 K100 ["Uploaded"]
     1253 SETTABLEKS                       R10 R9 K85 ["Source"]
     1255 DUPTABLE                         R10 K271 [{["Path"], ["AssetId"] = 98764, ["AssetType"], ["DisplayName"] = "Test Place", ["Description"] = "This is a test Place", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["SearchRank"] = 1, ["Source"], ["Archived"] = False}]
     1256 LOADK                            R12 K272 ["users/%*/creator-inventory-items/asset-98764"]
     1257 GETTABLEKS                       R14 R4 K13 ["UserId"]
     1259 NAMECALL                         R12 R12 K43 ["format"]
     1261 CALL                             R12 2 1
     1262 MOVE                             R11 R12
     1263 SETTABLEKS                       R11 R10 K74 ["Path"]
     1265 GETTABLEKS                       R11 R1 K76 ["AssetType"]
     1267 GETTABLEKS                       R11 R11 K266 ["Place"]
     1269 SETTABLEKS                       R11 R10 K76 ["AssetType"]
     1271 MOVE                             R12 R3
     1272 CALL                             R12 0 1
     1273 JUMPIFNOT                        R12 ; [+2]
     1274 LOADK                            R11 K38 [1000000]
     1275 JUMP                             ; [+1]
     1276 LOADK                            R11 K50 ["2021-01-01T00:00:00Z"]
     1277 SETTABLEKS                       R11 R10 K81 ["Created"]
     1279 MOVE                             R12 R3
     1280 CALL                             R12 0 1
     1281 JUMPIFNOT                        R12 ; [+2]
     1282 LOADK                            R11 K90 [1160000]
     1283 JUMP                             ; [+1]
     1284 LOADK                            R11 K52 ["2021-01-16T00:00:00Z"]
     1285 SETTABLEKS                       R11 R10 K82 ["Modified"]
     1287 GETTABLEKS                       R11 R1 K83 ["ModerationStatus"]
     1289 GETTABLEKS                       R11 R11 K91 ["Approved"]
     1291 SETTABLEKS                       R11 R10 K83 ["ModerationStatus"]
     1293 DUPTABLE                         R11 K269 [{["Id"] = 11111, ["Name"] = "TestGame", ["Type"], ["Uid"]}]
     1294 GETTABLEKS                       R12 R1 K97 ["ScopeType"]
     1296 GETTABLEKS                       R12 R12 K236 ["Universe"]
     1298 SETTABLEKS                       R12 R11 K94 ["Type"]
     1300 MOVE                             R12 R2
     1301 GETTABLEKS                       R13 R1 K97 ["ScopeType"]
     1303 GETTABLEKS                       R13 R13 K236 ["Universe"]
     1305 LOADN                            R14 11111
     1306 CALL                             R12 2 1
     1307 SETTABLEKS                       R12 R11 K95 ["Uid"]
     1309 SETTABLEKS                       R11 R10 K84 ["Creator"]
     1311 GETTABLEKS                       R11 R1 K99 ["AssetSource"]
     1313 GETTABLEKS                       R11 R11 K100 ["Uploaded"]
     1315 SETTABLEKS                       R11 R10 K85 ["Source"]
     1317 SETLIST                          R8 R9 2 [1]
     1319 NEWTABLE                         R9 0 7
     1321 DUPTABLE                         R10 K274 [{["Path"], ["AssetId"] = 1234, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1322 LOADK                            R12 K275 ["users/%*/creator-inventory-items/asset-1234"]
     1323 GETTABLEKS                       R14 R4 K13 ["UserId"]
     1325 NAMECALL                         R12 R12 K43 ["format"]
     1327 CALL                             R12 2 1
     1328 MOVE                             R11 R12
     1329 SETTABLEKS                       R11 R10 K74 ["Path"]
     1331 GETTABLEKS                       R11 R1 K76 ["AssetType"]
     1333 GETTABLEKS                       R11 R11 K107 ["Mesh"]
     1335 SETTABLEKS                       R11 R10 K76 ["AssetType"]
     1337 MOVE                             R12 R3
     1338 CALL                             R12 0 1
     1339 JUMPIFNOT                        R12 ; [+2]
     1340 LOADK                            R11 K38 [1000000]
     1341 JUMP                             ; [+1]
     1342 LOADK                            R11 K50 ["2021-01-01T00:00:00Z"]
     1343 SETTABLEKS                       R11 R10 K81 ["Created"]
     1345 MOVE                             R12 R3
     1346 CALL                             R12 0 1
     1347 JUMPIFNOT                        R12 ; [+2]
     1348 LOADK                            R11 K38 [1000000]
     1349 JUMP                             ; [+1]
     1350 LOADK                            R11 K50 ["2021-01-01T00:00:00Z"]
     1351 SETTABLEKS                       R11 R10 K82 ["Modified"]
     1353 GETTABLEKS                       R11 R1 K83 ["ModerationStatus"]
     1355 GETTABLEKS                       R11 R11 K91 ["Approved"]
     1357 SETTABLEKS                       R11 R10 K83 ["ModerationStatus"]
     1359 DUPTABLE                         R11 K276 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1360 GETTABLEKS                       R12 R4 K17 ["GroupId1"]
     1362 SETTABLEKS                       R12 R11 K92 ["Id"]
     1364 GETTABLEKS                       R12 R1 K97 ["ScopeType"]
     1366 GETTABLEKS                       R12 R12 K113 ["Group"]
     1368 SETTABLEKS                       R12 R11 K94 ["Type"]
     1370 MOVE                             R12 R2
     1371 GETTABLEKS                       R13 R1 K97 ["ScopeType"]
     1373 GETTABLEKS                       R13 R13 K113 ["Group"]
     1375 GETTABLEKS                       R14 R4 K17 ["GroupId1"]
     1377 CALL                             R12 2 1
     1378 SETTABLEKS                       R12 R11 K95 ["Uid"]
     1380 SETTABLEKS                       R11 R10 K84 ["Creator"]
     1382 GETTABLEKS                       R11 R1 K99 ["AssetSource"]
     1384 GETTABLEKS                       R11 R11 K100 ["Uploaded"]
     1386 SETTABLEKS                       R11 R10 K85 ["Source"]
     1388 DUPTABLE                         R11 K280 [{["Path"], ["AssetId"] = 1235, ["AssetType"], ["DisplayName"] = "Mock Decal", ["Description"] = "This is a mock decal", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1389 LOADK                            R13 K281 ["users/%*/creator-inventory-items/asset-1235"]
     1390 GETTABLEKS                       R15 R4 K13 ["UserId"]
     1392 NAMECALL                         R13 R13 K43 ["format"]
     1394 CALL                             R13 2 1
     1395 MOVE                             R12 R13
     1396 SETTABLEKS                       R12 R11 K74 ["Path"]
     1398 GETTABLEKS                       R12 R1 K76 ["AssetType"]
     1400 GETTABLEKS                       R12 R12 K282 ["Decal"]
     1402 SETTABLEKS                       R12 R11 K76 ["AssetType"]
     1404 MOVE                             R13 R3
     1405 CALL                             R13 0 1
     1406 JUMPIFNOT                        R13 ; [+2]
     1407 LOADK                            R12 K38 [1000000]
     1408 JUMP                             ; [+1]
     1409 LOADK                            R12 K50 ["2021-01-01T00:00:00Z"]
     1410 SETTABLEKS                       R12 R11 K81 ["Created"]
     1412 MOVE                             R13 R3
     1413 CALL                             R13 0 1
     1414 JUMPIFNOT                        R13 ; [+2]
     1415 LOADK                            R12 K38 [1000000]
     1416 JUMP                             ; [+1]
     1417 LOADK                            R12 K50 ["2021-01-01T00:00:00Z"]
     1418 SETTABLEKS                       R12 R11 K82 ["Modified"]
     1420 GETTABLEKS                       R12 R1 K83 ["ModerationStatus"]
     1422 GETTABLEKS                       R12 R12 K91 ["Approved"]
     1424 SETTABLEKS                       R12 R11 K83 ["ModerationStatus"]
     1426 DUPTABLE                         R12 K276 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1427 GETTABLEKS                       R13 R4 K17 ["GroupId1"]
     1429 SETTABLEKS                       R13 R12 K92 ["Id"]
     1431 GETTABLEKS                       R13 R1 K97 ["ScopeType"]
     1433 GETTABLEKS                       R13 R13 K113 ["Group"]
     1435 SETTABLEKS                       R13 R12 K94 ["Type"]
     1437 MOVE                             R13 R2
     1438 GETTABLEKS                       R14 R1 K97 ["ScopeType"]
     1440 GETTABLEKS                       R14 R14 K113 ["Group"]
     1442 GETTABLEKS                       R15 R4 K17 ["GroupId1"]
     1444 CALL                             R13 2 1
     1445 SETTABLEKS                       R13 R12 K95 ["Uid"]
     1447 SETTABLEKS                       R12 R11 K84 ["Creator"]
     1449 GETTABLEKS                       R12 R1 K99 ["AssetSource"]
     1451 GETTABLEKS                       R12 R12 K100 ["Uploaded"]
     1453 SETTABLEKS                       R12 R11 K85 ["Source"]
     1455 DUPTABLE                         R12 K284 [{["Path"], ["AssetId"] = 1236, ["AssetType"], ["DisplayName"] = "Mock Audio", ["Description"] = "This is a mock audio", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1456 LOADK                            R14 K285 ["users/%*/creator-inventory-items/asset-1236"]
     1457 GETTABLEKS                       R16 R4 K13 ["UserId"]
     1459 NAMECALL                         R14 R14 K43 ["format"]
     1461 CALL                             R14 2 1
     1462 MOVE                             R13 R14
     1463 SETTABLEKS                       R13 R12 K74 ["Path"]
     1465 GETTABLEKS                       R13 R1 K76 ["AssetType"]
     1467 GETTABLEKS                       R13 R13 K130 ["Audio"]
     1469 SETTABLEKS                       R13 R12 K76 ["AssetType"]
     1471 MOVE                             R14 R3
     1472 CALL                             R14 0 1
     1473 JUMPIFNOT                        R14 ; [+2]
     1474 LOADK                            R13 K38 [1000000]
     1475 JUMP                             ; [+1]
     1476 LOADK                            R13 K50 ["2021-01-01T00:00:00Z"]
     1477 SETTABLEKS                       R13 R12 K81 ["Created"]
     1479 MOVE                             R14 R3
     1480 CALL                             R14 0 1
     1481 JUMPIFNOT                        R14 ; [+2]
     1482 LOADK                            R13 K38 [1000000]
     1483 JUMP                             ; [+1]
     1484 LOADK                            R13 K50 ["2021-01-01T00:00:00Z"]
     1485 SETTABLEKS                       R13 R12 K82 ["Modified"]
     1487 GETTABLEKS                       R13 R1 K83 ["ModerationStatus"]
     1489 GETTABLEKS                       R13 R13 K91 ["Approved"]
     1491 SETTABLEKS                       R13 R12 K83 ["ModerationStatus"]
     1493 DUPTABLE                         R13 K276 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1494 GETTABLEKS                       R14 R4 K17 ["GroupId1"]
     1496 SETTABLEKS                       R14 R13 K92 ["Id"]
     1498 GETTABLEKS                       R14 R1 K97 ["ScopeType"]
     1500 GETTABLEKS                       R14 R14 K113 ["Group"]
     1502 SETTABLEKS                       R14 R13 K94 ["Type"]
     1504 MOVE                             R14 R2
     1505 GETTABLEKS                       R15 R1 K97 ["ScopeType"]
     1507 GETTABLEKS                       R15 R15 K113 ["Group"]
     1509 GETTABLEKS                       R16 R4 K17 ["GroupId1"]
     1511 CALL                             R14 2 1
     1512 SETTABLEKS                       R14 R13 K95 ["Uid"]
     1514 SETTABLEKS                       R13 R12 K84 ["Creator"]
     1516 GETTABLEKS                       R13 R1 K99 ["AssetSource"]
     1518 GETTABLEKS                       R13 R13 K100 ["Uploaded"]
     1520 SETTABLEKS                       R13 R12 K85 ["Source"]
     1522 DUPTABLE                         R13 K287 [{["Path"], ["AssetId"] = 1237, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1523 LOADK                            R15 K288 ["users/%*/creator-inventory-items/asset-1237"]
     1524 GETTABLEKS                       R17 R4 K13 ["UserId"]
     1526 NAMECALL                         R15 R15 K43 ["format"]
     1528 CALL                             R15 2 1
     1529 MOVE                             R14 R15
     1530 SETTABLEKS                       R14 R13 K74 ["Path"]
     1532 GETTABLEKS                       R14 R1 K76 ["AssetType"]
     1534 GETTABLEKS                       R14 R14 K107 ["Mesh"]
     1536 SETTABLEKS                       R14 R13 K76 ["AssetType"]
     1538 MOVE                             R15 R3
     1539 CALL                             R15 0 1
     1540 JUMPIFNOT                        R15 ; [+2]
     1541 LOADK                            R14 K38 [1000000]
     1542 JUMP                             ; [+1]
     1543 LOADK                            R14 K50 ["2021-01-01T00:00:00Z"]
     1544 SETTABLEKS                       R14 R13 K81 ["Created"]
     1546 MOVE                             R15 R3
     1547 CALL                             R15 0 1
     1548 JUMPIFNOT                        R15 ; [+2]
     1549 LOADK                            R14 K38 [1000000]
     1550 JUMP                             ; [+1]
     1551 LOADK                            R14 K50 ["2021-01-01T00:00:00Z"]
     1552 SETTABLEKS                       R14 R13 K82 ["Modified"]
     1554 GETTABLEKS                       R14 R1 K83 ["ModerationStatus"]
     1556 GETTABLEKS                       R14 R14 K91 ["Approved"]
     1558 SETTABLEKS                       R14 R13 K83 ["ModerationStatus"]
     1560 DUPTABLE                         R14 K276 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1561 GETTABLEKS                       R15 R4 K17 ["GroupId1"]
     1563 SETTABLEKS                       R15 R14 K92 ["Id"]
     1565 GETTABLEKS                       R15 R1 K97 ["ScopeType"]
     1567 GETTABLEKS                       R15 R15 K113 ["Group"]
     1569 SETTABLEKS                       R15 R14 K94 ["Type"]
     1571 MOVE                             R15 R2
     1572 GETTABLEKS                       R16 R1 K97 ["ScopeType"]
     1574 GETTABLEKS                       R16 R16 K113 ["Group"]
     1576 GETTABLEKS                       R17 R4 K17 ["GroupId1"]
     1578 CALL                             R15 2 1
     1579 SETTABLEKS                       R15 R14 K95 ["Uid"]
     1581 SETTABLEKS                       R14 R13 K84 ["Creator"]
     1583 GETTABLEKS                       R14 R1 K99 ["AssetSource"]
     1585 GETTABLEKS                       R14 R14 K100 ["Uploaded"]
     1587 SETTABLEKS                       R14 R13 K85 ["Source"]
     1589 DUPTABLE                         R14 K290 [{["Path"], ["AssetId"] = 1238, ["AssetType"], ["DisplayName"] = "Mock Image", ["Description"] = "This is a mock image", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1590 LOADK                            R16 K291 ["users/%*/creator-inventory-items/asset-1238"]
     1591 GETTABLEKS                       R18 R4 K17 ["GroupId1"]
     1593 NAMECALL                         R16 R16 K43 ["format"]
     1595 CALL                             R16 2 1
     1596 MOVE                             R15 R16
     1597 SETTABLEKS                       R15 R14 K74 ["Path"]
     1599 GETTABLEKS                       R15 R1 K76 ["AssetType"]
     1601 GETTABLEKS                       R15 R15 K119 ["Image"]
     1603 SETTABLEKS                       R15 R14 K76 ["AssetType"]
     1605 MOVE                             R16 R3
     1606 CALL                             R16 0 1
     1607 JUMPIFNOT                        R16 ; [+2]
     1608 LOADK                            R15 K38 [1000000]
     1609 JUMP                             ; [+1]
     1610 LOADK                            R15 K50 ["2021-01-01T00:00:00Z"]
     1611 SETTABLEKS                       R15 R14 K81 ["Created"]
     1613 MOVE                             R16 R3
     1614 CALL                             R16 0 1
     1615 JUMPIFNOT                        R16 ; [+2]
     1616 LOADK                            R15 K38 [1000000]
     1617 JUMP                             ; [+1]
     1618 LOADK                            R15 K50 ["2021-01-01T00:00:00Z"]
     1619 SETTABLEKS                       R15 R14 K82 ["Modified"]
     1621 GETTABLEKS                       R15 R1 K83 ["ModerationStatus"]
     1623 GETTABLEKS                       R15 R15 K91 ["Approved"]
     1625 SETTABLEKS                       R15 R14 K83 ["ModerationStatus"]
     1627 DUPTABLE                         R15 K276 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1628 GETTABLEKS                       R16 R4 K17 ["GroupId1"]
     1630 SETTABLEKS                       R16 R15 K92 ["Id"]
     1632 GETTABLEKS                       R16 R1 K97 ["ScopeType"]
     1634 GETTABLEKS                       R16 R16 K113 ["Group"]
     1636 SETTABLEKS                       R16 R15 K94 ["Type"]
     1638 MOVE                             R16 R2
     1639 GETTABLEKS                       R17 R1 K97 ["ScopeType"]
     1641 GETTABLEKS                       R17 R17 K113 ["Group"]
     1643 GETTABLEKS                       R18 R4 K17 ["GroupId1"]
     1645 CALL                             R16 2 1
     1646 SETTABLEKS                       R16 R15 K95 ["Uid"]
     1648 SETTABLEKS                       R15 R14 K84 ["Creator"]
     1650 GETTABLEKS                       R15 R1 K99 ["AssetSource"]
     1652 GETTABLEKS                       R15 R15 K100 ["Uploaded"]
     1654 SETTABLEKS                       R15 R14 K85 ["Source"]
     1656 DUPTABLE                         R15 K295 [{["Path"], ["AssetId"] = 1239, ["AssetType"], ["DisplayName"] = "Mock Video", ["Description"] = "This is a mock video", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1657 LOADK                            R17 K296 ["users/%*/creator-inventory-items/asset-1239"]
     1658 GETTABLEKS                       R19 R4 K17 ["GroupId1"]
     1660 NAMECALL                         R17 R17 K43 ["format"]
     1662 CALL                             R17 2 1
     1663 MOVE                             R16 R17
     1664 SETTABLEKS                       R16 R15 K74 ["Path"]
     1666 GETTABLEKS                       R16 R1 K76 ["AssetType"]
     1668 GETTABLEKS                       R16 R16 K141 ["Video"]
     1670 SETTABLEKS                       R16 R15 K76 ["AssetType"]
     1672 MOVE                             R17 R3
     1673 CALL                             R17 0 1
     1674 JUMPIFNOT                        R17 ; [+2]
     1675 LOADK                            R16 K38 [1000000]
     1676 JUMP                             ; [+1]
     1677 LOADK                            R16 K50 ["2021-01-01T00:00:00Z"]
     1678 SETTABLEKS                       R16 R15 K81 ["Created"]
     1680 MOVE                             R17 R3
     1681 CALL                             R17 0 1
     1682 JUMPIFNOT                        R17 ; [+2]
     1683 LOADK                            R16 K38 [1000000]
     1684 JUMP                             ; [+1]
     1685 LOADK                            R16 K50 ["2021-01-01T00:00:00Z"]
     1686 SETTABLEKS                       R16 R15 K82 ["Modified"]
     1688 GETTABLEKS                       R16 R1 K83 ["ModerationStatus"]
     1690 GETTABLEKS                       R16 R16 K91 ["Approved"]
     1692 SETTABLEKS                       R16 R15 K83 ["ModerationStatus"]
     1694 DUPTABLE                         R16 K276 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1695 GETTABLEKS                       R17 R4 K17 ["GroupId1"]
     1697 SETTABLEKS                       R17 R16 K92 ["Id"]
     1699 GETTABLEKS                       R17 R1 K97 ["ScopeType"]
     1701 GETTABLEKS                       R17 R17 K113 ["Group"]
     1703 SETTABLEKS                       R17 R16 K94 ["Type"]
     1705 MOVE                             R17 R2
     1706 GETTABLEKS                       R18 R1 K97 ["ScopeType"]
     1708 GETTABLEKS                       R18 R18 K113 ["Group"]
     1710 GETTABLEKS                       R19 R4 K17 ["GroupId1"]
     1712 CALL                             R17 2 1
     1713 SETTABLEKS                       R17 R16 K95 ["Uid"]
     1715 SETTABLEKS                       R16 R15 K84 ["Creator"]
     1717 GETTABLEKS                       R16 R1 K99 ["AssetSource"]
     1719 GETTABLEKS                       R16 R16 K100 ["Uploaded"]
     1721 SETTABLEKS                       R16 R15 K85 ["Source"]
     1723 DUPTABLE                         R16 K298 [{["Path"], ["AssetId"] = 12310, ["AssetType"], ["DisplayName"] = "Mock Animation", ["Description"] = "This is a mock animation", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1724 LOADK                            R18 K299 ["users/%*/creator-inventory-items/asset-12310"]
     1725 GETTABLEKS                       R20 R4 K17 ["GroupId1"]
     1727 NAMECALL                         R18 R18 K43 ["format"]
     1729 CALL                             R18 2 1
     1730 MOVE                             R17 R18
     1731 SETTABLEKS                       R17 R16 K74 ["Path"]
     1733 GETTABLEKS                       R17 R1 K76 ["AssetType"]
     1735 GETTABLEKS                       R17 R17 K168 ["Animation"]
     1737 SETTABLEKS                       R17 R16 K76 ["AssetType"]
     1739 MOVE                             R18 R3
     1740 CALL                             R18 0 1
     1741 JUMPIFNOT                        R18 ; [+2]
     1742 LOADK                            R17 K38 [1000000]
     1743 JUMP                             ; [+1]
     1744 LOADK                            R17 K50 ["2021-01-01T00:00:00Z"]
     1745 SETTABLEKS                       R17 R16 K81 ["Created"]
     1747 MOVE                             R18 R3
     1748 CALL                             R18 0 1
     1749 JUMPIFNOT                        R18 ; [+2]
     1750 LOADK                            R17 K38 [1000000]
     1751 JUMP                             ; [+1]
     1752 LOADK                            R17 K50 ["2021-01-01T00:00:00Z"]
     1753 SETTABLEKS                       R17 R16 K82 ["Modified"]
     1755 GETTABLEKS                       R17 R1 K83 ["ModerationStatus"]
     1757 GETTABLEKS                       R17 R17 K91 ["Approved"]
     1759 SETTABLEKS                       R17 R16 K83 ["ModerationStatus"]
     1761 DUPTABLE                         R17 K276 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1762 GETTABLEKS                       R18 R4 K17 ["GroupId1"]
     1764 SETTABLEKS                       R18 R17 K92 ["Id"]
     1766 GETTABLEKS                       R18 R1 K97 ["ScopeType"]
     1768 GETTABLEKS                       R18 R18 K113 ["Group"]
     1770 SETTABLEKS                       R18 R17 K94 ["Type"]
     1772 MOVE                             R18 R2
     1773 GETTABLEKS                       R19 R1 K97 ["ScopeType"]
     1775 GETTABLEKS                       R19 R19 K113 ["Group"]
     1777 GETTABLEKS                       R20 R4 K17 ["GroupId1"]
     1779 CALL                             R18 2 1
     1780 SETTABLEKS                       R18 R17 K95 ["Uid"]
     1782 SETTABLEKS                       R17 R16 K84 ["Creator"]
     1784 GETTABLEKS                       R17 R1 K99 ["AssetSource"]
     1786 GETTABLEKS                       R17 R17 K100 ["Uploaded"]
     1788 SETTABLEKS                       R17 R16 K85 ["Source"]
     1790 SETLIST                          R9 R10 7 [1]
     1792 NEWTABLE                         R10 0 2
     1794 DUPTABLE                         R11 K301 [{["Path"], ["AssetId"] = 8976, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1795 LOADK                            R13 K302 ["users/%*/creator-inventory-items/asset-8976"]
     1796 GETTABLEKS                       R15 R4 K13 ["UserId"]
     1798 NAMECALL                         R13 R13 K43 ["format"]
     1800 CALL                             R13 2 1
     1801 MOVE                             R12 R13
     1802 SETTABLEKS                       R12 R11 K74 ["Path"]
     1804 GETTABLEKS                       R12 R1 K76 ["AssetType"]
     1806 GETTABLEKS                       R12 R12 K107 ["Mesh"]
     1808 SETTABLEKS                       R12 R11 K76 ["AssetType"]
     1810 MOVE                             R13 R3
     1811 CALL                             R13 0 1
     1812 JUMPIFNOT                        R13 ; [+2]
     1813 LOADK                            R12 K38 [1000000]
     1814 JUMP                             ; [+1]
     1815 LOADK                            R12 K50 ["2021-01-01T00:00:00Z"]
     1816 SETTABLEKS                       R12 R11 K81 ["Created"]
     1818 MOVE                             R13 R3
     1819 CALL                             R13 0 1
     1820 JUMPIFNOT                        R13 ; [+2]
     1821 LOADK                            R12 K38 [1000000]
     1822 JUMP                             ; [+1]
     1823 LOADK                            R12 K50 ["2021-01-01T00:00:00Z"]
     1824 SETTABLEKS                       R12 R11 K82 ["Modified"]
     1826 GETTABLEKS                       R12 R1 K83 ["ModerationStatus"]
     1828 GETTABLEKS                       R12 R12 K91 ["Approved"]
     1830 SETTABLEKS                       R12 R11 K83 ["ModerationStatus"]
     1832 DUPTABLE                         R12 K303 [{["Id"], ["Name"] = "Group with a really long name", ["Type"], ["Uid"]}]
     1833 GETTABLEKS                       R13 R4 K21 ["GroupId2"]
     1835 SETTABLEKS                       R13 R12 K92 ["Id"]
     1837 GETTABLEKS                       R13 R1 K97 ["ScopeType"]
     1839 GETTABLEKS                       R13 R13 K113 ["Group"]
     1841 SETTABLEKS                       R13 R12 K94 ["Type"]
     1843 MOVE                             R13 R2
     1844 GETTABLEKS                       R14 R1 K97 ["ScopeType"]
     1846 GETTABLEKS                       R14 R14 K113 ["Group"]
     1848 GETTABLEKS                       R15 R4 K21 ["GroupId2"]
     1850 CALL                             R13 2 1
     1851 SETTABLEKS                       R13 R12 K95 ["Uid"]
     1853 SETTABLEKS                       R12 R11 K84 ["Creator"]
     1855 GETTABLEKS                       R12 R1 K99 ["AssetSource"]
     1857 GETTABLEKS                       R12 R12 K100 ["Uploaded"]
     1859 SETTABLEKS                       R12 R11 K85 ["Source"]
     1861 DUPTABLE                         R12 K305 [{["Path"], ["AssetId"] = 7890, ["AssetType"], ["DisplayName"] = "Mock Decal", ["Description"] = "This is a mock decal", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1862 LOADK                            R14 K306 ["users/%*/creator-inventory-items/asset-7890"]
     1863 GETTABLEKS                       R16 R4 K21 ["GroupId2"]
     1865 NAMECALL                         R14 R14 K43 ["format"]
     1867 CALL                             R14 2 1
     1868 MOVE                             R13 R14
     1869 SETTABLEKS                       R13 R12 K74 ["Path"]
     1871 GETTABLEKS                       R13 R1 K76 ["AssetType"]
     1873 GETTABLEKS                       R13 R13 K282 ["Decal"]
     1875 SETTABLEKS                       R13 R12 K76 ["AssetType"]
     1877 MOVE                             R14 R3
     1878 CALL                             R14 0 1
     1879 JUMPIFNOT                        R14 ; [+2]
     1880 LOADK                            R13 K38 [1000000]
     1881 JUMP                             ; [+1]
     1882 LOADK                            R13 K50 ["2021-01-01T00:00:00Z"]
     1883 SETTABLEKS                       R13 R12 K81 ["Created"]
     1885 MOVE                             R14 R3
     1886 CALL                             R14 0 1
     1887 JUMPIFNOT                        R14 ; [+2]
     1888 LOADK                            R13 K38 [1000000]
     1889 JUMP                             ; [+1]
     1890 LOADK                            R13 K50 ["2021-01-01T00:00:00Z"]
     1891 SETTABLEKS                       R13 R12 K82 ["Modified"]
     1893 GETTABLEKS                       R13 R1 K83 ["ModerationStatus"]
     1895 GETTABLEKS                       R13 R13 K91 ["Approved"]
     1897 SETTABLEKS                       R13 R12 K83 ["ModerationStatus"]
     1899 DUPTABLE                         R13 K303 [{["Id"], ["Name"] = "Group with a really long name", ["Type"], ["Uid"]}]
     1900 GETTABLEKS                       R14 R4 K21 ["GroupId2"]
     1902 SETTABLEKS                       R14 R13 K92 ["Id"]
     1904 GETTABLEKS                       R14 R1 K97 ["ScopeType"]
     1906 GETTABLEKS                       R14 R14 K113 ["Group"]
     1908 SETTABLEKS                       R14 R13 K94 ["Type"]
     1910 MOVE                             R14 R2
     1911 GETTABLEKS                       R15 R1 K97 ["ScopeType"]
     1913 GETTABLEKS                       R15 R15 K113 ["Group"]
     1915 GETTABLEKS                       R16 R4 K21 ["GroupId2"]
     1917 CALL                             R14 2 1
     1918 SETTABLEKS                       R14 R13 K95 ["Uid"]
     1920 SETTABLEKS                       R13 R12 K84 ["Creator"]
     1922 GETTABLEKS                       R13 R1 K99 ["AssetSource"]
     1924 GETTABLEKS                       R13 R13 K100 ["Uploaded"]
     1926 SETTABLEKS                       R13 R12 K85 ["Source"]
     1928 SETLIST                          R10 R11 2 [1]
     1930 NEWTABLE                         R11 0 2
     1932 DUPTABLE                         R12 K309 [{["Path"], ["AssetId"] = 1234, ["AssetType"], ["DisplayName"] = "Mock Folder", ["Description"] = "This is a mock folder", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1933 LOADK                            R14 K310 ["users/%*/creator-inventory-items/folder-1234"]
     1934 GETTABLEKS                       R16 R4 K13 ["UserId"]
     1936 NAMECALL                         R14 R14 K43 ["format"]
     1938 CALL                             R14 2 1
     1939 MOVE                             R13 R14
     1940 SETTABLEKS                       R13 R12 K74 ["Path"]
     1942 GETTABLEKS                       R13 R1 K76 ["AssetType"]
     1944 GETTABLEKS                       R13 R13 K311 ["Folder"]
     1946 SETTABLEKS                       R13 R12 K76 ["AssetType"]
     1948 MOVE                             R14 R3
     1949 CALL                             R14 0 1
     1950 JUMPIFNOT                        R14 ; [+2]
     1951 LOADK                            R13 K38 [1000000]
     1952 JUMP                             ; [+1]
     1953 LOADK                            R13 K50 ["2021-01-01T00:00:00Z"]
     1954 SETTABLEKS                       R13 R12 K81 ["Created"]
     1956 MOVE                             R14 R3
     1957 CALL                             R14 0 1
     1958 JUMPIFNOT                        R14 ; [+2]
     1959 LOADK                            R13 K38 [1000000]
     1960 JUMP                             ; [+1]
     1961 LOADK                            R13 K50 ["2021-01-01T00:00:00Z"]
     1962 SETTABLEKS                       R13 R12 K82 ["Modified"]
     1964 GETTABLEKS                       R13 R1 K83 ["ModerationStatus"]
     1966 GETTABLEKS                       R13 R13 K91 ["Approved"]
     1968 SETTABLEKS                       R13 R12 K83 ["ModerationStatus"]
     1970 DUPTABLE                         R13 K96 [{"Id", "Name", "Type", "Uid"}]
     1971 GETTABLEKS                       R14 R4 K13 ["UserId"]
     1973 SETTABLEKS                       R14 R13 K92 ["Id"]
     1975 GETTABLEKS                       R14 R4 K15 ["UserName"]
     1977 SETTABLEKS                       R14 R13 K93 ["Name"]
     1979 GETTABLEKS                       R14 R1 K97 ["ScopeType"]
     1981 GETTABLEKS                       R14 R14 K98 ["User"]
     1983 SETTABLEKS                       R14 R13 K94 ["Type"]
     1985 MOVE                             R14 R2
     1986 GETTABLEKS                       R15 R1 K97 ["ScopeType"]
     1988 GETTABLEKS                       R15 R15 K98 ["User"]
     1990 GETTABLEKS                       R16 R4 K13 ["UserId"]
     1992 CALL                             R14 2 1
     1993 SETTABLEKS                       R14 R13 K95 ["Uid"]
     1995 SETTABLEKS                       R13 R12 K84 ["Creator"]
     1997 GETTABLEKS                       R13 R1 K99 ["AssetSource"]
     1999 GETTABLEKS                       R13 R13 K100 ["Uploaded"]
     2001 SETTABLEKS                       R13 R12 K85 ["Source"]
     2003 DUPTABLE                         R13 K314 [{["Path"], ["AssetId"] = 3456, ["AssetType"], ["DisplayName"] = "Mock Folder 2", ["Description"] = "This is a mock folder", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     2004 LOADK                            R15 K315 ["users/%*/creator-inventory-items/folder-3456"]
     2005 GETTABLEKS                       R17 R4 K13 ["UserId"]
     2007 NAMECALL                         R15 R15 K43 ["format"]
     2009 CALL                             R15 2 1
     2010 MOVE                             R14 R15
     2011 SETTABLEKS                       R14 R13 K74 ["Path"]
     2013 GETTABLEKS                       R14 R1 K76 ["AssetType"]
     2015 GETTABLEKS                       R14 R14 K311 ["Folder"]
     2017 SETTABLEKS                       R14 R13 K76 ["AssetType"]
     2019 MOVE                             R15 R3
     2020 CALL                             R15 0 1
     2021 JUMPIFNOT                        R15 ; [+2]
     2022 LOADK                            R14 K38 [1000000]
     2023 JUMP                             ; [+1]
     2024 LOADK                            R14 K50 ["2021-01-01T00:00:00Z"]
     2025 SETTABLEKS                       R14 R13 K81 ["Created"]
     2027 MOVE                             R15 R3
     2028 CALL                             R15 0 1
     2029 JUMPIFNOT                        R15 ; [+2]
     2030 LOADK                            R14 K38 [1000000]
     2031 JUMP                             ; [+1]
     2032 LOADK                            R14 K50 ["2021-01-01T00:00:00Z"]
     2033 SETTABLEKS                       R14 R13 K82 ["Modified"]
     2035 GETTABLEKS                       R14 R1 K83 ["ModerationStatus"]
     2037 GETTABLEKS                       R14 R14 K91 ["Approved"]
     2039 SETTABLEKS                       R14 R13 K83 ["ModerationStatus"]
     2041 DUPTABLE                         R14 K96 [{"Id", "Name", "Type", "Uid"}]
     2042 GETTABLEKS                       R15 R4 K13 ["UserId"]
     2044 SETTABLEKS                       R15 R14 K92 ["Id"]
     2046 GETTABLEKS                       R15 R4 K15 ["UserName"]
     2048 SETTABLEKS                       R15 R14 K93 ["Name"]
     2050 GETTABLEKS                       R15 R1 K97 ["ScopeType"]
     2052 GETTABLEKS                       R15 R15 K98 ["User"]
     2054 SETTABLEKS                       R15 R14 K94 ["Type"]
     2056 MOVE                             R15 R2
     2057 GETTABLEKS                       R16 R1 K97 ["ScopeType"]
     2059 GETTABLEKS                       R16 R16 K98 ["User"]
     2061 GETTABLEKS                       R17 R4 K13 ["UserId"]
     2063 CALL                             R15 2 1
     2064 SETTABLEKS                       R15 R14 K95 ["Uid"]
     2066 SETTABLEKS                       R14 R13 K84 ["Creator"]
     2068 GETTABLEKS                       R14 R1 K99 ["AssetSource"]
     2070 GETTABLEKS                       R14 R14 K100 ["Uploaded"]
     2072 SETTABLEKS                       R14 R13 K85 ["Source"]
     2074 SETLIST                          R11 R12 2 [1]
     2076 NEWTABLE                         R12 0 1
     2078 DUPTABLE                         R13 K319 [{["Path"], ["AssetId"] = 2345, ["AssetType"], ["DisplayName"] = "Mock SubFolder", ["Description"] = "This is a mock subfolder", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     2079 LOADK                            R15 K320 ["users/%*/creator-inventory-items/folder-1234/folder-2345"]
     2080 GETTABLEKS                       R17 R4 K13 ["UserId"]
     2082 NAMECALL                         R15 R15 K43 ["format"]
     2084 CALL                             R15 2 1
     2085 MOVE                             R14 R15
     2086 SETTABLEKS                       R14 R13 K74 ["Path"]
     2088 GETTABLEKS                       R14 R1 K76 ["AssetType"]
     2090 GETTABLEKS                       R14 R14 K311 ["Folder"]
     2092 SETTABLEKS                       R14 R13 K76 ["AssetType"]
     2094 MOVE                             R15 R3
     2095 CALL                             R15 0 1
     2096 JUMPIFNOT                        R15 ; [+2]
     2097 LOADK                            R14 K38 [1000000]
     2098 JUMP                             ; [+1]
     2099 LOADK                            R14 K50 ["2021-01-01T00:00:00Z"]
     2100 SETTABLEKS                       R14 R13 K81 ["Created"]
     2102 MOVE                             R15 R3
     2103 CALL                             R15 0 1
     2104 JUMPIFNOT                        R15 ; [+2]
     2105 LOADK                            R14 K38 [1000000]
     2106 JUMP                             ; [+1]
     2107 LOADK                            R14 K50 ["2021-01-01T00:00:00Z"]
     2108 SETTABLEKS                       R14 R13 K82 ["Modified"]
     2110 GETTABLEKS                       R14 R1 K83 ["ModerationStatus"]
     2112 GETTABLEKS                       R14 R14 K91 ["Approved"]
     2114 SETTABLEKS                       R14 R13 K83 ["ModerationStatus"]
     2116 DUPTABLE                         R14 K96 [{"Id", "Name", "Type", "Uid"}]
     2117 GETTABLEKS                       R15 R4 K13 ["UserId"]
     2119 SETTABLEKS                       R15 R14 K92 ["Id"]
     2121 GETTABLEKS                       R15 R4 K15 ["UserName"]
     2123 SETTABLEKS                       R15 R14 K93 ["Name"]
     2125 GETTABLEKS                       R15 R1 K97 ["ScopeType"]
     2127 GETTABLEKS                       R15 R15 K98 ["User"]
     2129 SETTABLEKS                       R15 R14 K94 ["Type"]
     2131 MOVE                             R15 R2
     2132 GETTABLEKS                       R16 R1 K97 ["ScopeType"]
     2134 GETTABLEKS                       R16 R16 K98 ["User"]
     2136 GETTABLEKS                       R17 R4 K13 ["UserId"]
     2138 CALL                             R15 2 1
     2139 SETTABLEKS                       R15 R14 K95 ["Uid"]
     2141 SETTABLEKS                       R14 R13 K84 ["Creator"]
     2143 GETTABLEKS                       R14 R1 K99 ["AssetSource"]
     2145 GETTABLEKS                       R14 R14 K100 ["Uploaded"]
     2147 SETTABLEKS                       R14 R13 K85 ["Source"]
     2149 SETLIST                          R12 R13 1 [1]
     2151 NEWTABLE                         R13 0 1
     2153 DUPTABLE                         R14 K324 [{["Path"], ["AssetId"] = 4321, ["AssetType"], ["DisplayName"] = "TestFolder Group1", ["Description"] = "This is a test folder", ["VersionNumber"] = 1, ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["SearchRank"] = 1, ["Source"], ["Archived"] = False}]
     2154 LOADK                            R16 K325 ["users/%*/creator-inventory-items/folder-1234/folder-4321"]
     2155 GETTABLEKS                       R18 R4 K17 ["GroupId1"]
     2157 NAMECALL                         R16 R16 K43 ["format"]
     2159 CALL                             R16 2 1
     2160 MOVE                             R15 R16
     2161 SETTABLEKS                       R15 R14 K74 ["Path"]
     2163 GETTABLEKS                       R15 R1 K76 ["AssetType"]
     2165 GETTABLEKS                       R15 R15 K311 ["Folder"]
     2167 SETTABLEKS                       R15 R14 K76 ["AssetType"]
     2169 MOVE                             R16 R3
     2170 CALL                             R16 0 1
     2171 JUMPIFNOT                        R16 ; [+2]
     2172 LOADK                            R15 K38 [1000000]
     2173 JUMP                             ; [+1]
     2174 LOADK                            R15 K50 ["2021-01-01T00:00:00Z"]
     2175 SETTABLEKS                       R15 R14 K81 ["Created"]
     2177 MOVE                             R16 R3
     2178 CALL                             R16 0 1
     2179 JUMPIFNOT                        R16 ; [+2]
     2180 LOADK                            R15 K90 [1160000]
     2181 JUMP                             ; [+1]
     2182 LOADK                            R15 K52 ["2021-01-16T00:00:00Z"]
     2183 SETTABLEKS                       R15 R14 K82 ["Modified"]
     2185 GETTABLEKS                       R15 R1 K83 ["ModerationStatus"]
     2187 GETTABLEKS                       R15 R15 K91 ["Approved"]
     2189 SETTABLEKS                       R15 R14 K83 ["ModerationStatus"]
     2191 DUPTABLE                         R15 K96 [{"Id", "Name", "Type", "Uid"}]
     2192 GETTABLEKS                       R16 R4 K17 ["GroupId1"]
     2194 SETTABLEKS                       R16 R15 K92 ["Id"]
     2196 GETTABLEKS                       R16 R4 K19 ["GroupName1"]
     2198 SETTABLEKS                       R16 R15 K93 ["Name"]
     2200 GETTABLEKS                       R16 R1 K97 ["ScopeType"]
     2202 GETTABLEKS                       R16 R16 K113 ["Group"]
     2204 SETTABLEKS                       R16 R15 K94 ["Type"]
     2206 MOVE                             R16 R2
     2207 GETTABLEKS                       R17 R1 K97 ["ScopeType"]
     2209 GETTABLEKS                       R17 R17 K113 ["Group"]
     2211 GETTABLEKS                       R18 R4 K17 ["GroupId1"]
     2213 CALL                             R16 2 1
     2214 SETTABLEKS                       R16 R15 K95 ["Uid"]
     2216 SETTABLEKS                       R15 R14 K84 ["Creator"]
     2218 GETTABLEKS                       R15 R1 K99 ["AssetSource"]
     2220 GETTABLEKS                       R15 R15 K100 ["Uploaded"]
     2222 SETTABLEKS                       R15 R14 K85 ["Source"]
     2224 SETLIST                          R13 R14 1 [1]
     2226 NEWTABLE                         R14 0 0
     2228 SETTABLEKS                       R14 R4 K326 ["Assets"]
     2230 NEWTABLE                         R14 0 0
     2232 SETTABLEKS                       R14 R4 K327 ["Places"]
     2234 NEWTABLE                         R14 0 0
     2236 SETTABLEKS                       R14 R4 K328 ["Folders"]
     2238 GETTABLEKS                       R14 R4 K326 ["Assets"]
     2240 GETTABLEKS                       R15 R4 K13 ["UserId"]
     2242 SETTABLE                         R7 R14 R15
     2243 GETTABLEKS                       R14 R4 K327 ["Places"]
     2245 GETTABLEKS                       R15 R4 K13 ["UserId"]
     2247 SETTABLE                         R8 R14 R15
     2248 GETTABLEKS                       R14 R4 K328 ["Folders"]
     2250 GETTABLEKS                       R15 R4 K13 ["UserId"]
     2252 SETTABLE                         R11 R14 R15
     2253 GETTABLEKS                       R14 R4 K326 ["Assets"]
     2255 GETTABLEKS                       R15 R4 K17 ["GroupId1"]
     2257 SETTABLE                         R9 R14 R15
     2258 GETTABLEKS                       R14 R4 K328 ["Folders"]
     2260 GETTABLEKS                       R15 R4 K17 ["GroupId1"]
     2262 SETTABLE                         R13 R14 R15
     2263 GETTABLEKS                       R14 R4 K326 ["Assets"]
     2265 GETTABLEKS                       R15 R4 K21 ["GroupId2"]
     2267 SETTABLE                         R10 R14 R15
     2268 GETTABLEKS                       R14 R4 K326 ["Assets"]
     2270 GETTABLEKS                       R15 R4 K28 ["ExperienceId"]
     2272 SETTABLE                         R7 R14 R15
     2273 GETTABLEKS                       R14 R4 K326 ["Assets"]
     2275 GETTABLEN                        R15 R11 1
     2276 GETTABLEKS                       R15 R15 K75 ["AssetId"]
     2278 SETTABLE                         R12 R14 R15
     2279 GETTABLEKS                       R14 R4 K328 ["Folders"]
     2281 GETTABLEN                        R15 R11 1
     2282 GETTABLEKS                       R15 R15 K75 ["AssetId"]
     2284 SETTABLE                         R12 R14 R15
     2285 GETTABLEKS                       R14 R4 K326 ["Assets"]
     2287 GETTABLEN                        R15 R13 1
     2288 GETTABLEKS                       R15 R15 K75 ["AssetId"]
     2290 NEWTABLE                         R16 0 0
     2292 SETTABLE                         R16 R14 R15
     2293 GETTABLEKS                       R14 R4 K326 ["Assets"]
     2295 GETTABLEN                        R15 R12 1
     2296 GETTABLEKS                       R15 R15 K75 ["AssetId"]
     2298 NEWTABLE                         R16 0 0
     2300 SETTABLE                         R16 R14 R15
     2301 LOADK                            R14 K329 ["TestToken"]
     2302 SETTABLEKS                       R14 R4 K330 ["PageToken"]
     2304 NEWTABLE                         R14 4 0
     2306 GETTABLEKS                       R15 R4 K17 ["GroupId1"]
     2308 DUPTABLE                         R16 K276 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     2309 GETTABLEKS                       R17 R4 K17 ["GroupId1"]
     2311 SETTABLEKS                       R17 R16 K92 ["Id"]
     2313 GETTABLEKS                       R17 R1 K97 ["ScopeType"]
     2315 GETTABLEKS                       R17 R17 K113 ["Group"]
     2317 SETTABLEKS                       R17 R16 K94 ["Type"]
     2319 MOVE                             R17 R2
     2320 GETTABLEKS                       R18 R1 K97 ["ScopeType"]
     2322 GETTABLEKS                       R18 R18 K113 ["Group"]
     2324 GETTABLEKS                       R19 R4 K17 ["GroupId1"]
     2326 CALL                             R17 2 1
     2327 SETTABLEKS                       R17 R16 K95 ["Uid"]
     2329 SETTABLE                         R16 R14 R15
     2330 GETTABLEKS                       R15 R4 K21 ["GroupId2"]
     2332 DUPTABLE                         R16 K303 [{["Id"], ["Name"] = "Group with a really long name", ["Type"], ["Uid"]}]
     2333 GETTABLEKS                       R17 R4 K21 ["GroupId2"]
     2335 SETTABLEKS                       R17 R16 K92 ["Id"]
     2337 GETTABLEKS                       R17 R1 K97 ["ScopeType"]
     2339 GETTABLEKS                       R17 R17 K113 ["Group"]
     2341 SETTABLEKS                       R17 R16 K94 ["Type"]
     2343 MOVE                             R17 R2
     2344 GETTABLEKS                       R18 R1 K97 ["ScopeType"]
     2346 GETTABLEKS                       R18 R18 K113 ["Group"]
     2348 GETTABLEKS                       R19 R4 K21 ["GroupId2"]
     2350 CALL                             R17 2 1
     2351 SETTABLEKS                       R17 R16 K95 ["Uid"]
     2353 SETTABLE                         R16 R14 R15
     2354 GETTABLEKS                       R15 R4 K25 ["GroupId3"]
     2356 DUPTABLE                         R16 K331 [{["Id"], ["Name"] = "NoAssets :(", ["Type"], ["Uid"]}]
     2357 GETTABLEKS                       R17 R4 K25 ["GroupId3"]
     2359 SETTABLEKS                       R17 R16 K92 ["Id"]
     2361 GETTABLEKS                       R17 R1 K97 ["ScopeType"]
     2363 GETTABLEKS                       R17 R17 K113 ["Group"]
     2365 SETTABLEKS                       R17 R16 K94 ["Type"]
     2367 MOVE                             R17 R2
     2368 GETTABLEKS                       R18 R1 K97 ["ScopeType"]
     2370 GETTABLEKS                       R18 R18 K113 ["Group"]
     2372 GETTABLEKS                       R19 R4 K25 ["GroupId3"]
     2374 CALL                             R17 2 1
     2375 SETTABLEKS                       R17 R16 K95 ["Uid"]
     2377 SETTABLE                         R16 R14 R15
     2378 SETTABLEKS                       R14 R4 K332 ["Groups"]
     2380 NEWTABLE                         R15 0 0
     2382 MOVE                             R16 R14
     2383 LOADNIL                          R17
     2384 LOADNIL                          R18
     2385 FORGPREP                         R16
     2386 DUPTABLE                         R23 K335 [{"id", "name"}]
     2387 GETTABLEKS                       R24 R20 K92 ["Id"]
     2389 SETTABLEKS                       R24 R23 K333 ["id"]
     2391 GETTABLEKS                       R24 R20 K93 ["Name"]
     2393 SETTABLEKS                       R24 R23 K334 ["name"]
     2395 FASTCALL2                        TABLE_INSERT R15 R23 ; [+4]
     2397 MOVE                             R22 R15
     2398 GETIMPORT                        R21 K338 [table.insert]
     2400 CALL                             R21 2 0
     2401 FORGLOOP                         R16 2 ; [-16]
     2403 DUPTABLE                         R16 K340 [{"data"}]
     2404 SETTABLEKS                       R15 R16 K339 ["data"]
     2406 SETTABLEKS                       R16 R4 K341 ["GroupsPayload"]
     2408 LOADN                            R16 1234
     2409 SETTABLEKS                       R16 R4 K342 ["FolderId"]
     2411 LOADK                            R16 K343 ["TestFolder"]
     2412 SETTABLEKS                       R16 R4 K344 ["FolderName"]
     2414 LOADK                            R17 K345 ["users/%*/creator-inventory-items/folder-%*"]
     2415 GETTABLEKS                       R19 R4 K13 ["UserId"]
     2417 GETTABLEKS                       R20 R4 K342 ["FolderId"]
     2419 NAMECALL                         R17 R17 K43 ["format"]
     2421 CALL                             R17 3 1
     2422 MOVE                             R16 R17
     2423 SETTABLEKS                       R16 R4 K346 ["FolderPath"]
     2425 DUPTABLE                         R16 K348 [{"path", "folderItem"}]
     2426 GETTABLEKS                       R17 R4 K346 ["FolderPath"]
     2428 SETTABLEKS                       R17 R16 K39 ["path"]
     2430 DUPTABLE                         R17 K350 [{"folder"}]
     2431 DUPTABLE                         R18 K354 [{["folderId"], ["parentFolderId"] = , ["displayName"], ["createTime"] = "2021-01-01T00:00:00Z", ["updateTime"] = "2021-01-02T00:00:00Z"}]
     2432 GETTABLEKS                       R19 R4 K342 ["FolderId"]
     2434 SETTABLEKS                       R19 R18 K351 ["folderId"]
     2436 GETTABLEKS                       R19 R4 K344 ["FolderName"]
     2438 SETTABLEKS                       R19 R18 K55 ["displayName"]
     2440 SETTABLEKS                       R18 R17 K349 ["folder"]
     2442 SETTABLEKS                       R17 R16 K347 ["folderItem"]
     2444 SETTABLEKS                       R16 R4 K355 ["FolderMetadata"]
     2446 CLOSEUPVALS                      R5
     2447 RETURN                           R4 1
