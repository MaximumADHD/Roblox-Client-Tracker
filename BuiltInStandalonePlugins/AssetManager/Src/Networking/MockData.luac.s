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
       69 DUPTABLE                         R12 K22 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"], ["VersionNumber"], ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
       70 LOADK                            R14 K23 ["users/%*/creator-inventory-items/asset-%*"]
       71 MOVE                             R16 R5
       72 GETUPVAL                         R17 1
       73 NAMECALL                         R14 R14 K24 ["format"]
       75 CALL                             R14 3 1
       76 MOVE                             R13 R14
       77 SETTABLEKS                       R13 R12 K11 ["Path"]
       79 GETUPVAL                         R13 1
       80 SETTABLEKS                       R13 R12 K12 ["AssetId"]
       82 SETTABLEKS                       R6 R12 K4 ["AssetType"]
       84 LOADK                            R14 K25 ["Test %*"]
       85 MOVE                             R16 R6
       86 NAMECALL                         R14 R14 K24 ["format"]
       88 CALL                             R14 2 1
       89 MOVE                             R13 R14
       90 SETTABLEKS                       R13 R12 K13 ["DisplayName"]
       92 SETTABLEKS                       R8 R12 K14 ["VersionNumber"]
       94 SETTABLEKS                       R7 R12 K5 ["ModerationStatus"]
       96 DUPTABLE                         R13 K30 [{"Id", "Name", "Type", "Uid"}]
       97 SETTABLEKS                       R5 R13 K26 ["Id"]
       99 LOADK                            R15 K31 ["Creator %*"]
      100 MOVE                             R17 R5
      101 NAMECALL                         R15 R15 K24 ["format"]
      103 CALL                             R15 2 1
      104 MOVE                             R14 R15
      105 SETTABLEKS                       R14 R13 K27 ["Name"]
      107 SETTABLEKS                       R9 R13 K28 ["Type"]
      109 GETUPVAL                         R14 2
      110 MOVE                             R15 R9
      111 MOVE                             R16 R5
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K29 ["Uid"]
      115 SETTABLEKS                       R13 R12 K18 ["Creator"]
      117 SETTABLEKS                       R10 R12 K19 ["Source"]
      119 SETTABLE                         R12 R1 R11
      120 GETUPVAL                         R12 1
      121 ADDK                             R11 R12 K6 [1]
      122 SETUPVAL                         R11 1
      123 FORNLOOP                         R2
      124 RETURN                           R1 1

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
       23 NEWTABLE                         R3 32 0
       25 LOADK                            R4 K10 [100000]
       26 SETTABLEKS                       R4 R3 K11 ["UserId"]
       28 LOADK                            R4 K12 ["TestUser"]
       29 SETTABLEKS                       R4 R3 K13 ["UserName"]
       31 LOADK                            R4 K14 [987654321]
       32 SETTABLEKS                       R4 R3 K15 ["GroupId1"]
       34 LOADK                            R4 K16 ["Group1"]
       35 SETTABLEKS                       R4 R3 K17 ["GroupName1"]
       37 LOADK                            R4 K18 [87654321]
       38 SETTABLEKS                       R4 R3 K19 ["GroupId2"]
       40 LOADK                            R4 K20 ["Group with a really long name"]
       41 SETTABLEKS                       R4 R3 K21 ["GroupName2"]
       43 LOADK                            R4 K22 [7654321]
       44 SETTABLEKS                       R4 R3 K23 ["GroupId3"]
       46 LOADK                            R4 K24 ["NoAssets :("]
       47 SETTABLEKS                       R4 R3 K25 ["GroupName3"]
       49 LOADN                            R4 123
       50 SETTABLEKS                       R4 R3 K26 ["ExperienceId"]
       52 LOADK                            R4 K27 ["TestExperience"]
       53 SETTABLEKS                       R4 R3 K28 ["ExperienceName"]
       55 GETIMPORT                        R4 K31 [math.randomseed]
       57 GETIMPORT                        R5 K33 [tick]
       59 CALL                             R5 0 -1
       60 CALL                             R4 -1 0
       61 GETIMPORT                        R4 K35 [math.random]
       63 LOADN                            R5 1000
       64 LOADK                            R6 K36 [1000000]
       65 CALL                             R4 2 1
       66 DUPTABLE                         R5 K39 [{"path", "assetItem"}]
       67 LOADK                            R7 K40 ["users/%*/creator-inventory-items/asset-1234567890"]
       68 GETTABLEKS                       R9 R3 K11 ["UserId"]
       70 NAMECALL                         R7 R7 K41 ["format"]
       72 CALL                             R7 2 1
       73 MOVE                             R6 R7
       74 SETTABLEKS                       R6 R5 K37 ["path"]
       76 DUPTABLE                         R6 K46 [{["asset"], ["sources"], ["isPackage"] = False}]
       77 DUPTABLE                         R7 K62 [{["createTime"] = "2021-01-01T00:00:00Z", ["updateTime"] = "2021-01-16T00:00:00Z", ["assetId"] = 1234567890, ["displayName"] = "Test Model", ["description"] = "This is a test model", ["assetType"] = "ASSET_TYPE_MODEL", ["creationContext"], ["state"] = "APPROVED"}]
       78 DUPTABLE                         R8 K64 [{"creator"}]
       79 DUPTABLE                         R9 K67 [{["userId"] = 123}]
       80 SETTABLEKS                       R9 R8 K63 ["creator"]
       82 SETTABLEKS                       R8 R7 K59 ["creationContext"]
       84 SETTABLEKS                       R7 R6 K42 ["asset"]
       86 NEWTABLE                         R7 0 1
       88 DUPTABLE                         R8 K69 [{"createdDetails"}]
       89 NEWTABLE                         R9 0 0
       91 SETTABLEKS                       R9 R8 K68 ["createdDetails"]
       93 SETLIST                          R7 R8 1 [1]
       95 SETTABLEKS                       R7 R6 K43 ["sources"]
       97 SETTABLEKS                       R6 R5 K38 ["assetItem"]
       99 NEWTABLE                         R6 0 1
      101 MOVE                             R7 R5
      102 SETLIST                          R6 R7 1 [1]
      104 SETTABLEKS                       R6 R3 K70 ["responseData"]
      106 NEWCLOSURE                       R6 P0
      107 CAPTURE                          VAL R1
      108 CAPTURE                          REF R4
      109 CAPTURE                          VAL R2
      110 SETTABLEKS                       R6 R3 K71 ["generate"]
      112 NEWTABLE                         R6 0 17
      114 DUPTABLE                         R7 K86 [{["Path"], ["AssetId"] = 1234567890, ["AssetType"], ["DisplayName"] = "Test Model", ["Description"] = "This is a test model", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-16T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 1, ["Archived"] = False}]
      115 LOADK                            R9 K40 ["users/%*/creator-inventory-items/asset-1234567890"]
      116 GETTABLEKS                       R11 R3 K11 ["UserId"]
      118 NAMECALL                         R9 R9 K41 ["format"]
      120 CALL                             R9 2 1
      121 MOVE                             R8 R9
      122 SETTABLEKS                       R8 R7 K72 ["Path"]
      124 GETTABLEKS                       R8 R1 K74 ["AssetType"]
      126 GETTABLEKS                       R8 R8 K87 ["Model"]
      128 SETTABLEKS                       R8 R7 K74 ["AssetType"]
      130 GETTABLEKS                       R8 R1 K81 ["ModerationStatus"]
      132 GETTABLEKS                       R8 R8 K88 ["Approved"]
      134 SETTABLEKS                       R8 R7 K81 ["ModerationStatus"]
      136 DUPTABLE                         R8 K93 [{"Id", "Name", "Type", "Uid"}]
      137 GETTABLEKS                       R9 R3 K11 ["UserId"]
      139 SETTABLEKS                       R9 R8 K89 ["Id"]
      141 GETTABLEKS                       R9 R3 K13 ["UserName"]
      143 SETTABLEKS                       R9 R8 K90 ["Name"]
      145 GETTABLEKS                       R9 R1 K94 ["ScopeType"]
      147 GETTABLEKS                       R9 R9 K95 ["User"]
      149 SETTABLEKS                       R9 R8 K91 ["Type"]
      151 MOVE                             R9 R2
      152 GETTABLEKS                       R10 R1 K94 ["ScopeType"]
      154 GETTABLEKS                       R10 R10 K95 ["User"]
      156 GETTABLEKS                       R11 R3 K11 ["UserId"]
      158 CALL                             R9 2 1
      159 SETTABLEKS                       R9 R8 K92 ["Uid"]
      161 SETTABLEKS                       R8 R7 K82 ["Creator"]
      163 GETTABLEKS                       R8 R1 K96 ["AssetSource"]
      165 GETTABLEKS                       R8 R8 K97 ["Uploaded"]
      167 SETTABLEKS                       R8 R7 K83 ["Source"]
      169 DUPTABLE                         R8 K103 [{["Path"], ["AssetId"] = 1234567891, ["AssetType"], ["DisplayName"] = "Test Mesh", ["Description"] = "This is a test mesh", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-15T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 2, ["Archived"] = False}]
      170 LOADK                            R10 K104 ["users/%*/creator-inventory-items/asset-1234567891"]
      171 GETTABLEKS                       R12 R3 K11 ["UserId"]
      173 NAMECALL                         R10 R10 K41 ["format"]
      175 CALL                             R10 2 1
      176 MOVE                             R9 R10
      177 SETTABLEKS                       R9 R8 K72 ["Path"]
      179 GETTABLEKS                       R9 R1 K74 ["AssetType"]
      181 GETTABLEKS                       R9 R9 K105 ["Mesh"]
      183 SETTABLEKS                       R9 R8 K74 ["AssetType"]
      185 GETTABLEKS                       R9 R1 K81 ["ModerationStatus"]
      187 GETTABLEKS                       R9 R9 K88 ["Approved"]
      189 SETTABLEKS                       R9 R8 K81 ["ModerationStatus"]
      191 DUPTABLE                         R9 K108 [{["Id"] = 1234567892, ["Name"] = "1234567892", ["Type"], ["Uid"]}]
      192 GETTABLEKS                       R10 R1 K94 ["ScopeType"]
      194 GETTABLEKS                       R10 R10 K109 ["Group"]
      196 SETTABLEKS                       R10 R9 K91 ["Type"]
      198 MOVE                             R10 R2
      199 GETTABLEKS                       R11 R1 K94 ["ScopeType"]
      201 GETTABLEKS                       R11 R11 K109 ["Group"]
      203 LOADK                            R12 K106 [1234567892]
      204 CALL                             R10 2 1
      205 SETTABLEKS                       R10 R9 K92 ["Uid"]
      207 SETTABLEKS                       R9 R8 K82 ["Creator"]
      209 GETTABLEKS                       R9 R1 K96 ["AssetSource"]
      211 GETTABLEKS                       R9 R9 K97 ["Uploaded"]
      213 SETTABLEKS                       R9 R8 K83 ["Source"]
      215 DUPTABLE                         R9 K114 [{["Path"], ["AssetId"] = 1234567892, ["AssetType"], ["DisplayName"] = "Test Image", ["Description"] = "This is a test image", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-14T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 3, ["Archived"] = False}]
      216 LOADK                            R11 K115 ["users/%*/creator-inventory-items/asset-1234567892"]
      217 GETTABLEKS                       R13 R3 K11 ["UserId"]
      219 NAMECALL                         R11 R11 K41 ["format"]
      221 CALL                             R11 2 1
      222 MOVE                             R10 R11
      223 SETTABLEKS                       R10 R9 K72 ["Path"]
      225 GETTABLEKS                       R10 R1 K74 ["AssetType"]
      227 GETTABLEKS                       R10 R10 K116 ["Image"]
      229 SETTABLEKS                       R10 R9 K74 ["AssetType"]
      231 GETTABLEKS                       R10 R1 K81 ["ModerationStatus"]
      233 GETTABLEKS                       R10 R10 K88 ["Approved"]
      235 SETTABLEKS                       R10 R9 K81 ["ModerationStatus"]
      237 DUPTABLE                         R10 K119 [{["Id"] = 1234567893, ["Name"] = "1234567893", ["Type"], ["Uid"]}]
      238 GETTABLEKS                       R11 R1 K94 ["ScopeType"]
      240 GETTABLEKS                       R11 R11 K109 ["Group"]
      242 SETTABLEKS                       R11 R10 K91 ["Type"]
      244 MOVE                             R11 R2
      245 GETTABLEKS                       R12 R1 K94 ["ScopeType"]
      247 GETTABLEKS                       R12 R12 K109 ["Group"]
      249 LOADK                            R13 K117 [1234567893]
      250 CALL                             R11 2 1
      251 SETTABLEKS                       R11 R10 K92 ["Uid"]
      253 SETTABLEKS                       R10 R9 K82 ["Creator"]
      255 GETTABLEKS                       R10 R1 K96 ["AssetSource"]
      257 GETTABLEKS                       R10 R10 K97 ["Uploaded"]
      259 SETTABLEKS                       R10 R9 K83 ["Source"]
      261 DUPTABLE                         R10 K124 [{["Path"], ["AssetId"] = 1234567893, ["AssetType"], ["DisplayName"] = "Test Audio", ["Description"] = "This is a test audio", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-13T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 4, ["Archived"] = False}]
      262 LOADK                            R12 K125 ["users/%*/creator-inventory-items/asset-1234567893"]
      263 GETTABLEKS                       R14 R3 K11 ["UserId"]
      265 NAMECALL                         R12 R12 K41 ["format"]
      267 CALL                             R12 2 1
      268 MOVE                             R11 R12
      269 SETTABLEKS                       R11 R10 K72 ["Path"]
      271 GETTABLEKS                       R11 R1 K74 ["AssetType"]
      273 GETTABLEKS                       R11 R11 K126 ["Audio"]
      275 SETTABLEKS                       R11 R10 K74 ["AssetType"]
      277 GETTABLEKS                       R11 R1 K81 ["ModerationStatus"]
      279 GETTABLEKS                       R11 R11 K88 ["Approved"]
      281 SETTABLEKS                       R11 R10 K81 ["ModerationStatus"]
      283 DUPTABLE                         R11 K129 [{["Id"] = 1234567894, ["Name"] = "1234567894", ["Type"], ["Uid"]}]
      284 GETTABLEKS                       R12 R1 K94 ["ScopeType"]
      286 GETTABLEKS                       R12 R12 K109 ["Group"]
      288 SETTABLEKS                       R12 R11 K91 ["Type"]
      290 MOVE                             R12 R2
      291 GETTABLEKS                       R13 R1 K94 ["ScopeType"]
      293 GETTABLEKS                       R13 R13 K109 ["Group"]
      295 LOADK                            R14 K127 [1234567894]
      296 CALL                             R12 2 1
      297 SETTABLEKS                       R12 R11 K92 ["Uid"]
      299 SETTABLEKS                       R11 R10 K82 ["Creator"]
      301 GETTABLEKS                       R11 R1 K96 ["AssetSource"]
      303 GETTABLEKS                       R11 R11 K97 ["Uploaded"]
      305 SETTABLEKS                       R11 R10 K83 ["Source"]
      307 DUPTABLE                         R11 K134 [{["Path"], ["AssetId"] = 1234567894, ["AssetType"], ["DisplayName"] = "Test Video", ["Description"] = "This is a test video", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-12T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 5, ["Archived"] = False}]
      308 LOADK                            R13 K135 ["users/%*/creator-inventory-items/asset-1234567894"]
      309 GETTABLEKS                       R15 R3 K11 ["UserId"]
      311 NAMECALL                         R13 R13 K41 ["format"]
      313 CALL                             R13 2 1
      314 MOVE                             R12 R13
      315 SETTABLEKS                       R12 R11 K72 ["Path"]
      317 GETTABLEKS                       R12 R1 K74 ["AssetType"]
      319 GETTABLEKS                       R12 R12 K136 ["Video"]
      321 SETTABLEKS                       R12 R11 K74 ["AssetType"]
      323 GETTABLEKS                       R12 R1 K81 ["ModerationStatus"]
      325 GETTABLEKS                       R12 R12 K88 ["Approved"]
      327 SETTABLEKS                       R12 R11 K81 ["ModerationStatus"]
      329 DUPTABLE                         R12 K139 [{["Id"] = 1234567895, ["Name"] = "1234567895", ["Type"], ["Uid"]}]
      330 GETTABLEKS                       R13 R1 K94 ["ScopeType"]
      332 GETTABLEKS                       R13 R13 K109 ["Group"]
      334 SETTABLEKS                       R13 R12 K91 ["Type"]
      336 MOVE                             R13 R2
      337 GETTABLEKS                       R14 R1 K94 ["ScopeType"]
      339 GETTABLEKS                       R14 R14 K109 ["Group"]
      341 LOADK                            R15 K137 [1234567895]
      342 CALL                             R13 2 1
      343 SETTABLEKS                       R13 R12 K92 ["Uid"]
      345 SETTABLEKS                       R12 R11 K82 ["Creator"]
      347 GETTABLEKS                       R12 R1 K96 ["AssetSource"]
      349 GETTABLEKS                       R12 R12 K97 ["Uploaded"]
      351 SETTABLEKS                       R12 R11 K83 ["Source"]
      353 DUPTABLE                         R12 K142 [{["Path"], ["AssetId"] = 1234567895, ["AssetType"], ["DisplayName"] = "Test Image", ["Description"] = "This is a test image", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-11T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 6, ["Archived"] = False}]
      354 LOADK                            R14 K143 ["users/%*/creator-inventory-items/asset-1234567895"]
      355 GETTABLEKS                       R16 R3 K11 ["UserId"]
      357 NAMECALL                         R14 R14 K41 ["format"]
      359 CALL                             R14 2 1
      360 MOVE                             R13 R14
      361 SETTABLEKS                       R13 R12 K72 ["Path"]
      363 GETTABLEKS                       R13 R1 K74 ["AssetType"]
      365 GETTABLEKS                       R13 R13 K116 ["Image"]
      367 SETTABLEKS                       R13 R12 K74 ["AssetType"]
      369 GETTABLEKS                       R13 R1 K81 ["ModerationStatus"]
      371 GETTABLEKS                       R13 R13 K88 ["Approved"]
      373 SETTABLEKS                       R13 R12 K81 ["ModerationStatus"]
      375 DUPTABLE                         R13 K146 [{["Id"] = 1234567896, ["Name"] = "1234567896", ["Type"], ["Uid"]}]
      376 GETTABLEKS                       R14 R1 K94 ["ScopeType"]
      378 GETTABLEKS                       R14 R14 K109 ["Group"]
      380 SETTABLEKS                       R14 R13 K91 ["Type"]
      382 MOVE                             R14 R2
      383 GETTABLEKS                       R15 R1 K94 ["ScopeType"]
      385 GETTABLEKS                       R15 R15 K109 ["Group"]
      387 LOADK                            R16 K144 [1234567896]
      388 CALL                             R14 2 1
      389 SETTABLEKS                       R14 R13 K92 ["Uid"]
      391 SETTABLEKS                       R13 R12 K82 ["Creator"]
      393 GETTABLEKS                       R13 R1 K96 ["AssetSource"]
      395 GETTABLEKS                       R13 R13 K97 ["Uploaded"]
      397 SETTABLEKS                       R13 R12 K83 ["Source"]
      399 DUPTABLE                         R13 K149 [{["Path"], ["AssetId"] = 1234567896, ["AssetType"], ["DisplayName"] = "Test Video", ["Description"] = "This is a test video", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-10T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 7, ["Archived"] = False}]
      400 LOADK                            R15 K150 ["users/%*/creator-inventory-items/asset-1234567896"]
      401 GETTABLEKS                       R17 R3 K11 ["UserId"]
      403 NAMECALL                         R15 R15 K41 ["format"]
      405 CALL                             R15 2 1
      406 MOVE                             R14 R15
      407 SETTABLEKS                       R14 R13 K72 ["Path"]
      409 GETTABLEKS                       R14 R1 K74 ["AssetType"]
      411 GETTABLEKS                       R14 R14 K136 ["Video"]
      413 SETTABLEKS                       R14 R13 K74 ["AssetType"]
      415 GETTABLEKS                       R14 R1 K81 ["ModerationStatus"]
      417 GETTABLEKS                       R14 R14 K88 ["Approved"]
      419 SETTABLEKS                       R14 R13 K81 ["ModerationStatus"]
      421 DUPTABLE                         R14 K153 [{["Id"] = 1234567897, ["Name"] = "1234567897", ["Type"], ["Uid"]}]
      422 GETTABLEKS                       R15 R1 K94 ["ScopeType"]
      424 GETTABLEKS                       R15 R15 K109 ["Group"]
      426 SETTABLEKS                       R15 R14 K91 ["Type"]
      428 MOVE                             R15 R2
      429 GETTABLEKS                       R16 R1 K94 ["ScopeType"]
      431 GETTABLEKS                       R16 R16 K109 ["Group"]
      433 LOADK                            R17 K151 [1234567897]
      434 CALL                             R15 2 1
      435 SETTABLEKS                       R15 R14 K92 ["Uid"]
      437 SETTABLEKS                       R14 R13 K82 ["Creator"]
      439 GETTABLEKS                       R14 R1 K96 ["AssetSource"]
      441 GETTABLEKS                       R14 R14 K97 ["Uploaded"]
      443 SETTABLEKS                       R14 R13 K83 ["Source"]
      445 DUPTABLE                         R14 K158 [{["Path"], ["AssetId"] = 1234567897, ["AssetType"], ["DisplayName"] = "Test Animation", ["Description"] = "This is a test animation", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-09T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 8, ["Archived"] = False}]
      446 LOADK                            R16 K159 ["users/%*/creator-inventory-items/asset-1234567897"]
      447 GETTABLEKS                       R18 R3 K11 ["UserId"]
      449 NAMECALL                         R16 R16 K41 ["format"]
      451 CALL                             R16 2 1
      452 MOVE                             R15 R16
      453 SETTABLEKS                       R15 R14 K72 ["Path"]
      455 GETTABLEKS                       R15 R1 K74 ["AssetType"]
      457 GETTABLEKS                       R15 R15 K160 ["Animation"]
      459 SETTABLEKS                       R15 R14 K74 ["AssetType"]
      461 GETTABLEKS                       R15 R1 K81 ["ModerationStatus"]
      463 GETTABLEKS                       R15 R15 K88 ["Approved"]
      465 SETTABLEKS                       R15 R14 K81 ["ModerationStatus"]
      467 DUPTABLE                         R15 K163 [{["Id"] = 1234567898, ["Name"] = "1234567898", ["Type"], ["Uid"]}]
      468 GETTABLEKS                       R16 R1 K94 ["ScopeType"]
      470 GETTABLEKS                       R16 R16 K109 ["Group"]
      472 SETTABLEKS                       R16 R15 K91 ["Type"]
      474 MOVE                             R16 R2
      475 GETTABLEKS                       R17 R1 K94 ["ScopeType"]
      477 GETTABLEKS                       R17 R17 K109 ["Group"]
      479 LOADK                            R18 K161 [1234567898]
      480 CALL                             R16 2 1
      481 SETTABLEKS                       R16 R15 K92 ["Uid"]
      483 SETTABLEKS                       R15 R14 K82 ["Creator"]
      485 GETTABLEKS                       R15 R1 K96 ["AssetSource"]
      487 GETTABLEKS                       R15 R15 K97 ["Uploaded"]
      489 SETTABLEKS                       R15 R14 K83 ["Source"]
      491 DUPTABLE                         R15 K170 [{["Path"], ["AssetId"] = 1234567898, ["AssetType"], ["DisplayName"] = "Mock Model", ["Description"] = "This is a mock model", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-08T00:00:00Z", ["ModerationStatus"], ["Creator"], ["SearchRank"] = 9, ["Source"], ["Archived"] = False, ["IsPackage"] = True}]
      492 LOADK                            R17 K171 ["users/%*/creator-inventory-items/asset-1234567898"]
      493 GETTABLEKS                       R19 R3 K11 ["UserId"]
      495 NAMECALL                         R17 R17 K41 ["format"]
      497 CALL                             R17 2 1
      498 MOVE                             R16 R17
      499 SETTABLEKS                       R16 R15 K72 ["Path"]
      501 GETTABLEKS                       R16 R1 K74 ["AssetType"]
      503 GETTABLEKS                       R16 R16 K87 ["Model"]
      505 SETTABLEKS                       R16 R15 K74 ["AssetType"]
      507 GETTABLEKS                       R16 R1 K81 ["ModerationStatus"]
      509 GETTABLEKS                       R16 R16 K88 ["Approved"]
      511 SETTABLEKS                       R16 R15 K81 ["ModerationStatus"]
      513 DUPTABLE                         R16 K173 [{["Id"] = 1234567890, ["Name"] = "TestOtherUser", ["Type"], ["Uid"]}]
      514 GETTABLEKS                       R17 R1 K94 ["ScopeType"]
      516 GETTABLEKS                       R17 R17 K95 ["User"]
      518 SETTABLEKS                       R17 R16 K91 ["Type"]
      520 MOVE                             R17 R2
      521 GETTABLEKS                       R18 R1 K94 ["ScopeType"]
      523 GETTABLEKS                       R18 R18 K95 ["User"]
      525 LOADK                            R19 K52 [1234567890]
      526 CALL                             R17 2 1
      527 SETTABLEKS                       R17 R16 K92 ["Uid"]
      529 SETTABLEKS                       R16 R15 K82 ["Creator"]
      531 GETTABLEKS                       R16 R1 K96 ["AssetSource"]
      533 GETTABLEKS                       R16 R16 K174 ["SharedWithMe"]
      535 SETTABLEKS                       R16 R15 K83 ["Source"]
      537 DUPTABLE                         R16 K180 [{["Path"], ["AssetId"] = 1234567899, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-07T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 10, ["Archived"] = False}]
      538 LOADK                            R18 K181 ["users/%*/creator-inventory-items/asset-1234567899"]
      539 GETTABLEKS                       R20 R3 K11 ["UserId"]
      541 NAMECALL                         R18 R18 K41 ["format"]
      543 CALL                             R18 2 1
      544 MOVE                             R17 R18
      545 SETTABLEKS                       R17 R16 K72 ["Path"]
      547 GETTABLEKS                       R17 R1 K74 ["AssetType"]
      549 GETTABLEKS                       R17 R17 K105 ["Mesh"]
      551 SETTABLEKS                       R17 R16 K74 ["AssetType"]
      553 GETTABLEKS                       R17 R1 K81 ["ModerationStatus"]
      555 GETTABLEKS                       R17 R17 K88 ["Approved"]
      557 SETTABLEKS                       R17 R16 K81 ["ModerationStatus"]
      559 DUPTABLE                         R17 K184 [{["Id"] = 1234567900, ["Name"] = "1234567900", ["Type"], ["Uid"]}]
      560 GETTABLEKS                       R18 R1 K94 ["ScopeType"]
      562 GETTABLEKS                       R18 R18 K109 ["Group"]
      564 SETTABLEKS                       R18 R17 K91 ["Type"]
      566 MOVE                             R18 R2
      567 GETTABLEKS                       R19 R1 K94 ["ScopeType"]
      569 GETTABLEKS                       R19 R19 K109 ["Group"]
      571 LOADK                            R20 K182 [1234567900]
      572 CALL                             R18 2 1
      573 SETTABLEKS                       R18 R17 K92 ["Uid"]
      575 SETTABLEKS                       R17 R16 K82 ["Creator"]
      577 GETTABLEKS                       R17 R1 K96 ["AssetSource"]
      579 GETTABLEKS                       R17 R17 K97 ["Uploaded"]
      581 SETTABLEKS                       R17 R16 K83 ["Source"]
      583 DUPTABLE                         R17 K189 [{["Path"], ["AssetId"] = 1234567900, ["AssetType"], ["DisplayName"] = "Mock Plugin", ["Description"] = "This is a mock Plugin", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-06T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 11, ["Archived"] = False}]
      584 LOADK                            R19 K190 ["users/%*/creator-inventory-items/asset-1234567900"]
      585 GETTABLEKS                       R21 R3 K11 ["UserId"]
      587 NAMECALL                         R19 R19 K41 ["format"]
      589 CALL                             R19 2 1
      590 MOVE                             R18 R19
      591 SETTABLEKS                       R18 R17 K72 ["Path"]
      593 GETTABLEKS                       R18 R1 K74 ["AssetType"]
      595 GETTABLEKS                       R18 R18 K191 ["Plugin"]
      597 SETTABLEKS                       R18 R17 K74 ["AssetType"]
      599 GETTABLEKS                       R18 R1 K81 ["ModerationStatus"]
      601 GETTABLEKS                       R18 R18 K88 ["Approved"]
      603 SETTABLEKS                       R18 R17 K81 ["ModerationStatus"]
      605 DUPTABLE                         R18 K194 [{["Id"] = 1234567901, ["Name"] = "1234567901", ["Type"], ["Uid"]}]
      606 GETTABLEKS                       R19 R1 K94 ["ScopeType"]
      608 GETTABLEKS                       R19 R19 K109 ["Group"]
      610 SETTABLEKS                       R19 R18 K91 ["Type"]
      612 MOVE                             R19 R2
      613 GETTABLEKS                       R20 R1 K94 ["ScopeType"]
      615 GETTABLEKS                       R20 R20 K109 ["Group"]
      617 LOADK                            R21 K192 [1234567901]
      618 CALL                             R19 2 1
      619 SETTABLEKS                       R19 R18 K92 ["Uid"]
      621 SETTABLEKS                       R18 R17 K82 ["Creator"]
      623 GETTABLEKS                       R18 R1 K96 ["AssetSource"]
      625 GETTABLEKS                       R18 R18 K97 ["Uploaded"]
      627 SETTABLEKS                       R18 R17 K83 ["Source"]
      629 DUPTABLE                         R18 K199 [{["Path"], ["AssetId"] = 1234567901, ["AssetType"], ["DisplayName"] = "Mock Audio", ["Description"] = "This is a mock audio", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-05T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 12, ["Archived"] = False}]
      630 LOADK                            R20 K200 ["users/%*/creator-inventory-items/asset-1234567901"]
      631 GETTABLEKS                       R22 R3 K11 ["UserId"]
      633 NAMECALL                         R20 R20 K41 ["format"]
      635 CALL                             R20 2 1
      636 MOVE                             R19 R20
      637 SETTABLEKS                       R19 R18 K72 ["Path"]
      639 GETTABLEKS                       R19 R1 K74 ["AssetType"]
      641 GETTABLEKS                       R19 R19 K126 ["Audio"]
      643 SETTABLEKS                       R19 R18 K74 ["AssetType"]
      645 GETTABLEKS                       R19 R1 K81 ["ModerationStatus"]
      647 GETTABLEKS                       R19 R19 K88 ["Approved"]
      649 SETTABLEKS                       R19 R18 K81 ["ModerationStatus"]
      651 DUPTABLE                         R19 K203 [{["Id"] = 1234567902, ["Name"] = "1234567902", ["Type"], ["Uid"]}]
      652 GETTABLEKS                       R20 R1 K94 ["ScopeType"]
      654 GETTABLEKS                       R20 R20 K109 ["Group"]
      656 SETTABLEKS                       R20 R19 K91 ["Type"]
      658 MOVE                             R20 R2
      659 GETTABLEKS                       R21 R1 K94 ["ScopeType"]
      661 GETTABLEKS                       R21 R21 K109 ["Group"]
      663 LOADK                            R22 K201 [1234567902]
      664 CALL                             R20 2 1
      665 SETTABLEKS                       R20 R19 K92 ["Uid"]
      667 SETTABLEKS                       R19 R18 K82 ["Creator"]
      669 GETTABLEKS                       R19 R1 K96 ["AssetSource"]
      671 GETTABLEKS                       R19 R19 K97 ["Uploaded"]
      673 SETTABLEKS                       R19 R18 K83 ["Source"]
      675 DUPTABLE                         R19 K206 [{["Path"], ["AssetId"] = 1234567902, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-04T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 13, ["Archived"] = False}]
      676 LOADK                            R21 K207 ["users/%*/creator-inventory-items/asset-1234567902"]
      677 GETTABLEKS                       R23 R3 K11 ["UserId"]
      679 NAMECALL                         R21 R21 K41 ["format"]
      681 CALL                             R21 2 1
      682 MOVE                             R20 R21
      683 SETTABLEKS                       R20 R19 K72 ["Path"]
      685 GETTABLEKS                       R20 R1 K74 ["AssetType"]
      687 GETTABLEKS                       R20 R20 K105 ["Mesh"]
      689 SETTABLEKS                       R20 R19 K74 ["AssetType"]
      691 GETTABLEKS                       R20 R1 K81 ["ModerationStatus"]
      693 GETTABLEKS                       R20 R20 K88 ["Approved"]
      695 SETTABLEKS                       R20 R19 K81 ["ModerationStatus"]
      697 DUPTABLE                         R20 K210 [{["Id"] = 1234567903, ["Name"] = "1234567903", ["Type"], ["Uid"]}]
      698 GETTABLEKS                       R21 R1 K94 ["ScopeType"]
      700 GETTABLEKS                       R21 R21 K109 ["Group"]
      702 SETTABLEKS                       R21 R20 K91 ["Type"]
      704 MOVE                             R21 R2
      705 GETTABLEKS                       R22 R1 K94 ["ScopeType"]
      707 GETTABLEKS                       R22 R22 K109 ["Group"]
      709 LOADK                            R23 K208 [1234567903]
      710 CALL                             R21 2 1
      711 SETTABLEKS                       R21 R20 K92 ["Uid"]
      713 SETTABLEKS                       R20 R19 K82 ["Creator"]
      715 GETTABLEKS                       R20 R1 K96 ["AssetSource"]
      717 GETTABLEKS                       R20 R20 K97 ["Uploaded"]
      719 SETTABLEKS                       R20 R19 K83 ["Source"]
      721 DUPTABLE                         R20 K215 [{["Path"], ["AssetId"] = 1234567903, ["AssetType"], ["DisplayName"] = "Mock Image", ["Description"] = "This is a mock image", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-03T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 14, ["Archived"] = False}]
      722 LOADK                            R22 K216 ["users/%*/creator-inventory-items/asset-1234567903"]
      723 GETTABLEKS                       R24 R3 K11 ["UserId"]
      725 NAMECALL                         R22 R22 K41 ["format"]
      727 CALL                             R22 2 1
      728 MOVE                             R21 R22
      729 SETTABLEKS                       R21 R20 K72 ["Path"]
      731 GETTABLEKS                       R21 R1 K74 ["AssetType"]
      733 GETTABLEKS                       R21 R21 K116 ["Image"]
      735 SETTABLEKS                       R21 R20 K74 ["AssetType"]
      737 GETTABLEKS                       R21 R1 K81 ["ModerationStatus"]
      739 GETTABLEKS                       R21 R21 K88 ["Approved"]
      741 SETTABLEKS                       R21 R20 K81 ["ModerationStatus"]
      743 DUPTABLE                         R21 K219 [{["Id"] = 1234567904, ["Name"] = "1234567904", ["Type"], ["Uid"]}]
      744 GETTABLEKS                       R22 R1 K94 ["ScopeType"]
      746 GETTABLEKS                       R22 R22 K220 ["Universe"]
      748 SETTABLEKS                       R22 R21 K91 ["Type"]
      750 MOVE                             R22 R2
      751 GETTABLEKS                       R23 R1 K94 ["ScopeType"]
      753 GETTABLEKS                       R23 R23 K220 ["Universe"]
      755 LOADK                            R24 K217 [1234567904]
      756 CALL                             R22 2 1
      757 SETTABLEKS                       R22 R21 K92 ["Uid"]
      759 SETTABLEKS                       R21 R20 K82 ["Creator"]
      761 GETTABLEKS                       R21 R1 K96 ["AssetSource"]
      763 GETTABLEKS                       R21 R21 K97 ["Uploaded"]
      765 SETTABLEKS                       R21 R20 K83 ["Source"]
      767 DUPTABLE                         R21 K225 [{["Path"], ["AssetId"] = 1234567904, ["AssetType"], ["DisplayName"] = "Mock FontFamily", ["Description"] = "This is a mock FontFamily", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-02T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 15, ["Archived"] = False}]
      768 LOADK                            R23 K226 ["users/%*/creator-inventory-items/asset-1234567904"]
      769 GETTABLEKS                       R25 R3 K11 ["UserId"]
      771 NAMECALL                         R23 R23 K41 ["format"]
      773 CALL                             R23 2 1
      774 MOVE                             R22 R23
      775 SETTABLEKS                       R22 R21 K72 ["Path"]
      777 GETTABLEKS                       R22 R1 K74 ["AssetType"]
      779 GETTABLEKS                       R22 R22 K227 ["FontFamily"]
      781 SETTABLEKS                       R22 R21 K74 ["AssetType"]
      783 GETTABLEKS                       R22 R1 K81 ["ModerationStatus"]
      785 GETTABLEKS                       R22 R22 K88 ["Approved"]
      787 SETTABLEKS                       R22 R21 K81 ["ModerationStatus"]
      789 DUPTABLE                         R22 K230 [{["Id"] = 1234567905, ["Name"] = "1234567905", ["Type"], ["Uid"]}]
      790 GETTABLEKS                       R23 R1 K94 ["ScopeType"]
      792 GETTABLEKS                       R23 R23 K109 ["Group"]
      794 SETTABLEKS                       R23 R22 K91 ["Type"]
      796 MOVE                             R23 R2
      797 GETTABLEKS                       R24 R1 K94 ["ScopeType"]
      799 GETTABLEKS                       R24 R24 K109 ["Group"]
      801 LOADK                            R25 K228 [1234567905]
      802 CALL                             R23 2 1
      803 SETTABLEKS                       R23 R22 K92 ["Uid"]
      805 SETTABLEKS                       R22 R21 K82 ["Creator"]
      807 GETTABLEKS                       R22 R1 K96 ["AssetSource"]
      809 GETTABLEKS                       R22 R22 K97 ["Uploaded"]
      811 SETTABLEKS                       R22 R21 K83 ["Source"]
      813 DUPTABLE                         R22 K234 [{["Path"], ["AssetId"] = 1234567905, ["AssetType"], ["DisplayName"] = "Mock Animation", ["Description"] = "This is a mock animation", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 16, ["Archived"] = False}]
      814 LOADK                            R24 K235 ["users/%*/creator-inventory-items/asset-1234567905"]
      815 GETTABLEKS                       R26 R3 K11 ["UserId"]
      817 NAMECALL                         R24 R24 K41 ["format"]
      819 CALL                             R24 2 1
      820 MOVE                             R23 R24
      821 SETTABLEKS                       R23 R22 K72 ["Path"]
      823 GETTABLEKS                       R23 R1 K74 ["AssetType"]
      825 GETTABLEKS                       R23 R23 K160 ["Animation"]
      827 SETTABLEKS                       R23 R22 K74 ["AssetType"]
      829 GETTABLEKS                       R23 R1 K81 ["ModerationStatus"]
      831 GETTABLEKS                       R23 R23 K88 ["Approved"]
      833 SETTABLEKS                       R23 R22 K81 ["ModerationStatus"]
      835 DUPTABLE                         R23 K238 [{["Id"] = 1234567906, ["Name"] = "1234567906", ["Type"], ["Uid"]}]
      836 GETTABLEKS                       R24 R1 K94 ["ScopeType"]
      838 GETTABLEKS                       R24 R24 K109 ["Group"]
      840 SETTABLEKS                       R24 R23 K91 ["Type"]
      842 MOVE                             R24 R2
      843 GETTABLEKS                       R25 R1 K94 ["ScopeType"]
      845 GETTABLEKS                       R25 R25 K109 ["Group"]
      847 LOADK                            R26 K236 [1234567906]
      848 CALL                             R24 2 1
      849 SETTABLEKS                       R24 R23 K92 ["Uid"]
      851 SETTABLEKS                       R23 R22 K82 ["Creator"]
      853 GETTABLEKS                       R23 R1 K96 ["AssetSource"]
      855 GETTABLEKS                       R23 R23 K97 ["Uploaded"]
      857 SETTABLEKS                       R23 R22 K83 ["Source"]
      859 SETLIST                          R6 R7 16 [1]
      861 DUPTABLE                         R7 K240 [{["Path"], ["AssetId"] = 1234567906, ["AssetType"], ["DisplayName"] = "Test Model", ["Description"] = "This is a test model", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-16T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["SearchRank"] = 17, ["Archived"] = True}]
      862 LOADK                            R24 K241 ["users/%*/creator-inventory-items/asset-1234567906"]
      863 GETTABLEKS                       R26 R3 K11 ["UserId"]
      865 NAMECALL                         R24 R24 K41 ["format"]
      867 CALL                             R24 2 1
      868 MOVE                             R23 R24
      869 SETTABLEKS                       R23 R7 K72 ["Path"]
      871 GETTABLEKS                       R23 R1 K74 ["AssetType"]
      873 GETTABLEKS                       R23 R23 K87 ["Model"]
      875 SETTABLEKS                       R23 R7 K74 ["AssetType"]
      877 GETTABLEKS                       R23 R1 K81 ["ModerationStatus"]
      879 GETTABLEKS                       R23 R23 K88 ["Approved"]
      881 SETTABLEKS                       R23 R7 K81 ["ModerationStatus"]
      883 DUPTABLE                         R23 K242 [{["Id"] = 1234567890, ["Name"] = "TestUser", ["Type"], ["Uid"]}]
      884 GETTABLEKS                       R24 R1 K94 ["ScopeType"]
      886 GETTABLEKS                       R24 R24 K95 ["User"]
      888 SETTABLEKS                       R24 R23 K91 ["Type"]
      890 MOVE                             R24 R2
      891 GETTABLEKS                       R25 R1 K94 ["ScopeType"]
      893 GETTABLEKS                       R25 R25 K95 ["User"]
      895 LOADK                            R26 K52 [1234567890]
      896 CALL                             R24 2 1
      897 SETTABLEKS                       R24 R23 K92 ["Uid"]
      899 SETTABLEKS                       R23 R7 K82 ["Creator"]
      901 GETTABLEKS                       R23 R1 K96 ["AssetSource"]
      903 GETTABLEKS                       R23 R23 K97 ["Uploaded"]
      905 SETTABLEKS                       R23 R7 K83 ["Source"]
      907 SETLIST                          R6 R7 1 [17]
      909 NEWTABLE                         R7 0 2
      911 DUPTABLE                         R8 K246 [{["Path"], ["AssetId"] = 98765, ["AssetType"], ["DisplayName"] = "Test Place", ["Description"] = "This is a test Place", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-16T00:00:00Z", ["ModerationStatus"], ["Creator"], ["SearchRank"] = 1, ["Source"], ["Archived"] = False}]
      912 LOADK                            R10 K247 ["universe/%*/creator-inventory-items/asset-98765"]
      913 GETTABLEKS                       R12 R3 K26 ["ExperienceId"]
      915 NAMECALL                         R10 R10 K41 ["format"]
      917 CALL                             R10 2 1
      918 MOVE                             R9 R10
      919 SETTABLEKS                       R9 R8 K72 ["Path"]
      921 GETTABLEKS                       R9 R1 K74 ["AssetType"]
      923 GETTABLEKS                       R9 R9 K248 ["Place"]
      925 SETTABLEKS                       R9 R8 K74 ["AssetType"]
      927 GETTABLEKS                       R9 R1 K81 ["ModerationStatus"]
      929 GETTABLEKS                       R9 R9 K88 ["Approved"]
      931 SETTABLEKS                       R9 R8 K81 ["ModerationStatus"]
      933 DUPTABLE                         R9 K251 [{["Id"] = 11111, ["Name"] = "TestGame", ["Type"], ["Uid"]}]
      934 GETTABLEKS                       R10 R1 K94 ["ScopeType"]
      936 GETTABLEKS                       R10 R10 K220 ["Universe"]
      938 SETTABLEKS                       R10 R9 K91 ["Type"]
      940 MOVE                             R10 R2
      941 GETTABLEKS                       R11 R1 K94 ["ScopeType"]
      943 GETTABLEKS                       R11 R11 K220 ["Universe"]
      945 LOADN                            R12 11111
      946 CALL                             R10 2 1
      947 SETTABLEKS                       R10 R9 K92 ["Uid"]
      949 SETTABLEKS                       R9 R8 K82 ["Creator"]
      951 GETTABLEKS                       R9 R1 K96 ["AssetSource"]
      953 GETTABLEKS                       R9 R9 K97 ["Uploaded"]
      955 SETTABLEKS                       R9 R8 K83 ["Source"]
      957 DUPTABLE                         R9 K253 [{["Path"], ["AssetId"] = 98764, ["AssetType"], ["DisplayName"] = "Test Place", ["Description"] = "This is a test Place", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-16T00:00:00Z", ["ModerationStatus"], ["Creator"], ["SearchRank"] = 1, ["Source"], ["Archived"] = False}]
      958 LOADK                            R11 K254 ["users/%*/creator-inventory-items/asset-98764"]
      959 GETTABLEKS                       R13 R3 K11 ["UserId"]
      961 NAMECALL                         R11 R11 K41 ["format"]
      963 CALL                             R11 2 1
      964 MOVE                             R10 R11
      965 SETTABLEKS                       R10 R9 K72 ["Path"]
      967 GETTABLEKS                       R10 R1 K74 ["AssetType"]
      969 GETTABLEKS                       R10 R10 K248 ["Place"]
      971 SETTABLEKS                       R10 R9 K74 ["AssetType"]
      973 GETTABLEKS                       R10 R1 K81 ["ModerationStatus"]
      975 GETTABLEKS                       R10 R10 K88 ["Approved"]
      977 SETTABLEKS                       R10 R9 K81 ["ModerationStatus"]
      979 DUPTABLE                         R10 K251 [{["Id"] = 11111, ["Name"] = "TestGame", ["Type"], ["Uid"]}]
      980 GETTABLEKS                       R11 R1 K94 ["ScopeType"]
      982 GETTABLEKS                       R11 R11 K220 ["Universe"]
      984 SETTABLEKS                       R11 R10 K91 ["Type"]
      986 MOVE                             R11 R2
      987 GETTABLEKS                       R12 R1 K94 ["ScopeType"]
      989 GETTABLEKS                       R12 R12 K220 ["Universe"]
      991 LOADN                            R13 11111
      992 CALL                             R11 2 1
      993 SETTABLEKS                       R11 R10 K92 ["Uid"]
      995 SETTABLEKS                       R10 R9 K82 ["Creator"]
      997 GETTABLEKS                       R10 R1 K96 ["AssetSource"]
      999 GETTABLEKS                       R10 R10 K97 ["Uploaded"]
     1001 SETTABLEKS                       R10 R9 K83 ["Source"]
     1003 SETLIST                          R7 R8 2 [1]
     1005 NEWTABLE                         R8 0 7
     1007 DUPTABLE                         R9 K256 [{["Path"], ["AssetId"] = 1234, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1008 LOADK                            R11 K257 ["users/%*/creator-inventory-items/asset-1234"]
     1009 GETTABLEKS                       R13 R3 K11 ["UserId"]
     1011 NAMECALL                         R11 R11 K41 ["format"]
     1013 CALL                             R11 2 1
     1014 MOVE                             R10 R11
     1015 SETTABLEKS                       R10 R9 K72 ["Path"]
     1017 GETTABLEKS                       R10 R1 K74 ["AssetType"]
     1019 GETTABLEKS                       R10 R10 K105 ["Mesh"]
     1021 SETTABLEKS                       R10 R9 K74 ["AssetType"]
     1023 GETTABLEKS                       R10 R1 K81 ["ModerationStatus"]
     1025 GETTABLEKS                       R10 R10 K88 ["Approved"]
     1027 SETTABLEKS                       R10 R9 K81 ["ModerationStatus"]
     1029 DUPTABLE                         R10 K258 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1030 GETTABLEKS                       R11 R3 K15 ["GroupId1"]
     1032 SETTABLEKS                       R11 R10 K89 ["Id"]
     1034 GETTABLEKS                       R11 R1 K94 ["ScopeType"]
     1036 GETTABLEKS                       R11 R11 K109 ["Group"]
     1038 SETTABLEKS                       R11 R10 K91 ["Type"]
     1040 MOVE                             R11 R2
     1041 GETTABLEKS                       R12 R1 K94 ["ScopeType"]
     1043 GETTABLEKS                       R12 R12 K109 ["Group"]
     1045 GETTABLEKS                       R13 R3 K15 ["GroupId1"]
     1047 CALL                             R11 2 1
     1048 SETTABLEKS                       R11 R10 K92 ["Uid"]
     1050 SETTABLEKS                       R10 R9 K82 ["Creator"]
     1052 GETTABLEKS                       R10 R1 K96 ["AssetSource"]
     1054 GETTABLEKS                       R10 R10 K97 ["Uploaded"]
     1056 SETTABLEKS                       R10 R9 K83 ["Source"]
     1058 DUPTABLE                         R10 K262 [{["Path"], ["AssetId"] = 1235, ["AssetType"], ["DisplayName"] = "Mock Decal", ["Description"] = "This is a mock decal", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1059 LOADK                            R12 K263 ["users/%*/creator-inventory-items/asset-1235"]
     1060 GETTABLEKS                       R14 R3 K11 ["UserId"]
     1062 NAMECALL                         R12 R12 K41 ["format"]
     1064 CALL                             R12 2 1
     1065 MOVE                             R11 R12
     1066 SETTABLEKS                       R11 R10 K72 ["Path"]
     1068 GETTABLEKS                       R11 R1 K74 ["AssetType"]
     1070 GETTABLEKS                       R11 R11 K264 ["Decal"]
     1072 SETTABLEKS                       R11 R10 K74 ["AssetType"]
     1074 GETTABLEKS                       R11 R1 K81 ["ModerationStatus"]
     1076 GETTABLEKS                       R11 R11 K88 ["Approved"]
     1078 SETTABLEKS                       R11 R10 K81 ["ModerationStatus"]
     1080 DUPTABLE                         R11 K258 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1081 GETTABLEKS                       R12 R3 K15 ["GroupId1"]
     1083 SETTABLEKS                       R12 R11 K89 ["Id"]
     1085 GETTABLEKS                       R12 R1 K94 ["ScopeType"]
     1087 GETTABLEKS                       R12 R12 K109 ["Group"]
     1089 SETTABLEKS                       R12 R11 K91 ["Type"]
     1091 MOVE                             R12 R2
     1092 GETTABLEKS                       R13 R1 K94 ["ScopeType"]
     1094 GETTABLEKS                       R13 R13 K109 ["Group"]
     1096 GETTABLEKS                       R14 R3 K15 ["GroupId1"]
     1098 CALL                             R12 2 1
     1099 SETTABLEKS                       R12 R11 K92 ["Uid"]
     1101 SETTABLEKS                       R11 R10 K82 ["Creator"]
     1103 GETTABLEKS                       R11 R1 K96 ["AssetSource"]
     1105 GETTABLEKS                       R11 R11 K97 ["Uploaded"]
     1107 SETTABLEKS                       R11 R10 K83 ["Source"]
     1109 DUPTABLE                         R11 K266 [{["Path"], ["AssetId"] = 1236, ["AssetType"], ["DisplayName"] = "Mock Audio", ["Description"] = "This is a mock audio", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1110 LOADK                            R13 K267 ["users/%*/creator-inventory-items/asset-1236"]
     1111 GETTABLEKS                       R15 R3 K11 ["UserId"]
     1113 NAMECALL                         R13 R13 K41 ["format"]
     1115 CALL                             R13 2 1
     1116 MOVE                             R12 R13
     1117 SETTABLEKS                       R12 R11 K72 ["Path"]
     1119 GETTABLEKS                       R12 R1 K74 ["AssetType"]
     1121 GETTABLEKS                       R12 R12 K126 ["Audio"]
     1123 SETTABLEKS                       R12 R11 K74 ["AssetType"]
     1125 GETTABLEKS                       R12 R1 K81 ["ModerationStatus"]
     1127 GETTABLEKS                       R12 R12 K88 ["Approved"]
     1129 SETTABLEKS                       R12 R11 K81 ["ModerationStatus"]
     1131 DUPTABLE                         R12 K258 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1132 GETTABLEKS                       R13 R3 K15 ["GroupId1"]
     1134 SETTABLEKS                       R13 R12 K89 ["Id"]
     1136 GETTABLEKS                       R13 R1 K94 ["ScopeType"]
     1138 GETTABLEKS                       R13 R13 K109 ["Group"]
     1140 SETTABLEKS                       R13 R12 K91 ["Type"]
     1142 MOVE                             R13 R2
     1143 GETTABLEKS                       R14 R1 K94 ["ScopeType"]
     1145 GETTABLEKS                       R14 R14 K109 ["Group"]
     1147 GETTABLEKS                       R15 R3 K15 ["GroupId1"]
     1149 CALL                             R13 2 1
     1150 SETTABLEKS                       R13 R12 K92 ["Uid"]
     1152 SETTABLEKS                       R12 R11 K82 ["Creator"]
     1154 GETTABLEKS                       R12 R1 K96 ["AssetSource"]
     1156 GETTABLEKS                       R12 R12 K97 ["Uploaded"]
     1158 SETTABLEKS                       R12 R11 K83 ["Source"]
     1160 DUPTABLE                         R12 K269 [{["Path"], ["AssetId"] = 1237, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1161 LOADK                            R14 K270 ["users/%*/creator-inventory-items/asset-1237"]
     1162 GETTABLEKS                       R16 R3 K11 ["UserId"]
     1164 NAMECALL                         R14 R14 K41 ["format"]
     1166 CALL                             R14 2 1
     1167 MOVE                             R13 R14
     1168 SETTABLEKS                       R13 R12 K72 ["Path"]
     1170 GETTABLEKS                       R13 R1 K74 ["AssetType"]
     1172 GETTABLEKS                       R13 R13 K105 ["Mesh"]
     1174 SETTABLEKS                       R13 R12 K74 ["AssetType"]
     1176 GETTABLEKS                       R13 R1 K81 ["ModerationStatus"]
     1178 GETTABLEKS                       R13 R13 K88 ["Approved"]
     1180 SETTABLEKS                       R13 R12 K81 ["ModerationStatus"]
     1182 DUPTABLE                         R13 K258 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1183 GETTABLEKS                       R14 R3 K15 ["GroupId1"]
     1185 SETTABLEKS                       R14 R13 K89 ["Id"]
     1187 GETTABLEKS                       R14 R1 K94 ["ScopeType"]
     1189 GETTABLEKS                       R14 R14 K109 ["Group"]
     1191 SETTABLEKS                       R14 R13 K91 ["Type"]
     1193 MOVE                             R14 R2
     1194 GETTABLEKS                       R15 R1 K94 ["ScopeType"]
     1196 GETTABLEKS                       R15 R15 K109 ["Group"]
     1198 GETTABLEKS                       R16 R3 K15 ["GroupId1"]
     1200 CALL                             R14 2 1
     1201 SETTABLEKS                       R14 R13 K92 ["Uid"]
     1203 SETTABLEKS                       R13 R12 K82 ["Creator"]
     1205 GETTABLEKS                       R13 R1 K96 ["AssetSource"]
     1207 GETTABLEKS                       R13 R13 K97 ["Uploaded"]
     1209 SETTABLEKS                       R13 R12 K83 ["Source"]
     1211 DUPTABLE                         R13 K272 [{["Path"], ["AssetId"] = 1238, ["AssetType"], ["DisplayName"] = "Mock Image", ["Description"] = "This is a mock image", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1212 LOADK                            R15 K273 ["users/%*/creator-inventory-items/asset-1238"]
     1213 GETTABLEKS                       R17 R3 K15 ["GroupId1"]
     1215 NAMECALL                         R15 R15 K41 ["format"]
     1217 CALL                             R15 2 1
     1218 MOVE                             R14 R15
     1219 SETTABLEKS                       R14 R13 K72 ["Path"]
     1221 GETTABLEKS                       R14 R1 K74 ["AssetType"]
     1223 GETTABLEKS                       R14 R14 K116 ["Image"]
     1225 SETTABLEKS                       R14 R13 K74 ["AssetType"]
     1227 GETTABLEKS                       R14 R1 K81 ["ModerationStatus"]
     1229 GETTABLEKS                       R14 R14 K88 ["Approved"]
     1231 SETTABLEKS                       R14 R13 K81 ["ModerationStatus"]
     1233 DUPTABLE                         R14 K258 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1234 GETTABLEKS                       R15 R3 K15 ["GroupId1"]
     1236 SETTABLEKS                       R15 R14 K89 ["Id"]
     1238 GETTABLEKS                       R15 R1 K94 ["ScopeType"]
     1240 GETTABLEKS                       R15 R15 K109 ["Group"]
     1242 SETTABLEKS                       R15 R14 K91 ["Type"]
     1244 MOVE                             R15 R2
     1245 GETTABLEKS                       R16 R1 K94 ["ScopeType"]
     1247 GETTABLEKS                       R16 R16 K109 ["Group"]
     1249 GETTABLEKS                       R17 R3 K15 ["GroupId1"]
     1251 CALL                             R15 2 1
     1252 SETTABLEKS                       R15 R14 K92 ["Uid"]
     1254 SETTABLEKS                       R14 R13 K82 ["Creator"]
     1256 GETTABLEKS                       R14 R1 K96 ["AssetSource"]
     1258 GETTABLEKS                       R14 R14 K97 ["Uploaded"]
     1260 SETTABLEKS                       R14 R13 K83 ["Source"]
     1262 DUPTABLE                         R14 K277 [{["Path"], ["AssetId"] = 1239, ["AssetType"], ["DisplayName"] = "Mock Video", ["Description"] = "This is a mock video", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1263 LOADK                            R16 K278 ["users/%*/creator-inventory-items/asset-1239"]
     1264 GETTABLEKS                       R18 R3 K15 ["GroupId1"]
     1266 NAMECALL                         R16 R16 K41 ["format"]
     1268 CALL                             R16 2 1
     1269 MOVE                             R15 R16
     1270 SETTABLEKS                       R15 R14 K72 ["Path"]
     1272 GETTABLEKS                       R15 R1 K74 ["AssetType"]
     1274 GETTABLEKS                       R15 R15 K136 ["Video"]
     1276 SETTABLEKS                       R15 R14 K74 ["AssetType"]
     1278 GETTABLEKS                       R15 R1 K81 ["ModerationStatus"]
     1280 GETTABLEKS                       R15 R15 K88 ["Approved"]
     1282 SETTABLEKS                       R15 R14 K81 ["ModerationStatus"]
     1284 DUPTABLE                         R15 K258 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1285 GETTABLEKS                       R16 R3 K15 ["GroupId1"]
     1287 SETTABLEKS                       R16 R15 K89 ["Id"]
     1289 GETTABLEKS                       R16 R1 K94 ["ScopeType"]
     1291 GETTABLEKS                       R16 R16 K109 ["Group"]
     1293 SETTABLEKS                       R16 R15 K91 ["Type"]
     1295 MOVE                             R16 R2
     1296 GETTABLEKS                       R17 R1 K94 ["ScopeType"]
     1298 GETTABLEKS                       R17 R17 K109 ["Group"]
     1300 GETTABLEKS                       R18 R3 K15 ["GroupId1"]
     1302 CALL                             R16 2 1
     1303 SETTABLEKS                       R16 R15 K92 ["Uid"]
     1305 SETTABLEKS                       R15 R14 K82 ["Creator"]
     1307 GETTABLEKS                       R15 R1 K96 ["AssetSource"]
     1309 GETTABLEKS                       R15 R15 K97 ["Uploaded"]
     1311 SETTABLEKS                       R15 R14 K83 ["Source"]
     1313 DUPTABLE                         R15 K280 [{["Path"], ["AssetId"] = 12310, ["AssetType"], ["DisplayName"] = "Mock Animation", ["Description"] = "This is a mock animation", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1314 LOADK                            R17 K281 ["users/%*/creator-inventory-items/asset-12310"]
     1315 GETTABLEKS                       R19 R3 K15 ["GroupId1"]
     1317 NAMECALL                         R17 R17 K41 ["format"]
     1319 CALL                             R17 2 1
     1320 MOVE                             R16 R17
     1321 SETTABLEKS                       R16 R15 K72 ["Path"]
     1323 GETTABLEKS                       R16 R1 K74 ["AssetType"]
     1325 GETTABLEKS                       R16 R16 K160 ["Animation"]
     1327 SETTABLEKS                       R16 R15 K74 ["AssetType"]
     1329 GETTABLEKS                       R16 R1 K81 ["ModerationStatus"]
     1331 GETTABLEKS                       R16 R16 K88 ["Approved"]
     1333 SETTABLEKS                       R16 R15 K81 ["ModerationStatus"]
     1335 DUPTABLE                         R16 K258 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1336 GETTABLEKS                       R17 R3 K15 ["GroupId1"]
     1338 SETTABLEKS                       R17 R16 K89 ["Id"]
     1340 GETTABLEKS                       R17 R1 K94 ["ScopeType"]
     1342 GETTABLEKS                       R17 R17 K109 ["Group"]
     1344 SETTABLEKS                       R17 R16 K91 ["Type"]
     1346 MOVE                             R17 R2
     1347 GETTABLEKS                       R18 R1 K94 ["ScopeType"]
     1349 GETTABLEKS                       R18 R18 K109 ["Group"]
     1351 GETTABLEKS                       R19 R3 K15 ["GroupId1"]
     1353 CALL                             R17 2 1
     1354 SETTABLEKS                       R17 R16 K92 ["Uid"]
     1356 SETTABLEKS                       R16 R15 K82 ["Creator"]
     1358 GETTABLEKS                       R16 R1 K96 ["AssetSource"]
     1360 GETTABLEKS                       R16 R16 K97 ["Uploaded"]
     1362 SETTABLEKS                       R16 R15 K83 ["Source"]
     1364 SETLIST                          R8 R9 7 [1]
     1366 NEWTABLE                         R9 0 2
     1368 DUPTABLE                         R10 K283 [{["Path"], ["AssetId"] = 8976, ["AssetType"], ["DisplayName"] = "Mock Mesh", ["Description"] = "This is a mock mesh", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1369 LOADK                            R12 K284 ["users/%*/creator-inventory-items/asset-8976"]
     1370 GETTABLEKS                       R14 R3 K11 ["UserId"]
     1372 NAMECALL                         R12 R12 K41 ["format"]
     1374 CALL                             R12 2 1
     1375 MOVE                             R11 R12
     1376 SETTABLEKS                       R11 R10 K72 ["Path"]
     1378 GETTABLEKS                       R11 R1 K74 ["AssetType"]
     1380 GETTABLEKS                       R11 R11 K105 ["Mesh"]
     1382 SETTABLEKS                       R11 R10 K74 ["AssetType"]
     1384 GETTABLEKS                       R11 R1 K81 ["ModerationStatus"]
     1386 GETTABLEKS                       R11 R11 K88 ["Approved"]
     1388 SETTABLEKS                       R11 R10 K81 ["ModerationStatus"]
     1390 DUPTABLE                         R11 K285 [{["Id"], ["Name"] = "Group with a really long name", ["Type"], ["Uid"]}]
     1391 GETTABLEKS                       R12 R3 K19 ["GroupId2"]
     1393 SETTABLEKS                       R12 R11 K89 ["Id"]
     1395 GETTABLEKS                       R12 R1 K94 ["ScopeType"]
     1397 GETTABLEKS                       R12 R12 K109 ["Group"]
     1399 SETTABLEKS                       R12 R11 K91 ["Type"]
     1401 MOVE                             R12 R2
     1402 GETTABLEKS                       R13 R1 K94 ["ScopeType"]
     1404 GETTABLEKS                       R13 R13 K109 ["Group"]
     1406 GETTABLEKS                       R14 R3 K19 ["GroupId2"]
     1408 CALL                             R12 2 1
     1409 SETTABLEKS                       R12 R11 K92 ["Uid"]
     1411 SETTABLEKS                       R11 R10 K82 ["Creator"]
     1413 GETTABLEKS                       R11 R1 K96 ["AssetSource"]
     1415 GETTABLEKS                       R11 R11 K97 ["Uploaded"]
     1417 SETTABLEKS                       R11 R10 K83 ["Source"]
     1419 DUPTABLE                         R11 K287 [{["Path"], ["AssetId"] = 7890, ["AssetType"], ["DisplayName"] = "Mock Decal", ["Description"] = "This is a mock decal", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1420 LOADK                            R13 K288 ["users/%*/creator-inventory-items/asset-7890"]
     1421 GETTABLEKS                       R15 R3 K19 ["GroupId2"]
     1423 NAMECALL                         R13 R13 K41 ["format"]
     1425 CALL                             R13 2 1
     1426 MOVE                             R12 R13
     1427 SETTABLEKS                       R12 R11 K72 ["Path"]
     1429 GETTABLEKS                       R12 R1 K74 ["AssetType"]
     1431 GETTABLEKS                       R12 R12 K264 ["Decal"]
     1433 SETTABLEKS                       R12 R11 K74 ["AssetType"]
     1435 GETTABLEKS                       R12 R1 K81 ["ModerationStatus"]
     1437 GETTABLEKS                       R12 R12 K88 ["Approved"]
     1439 SETTABLEKS                       R12 R11 K81 ["ModerationStatus"]
     1441 DUPTABLE                         R12 K285 [{["Id"], ["Name"] = "Group with a really long name", ["Type"], ["Uid"]}]
     1442 GETTABLEKS                       R13 R3 K19 ["GroupId2"]
     1444 SETTABLEKS                       R13 R12 K89 ["Id"]
     1446 GETTABLEKS                       R13 R1 K94 ["ScopeType"]
     1448 GETTABLEKS                       R13 R13 K109 ["Group"]
     1450 SETTABLEKS                       R13 R12 K91 ["Type"]
     1452 MOVE                             R13 R2
     1453 GETTABLEKS                       R14 R1 K94 ["ScopeType"]
     1455 GETTABLEKS                       R14 R14 K109 ["Group"]
     1457 GETTABLEKS                       R15 R3 K19 ["GroupId2"]
     1459 CALL                             R13 2 1
     1460 SETTABLEKS                       R13 R12 K92 ["Uid"]
     1462 SETTABLEKS                       R12 R11 K82 ["Creator"]
     1464 GETTABLEKS                       R12 R1 K96 ["AssetSource"]
     1466 GETTABLEKS                       R12 R12 K97 ["Uploaded"]
     1468 SETTABLEKS                       R12 R11 K83 ["Source"]
     1470 SETLIST                          R9 R10 2 [1]
     1472 NEWTABLE                         R10 0 2
     1474 DUPTABLE                         R11 K291 [{["Path"], ["AssetId"] = 1234, ["AssetType"], ["DisplayName"] = "Mock Folder", ["Description"] = "This is a mock folder", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1475 LOADK                            R13 K292 ["users/%*/creator-inventory-items/folder-1234"]
     1476 GETTABLEKS                       R15 R3 K11 ["UserId"]
     1478 NAMECALL                         R13 R13 K41 ["format"]
     1480 CALL                             R13 2 1
     1481 MOVE                             R12 R13
     1482 SETTABLEKS                       R12 R11 K72 ["Path"]
     1484 GETTABLEKS                       R12 R1 K74 ["AssetType"]
     1486 GETTABLEKS                       R12 R12 K293 ["Folder"]
     1488 SETTABLEKS                       R12 R11 K74 ["AssetType"]
     1490 GETTABLEKS                       R12 R1 K81 ["ModerationStatus"]
     1492 GETTABLEKS                       R12 R12 K88 ["Approved"]
     1494 SETTABLEKS                       R12 R11 K81 ["ModerationStatus"]
     1496 DUPTABLE                         R12 K93 [{"Id", "Name", "Type", "Uid"}]
     1497 GETTABLEKS                       R13 R3 K11 ["UserId"]
     1499 SETTABLEKS                       R13 R12 K89 ["Id"]
     1501 GETTABLEKS                       R13 R3 K13 ["UserName"]
     1503 SETTABLEKS                       R13 R12 K90 ["Name"]
     1505 GETTABLEKS                       R13 R1 K94 ["ScopeType"]
     1507 GETTABLEKS                       R13 R13 K95 ["User"]
     1509 SETTABLEKS                       R13 R12 K91 ["Type"]
     1511 MOVE                             R13 R2
     1512 GETTABLEKS                       R14 R1 K94 ["ScopeType"]
     1514 GETTABLEKS                       R14 R14 K95 ["User"]
     1516 GETTABLEKS                       R15 R3 K11 ["UserId"]
     1518 CALL                             R13 2 1
     1519 SETTABLEKS                       R13 R12 K92 ["Uid"]
     1521 SETTABLEKS                       R12 R11 K82 ["Creator"]
     1523 GETTABLEKS                       R12 R1 K96 ["AssetSource"]
     1525 GETTABLEKS                       R12 R12 K97 ["Uploaded"]
     1527 SETTABLEKS                       R12 R11 K83 ["Source"]
     1529 DUPTABLE                         R12 K296 [{["Path"], ["AssetId"] = 3456, ["AssetType"], ["DisplayName"] = "Mock Folder 2", ["Description"] = "This is a mock folder", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1530 LOADK                            R14 K297 ["users/%*/creator-inventory-items/folder-3456"]
     1531 GETTABLEKS                       R16 R3 K11 ["UserId"]
     1533 NAMECALL                         R14 R14 K41 ["format"]
     1535 CALL                             R14 2 1
     1536 MOVE                             R13 R14
     1537 SETTABLEKS                       R13 R12 K72 ["Path"]
     1539 GETTABLEKS                       R13 R1 K74 ["AssetType"]
     1541 GETTABLEKS                       R13 R13 K293 ["Folder"]
     1543 SETTABLEKS                       R13 R12 K74 ["AssetType"]
     1545 GETTABLEKS                       R13 R1 K81 ["ModerationStatus"]
     1547 GETTABLEKS                       R13 R13 K88 ["Approved"]
     1549 SETTABLEKS                       R13 R12 K81 ["ModerationStatus"]
     1551 DUPTABLE                         R13 K93 [{"Id", "Name", "Type", "Uid"}]
     1552 GETTABLEKS                       R14 R3 K11 ["UserId"]
     1554 SETTABLEKS                       R14 R13 K89 ["Id"]
     1556 GETTABLEKS                       R14 R3 K13 ["UserName"]
     1558 SETTABLEKS                       R14 R13 K90 ["Name"]
     1560 GETTABLEKS                       R14 R1 K94 ["ScopeType"]
     1562 GETTABLEKS                       R14 R14 K95 ["User"]
     1564 SETTABLEKS                       R14 R13 K91 ["Type"]
     1566 MOVE                             R14 R2
     1567 GETTABLEKS                       R15 R1 K94 ["ScopeType"]
     1569 GETTABLEKS                       R15 R15 K95 ["User"]
     1571 GETTABLEKS                       R16 R3 K11 ["UserId"]
     1573 CALL                             R14 2 1
     1574 SETTABLEKS                       R14 R13 K92 ["Uid"]
     1576 SETTABLEKS                       R13 R12 K82 ["Creator"]
     1578 GETTABLEKS                       R13 R1 K96 ["AssetSource"]
     1580 GETTABLEKS                       R13 R13 K97 ["Uploaded"]
     1582 SETTABLEKS                       R13 R12 K83 ["Source"]
     1584 SETLIST                          R10 R11 2 [1]
     1586 NEWTABLE                         R11 0 1
     1588 DUPTABLE                         R12 K301 [{["Path"], ["AssetId"] = 2345, ["AssetType"], ["DisplayName"] = "Mock SubFolder", ["Description"] = "This is a mock subfolder", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-01T00:00:00Z", ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False}]
     1589 LOADK                            R14 K302 ["users/%*/creator-inventory-items/folder-1234/folder-2345"]
     1590 GETTABLEKS                       R16 R3 K11 ["UserId"]
     1592 NAMECALL                         R14 R14 K41 ["format"]
     1594 CALL                             R14 2 1
     1595 MOVE                             R13 R14
     1596 SETTABLEKS                       R13 R12 K72 ["Path"]
     1598 GETTABLEKS                       R13 R1 K74 ["AssetType"]
     1600 GETTABLEKS                       R13 R13 K293 ["Folder"]
     1602 SETTABLEKS                       R13 R12 K74 ["AssetType"]
     1604 GETTABLEKS                       R13 R1 K81 ["ModerationStatus"]
     1606 GETTABLEKS                       R13 R13 K88 ["Approved"]
     1608 SETTABLEKS                       R13 R12 K81 ["ModerationStatus"]
     1610 DUPTABLE                         R13 K93 [{"Id", "Name", "Type", "Uid"}]
     1611 GETTABLEKS                       R14 R3 K11 ["UserId"]
     1613 SETTABLEKS                       R14 R13 K89 ["Id"]
     1615 GETTABLEKS                       R14 R3 K13 ["UserName"]
     1617 SETTABLEKS                       R14 R13 K90 ["Name"]
     1619 GETTABLEKS                       R14 R1 K94 ["ScopeType"]
     1621 GETTABLEKS                       R14 R14 K95 ["User"]
     1623 SETTABLEKS                       R14 R13 K91 ["Type"]
     1625 MOVE                             R14 R2
     1626 GETTABLEKS                       R15 R1 K94 ["ScopeType"]
     1628 GETTABLEKS                       R15 R15 K95 ["User"]
     1630 GETTABLEKS                       R16 R3 K11 ["UserId"]
     1632 CALL                             R14 2 1
     1633 SETTABLEKS                       R14 R13 K92 ["Uid"]
     1635 SETTABLEKS                       R13 R12 K82 ["Creator"]
     1637 GETTABLEKS                       R13 R1 K96 ["AssetSource"]
     1639 GETTABLEKS                       R13 R13 K97 ["Uploaded"]
     1641 SETTABLEKS                       R13 R12 K83 ["Source"]
     1643 SETLIST                          R11 R12 1 [1]
     1645 NEWTABLE                         R12 0 1
     1647 DUPTABLE                         R13 K306 [{["Path"], ["AssetId"] = 4321, ["AssetType"], ["DisplayName"] = "TestFolder Group1", ["Description"] = "This is a test folder", ["VersionNumber"] = 1, ["Created"] = "2021-01-01T00:00:00Z", ["Modified"] = "2021-01-16T00:00:00Z", ["ModerationStatus"], ["Creator"], ["SearchRank"] = 1, ["Source"], ["Archived"] = False}]
     1648 LOADK                            R15 K307 ["users/%*/creator-inventory-items/folder-1234/folder-4321"]
     1649 GETTABLEKS                       R17 R3 K15 ["GroupId1"]
     1651 NAMECALL                         R15 R15 K41 ["format"]
     1653 CALL                             R15 2 1
     1654 MOVE                             R14 R15
     1655 SETTABLEKS                       R14 R13 K72 ["Path"]
     1657 GETTABLEKS                       R14 R1 K74 ["AssetType"]
     1659 GETTABLEKS                       R14 R14 K293 ["Folder"]
     1661 SETTABLEKS                       R14 R13 K74 ["AssetType"]
     1663 GETTABLEKS                       R14 R1 K81 ["ModerationStatus"]
     1665 GETTABLEKS                       R14 R14 K88 ["Approved"]
     1667 SETTABLEKS                       R14 R13 K81 ["ModerationStatus"]
     1669 DUPTABLE                         R14 K93 [{"Id", "Name", "Type", "Uid"}]
     1670 GETTABLEKS                       R15 R3 K15 ["GroupId1"]
     1672 SETTABLEKS                       R15 R14 K89 ["Id"]
     1674 GETTABLEKS                       R15 R3 K17 ["GroupName1"]
     1676 SETTABLEKS                       R15 R14 K90 ["Name"]
     1678 GETTABLEKS                       R15 R1 K94 ["ScopeType"]
     1680 GETTABLEKS                       R15 R15 K109 ["Group"]
     1682 SETTABLEKS                       R15 R14 K91 ["Type"]
     1684 MOVE                             R15 R2
     1685 GETTABLEKS                       R16 R1 K94 ["ScopeType"]
     1687 GETTABLEKS                       R16 R16 K109 ["Group"]
     1689 GETTABLEKS                       R17 R3 K15 ["GroupId1"]
     1691 CALL                             R15 2 1
     1692 SETTABLEKS                       R15 R14 K92 ["Uid"]
     1694 SETTABLEKS                       R14 R13 K82 ["Creator"]
     1696 GETTABLEKS                       R14 R1 K96 ["AssetSource"]
     1698 GETTABLEKS                       R14 R14 K97 ["Uploaded"]
     1700 SETTABLEKS                       R14 R13 K83 ["Source"]
     1702 SETLIST                          R12 R13 1 [1]
     1704 NEWTABLE                         R13 0 0
     1706 SETTABLEKS                       R13 R3 K308 ["Assets"]
     1708 NEWTABLE                         R13 0 0
     1710 SETTABLEKS                       R13 R3 K309 ["Places"]
     1712 NEWTABLE                         R13 0 0
     1714 SETTABLEKS                       R13 R3 K310 ["Folders"]
     1716 GETTABLEKS                       R13 R3 K308 ["Assets"]
     1718 GETTABLEKS                       R14 R3 K11 ["UserId"]
     1720 SETTABLE                         R6 R13 R14
     1721 GETTABLEKS                       R13 R3 K309 ["Places"]
     1723 GETTABLEKS                       R14 R3 K11 ["UserId"]
     1725 SETTABLE                         R7 R13 R14
     1726 GETTABLEKS                       R13 R3 K310 ["Folders"]
     1728 GETTABLEKS                       R14 R3 K11 ["UserId"]
     1730 SETTABLE                         R10 R13 R14
     1731 GETTABLEKS                       R13 R3 K308 ["Assets"]
     1733 GETTABLEKS                       R14 R3 K15 ["GroupId1"]
     1735 SETTABLE                         R8 R13 R14
     1736 GETTABLEKS                       R13 R3 K310 ["Folders"]
     1738 GETTABLEKS                       R14 R3 K15 ["GroupId1"]
     1740 SETTABLE                         R12 R13 R14
     1741 GETTABLEKS                       R13 R3 K308 ["Assets"]
     1743 GETTABLEKS                       R14 R3 K19 ["GroupId2"]
     1745 SETTABLE                         R9 R13 R14
     1746 GETTABLEKS                       R13 R3 K308 ["Assets"]
     1748 GETTABLEKS                       R14 R3 K26 ["ExperienceId"]
     1750 SETTABLE                         R6 R13 R14
     1751 GETTABLEKS                       R13 R3 K308 ["Assets"]
     1753 GETTABLEN                        R14 R10 1
     1754 GETTABLEKS                       R14 R14 K73 ["AssetId"]
     1756 SETTABLE                         R11 R13 R14
     1757 GETTABLEKS                       R13 R3 K310 ["Folders"]
     1759 GETTABLEN                        R14 R10 1
     1760 GETTABLEKS                       R14 R14 K73 ["AssetId"]
     1762 SETTABLE                         R11 R13 R14
     1763 GETTABLEKS                       R13 R3 K308 ["Assets"]
     1765 GETTABLEN                        R14 R12 1
     1766 GETTABLEKS                       R14 R14 K73 ["AssetId"]
     1768 NEWTABLE                         R15 0 0
     1770 SETTABLE                         R15 R13 R14
     1771 GETTABLEKS                       R13 R3 K308 ["Assets"]
     1773 GETTABLEN                        R14 R11 1
     1774 GETTABLEKS                       R14 R14 K73 ["AssetId"]
     1776 NEWTABLE                         R15 0 0
     1778 SETTABLE                         R15 R13 R14
     1779 LOADK                            R13 K311 ["TestToken"]
     1780 SETTABLEKS                       R13 R3 K312 ["PageToken"]
     1782 NEWTABLE                         R13 4 0
     1784 GETTABLEKS                       R14 R3 K15 ["GroupId1"]
     1786 DUPTABLE                         R15 K258 [{["Id"], ["Name"] = "Group1", ["Type"], ["Uid"]}]
     1787 GETTABLEKS                       R16 R3 K15 ["GroupId1"]
     1789 SETTABLEKS                       R16 R15 K89 ["Id"]
     1791 GETTABLEKS                       R16 R1 K94 ["ScopeType"]
     1793 GETTABLEKS                       R16 R16 K109 ["Group"]
     1795 SETTABLEKS                       R16 R15 K91 ["Type"]
     1797 MOVE                             R16 R2
     1798 GETTABLEKS                       R17 R1 K94 ["ScopeType"]
     1800 GETTABLEKS                       R17 R17 K109 ["Group"]
     1802 GETTABLEKS                       R18 R3 K15 ["GroupId1"]
     1804 CALL                             R16 2 1
     1805 SETTABLEKS                       R16 R15 K92 ["Uid"]
     1807 SETTABLE                         R15 R13 R14
     1808 GETTABLEKS                       R14 R3 K19 ["GroupId2"]
     1810 DUPTABLE                         R15 K285 [{["Id"], ["Name"] = "Group with a really long name", ["Type"], ["Uid"]}]
     1811 GETTABLEKS                       R16 R3 K19 ["GroupId2"]
     1813 SETTABLEKS                       R16 R15 K89 ["Id"]
     1815 GETTABLEKS                       R16 R1 K94 ["ScopeType"]
     1817 GETTABLEKS                       R16 R16 K109 ["Group"]
     1819 SETTABLEKS                       R16 R15 K91 ["Type"]
     1821 MOVE                             R16 R2
     1822 GETTABLEKS                       R17 R1 K94 ["ScopeType"]
     1824 GETTABLEKS                       R17 R17 K109 ["Group"]
     1826 GETTABLEKS                       R18 R3 K19 ["GroupId2"]
     1828 CALL                             R16 2 1
     1829 SETTABLEKS                       R16 R15 K92 ["Uid"]
     1831 SETTABLE                         R15 R13 R14
     1832 GETTABLEKS                       R14 R3 K23 ["GroupId3"]
     1834 DUPTABLE                         R15 K313 [{["Id"], ["Name"] = "NoAssets :(", ["Type"], ["Uid"]}]
     1835 GETTABLEKS                       R16 R3 K23 ["GroupId3"]
     1837 SETTABLEKS                       R16 R15 K89 ["Id"]
     1839 GETTABLEKS                       R16 R1 K94 ["ScopeType"]
     1841 GETTABLEKS                       R16 R16 K109 ["Group"]
     1843 SETTABLEKS                       R16 R15 K91 ["Type"]
     1845 MOVE                             R16 R2
     1846 GETTABLEKS                       R17 R1 K94 ["ScopeType"]
     1848 GETTABLEKS                       R17 R17 K109 ["Group"]
     1850 GETTABLEKS                       R18 R3 K23 ["GroupId3"]
     1852 CALL                             R16 2 1
     1853 SETTABLEKS                       R16 R15 K92 ["Uid"]
     1855 SETTABLE                         R15 R13 R14
     1856 SETTABLEKS                       R13 R3 K314 ["Groups"]
     1858 NEWTABLE                         R14 0 0
     1860 MOVE                             R15 R13
     1861 LOADNIL                          R16
     1862 LOADNIL                          R17
     1863 FORGPREP                         R15
     1864 DUPTABLE                         R22 K317 [{"id", "name"}]
     1865 GETTABLEKS                       R23 R19 K89 ["Id"]
     1867 SETTABLEKS                       R23 R22 K315 ["id"]
     1869 GETTABLEKS                       R23 R19 K90 ["Name"]
     1871 SETTABLEKS                       R23 R22 K316 ["name"]
     1873 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
     1875 MOVE                             R21 R14
     1876 GETIMPORT                        R20 K320 [table.insert]
     1878 CALL                             R20 2 0
     1879 FORGLOOP                         R15 2 ; [-16]
     1881 DUPTABLE                         R15 K322 [{"data"}]
     1882 SETTABLEKS                       R14 R15 K321 ["data"]
     1884 SETTABLEKS                       R15 R3 K323 ["GroupsPayload"]
     1886 LOADN                            R15 1234
     1887 SETTABLEKS                       R15 R3 K324 ["FolderId"]
     1889 LOADK                            R15 K325 ["TestFolder"]
     1890 SETTABLEKS                       R15 R3 K326 ["FolderName"]
     1892 LOADK                            R16 K327 ["users/%*/creator-inventory-items/folder-%*"]
     1893 GETTABLEKS                       R18 R3 K11 ["UserId"]
     1895 GETTABLEKS                       R19 R3 K324 ["FolderId"]
     1897 NAMECALL                         R16 R16 K41 ["format"]
     1899 CALL                             R16 3 1
     1900 MOVE                             R15 R16
     1901 SETTABLEKS                       R15 R3 K328 ["FolderPath"]
     1903 DUPTABLE                         R15 K330 [{"path", "folderItem"}]
     1904 GETTABLEKS                       R16 R3 K328 ["FolderPath"]
     1906 SETTABLEKS                       R16 R15 K37 ["path"]
     1908 DUPTABLE                         R16 K332 [{"folder"}]
     1909 DUPTABLE                         R17 K336 [{["folderId"], ["parentFolderId"] = , ["displayName"], ["createTime"] = "2021-01-01T00:00:00Z", ["updateTime"] = "2021-01-02T00:00:00Z"}]
     1910 GETTABLEKS                       R18 R3 K324 ["FolderId"]
     1912 SETTABLEKS                       R18 R17 K333 ["folderId"]
     1914 GETTABLEKS                       R18 R3 K326 ["FolderName"]
     1916 SETTABLEKS                       R18 R17 K53 ["displayName"]
     1918 SETTABLEKS                       R17 R16 K331 ["folder"]
     1920 SETTABLEKS                       R16 R15 K329 ["folderItem"]
     1922 SETTABLEKS                       R15 R3 K337 ["FolderMetadata"]
     1924 CLOSEUPVALS                      R4
     1925 RETURN                           R3 1
