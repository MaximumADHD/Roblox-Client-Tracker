MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K8 ["AssetMetadata"]
       20 GETTABLEKS                       R3 R2 K8 ["AssetMetadata"]
       22 GETIMPORT                        R4 K11 [table.freeze]
       24 DUPTABLE                         R5 K17 [{"id", "visibility", "name", "owner", "type"}]
       25 LOADN                            R6 123
       26 SETTABLEKS                       R6 R5 K12 ["id"]
       28 LOADK                            R6 K18 ["Public"]
       29 SETTABLEKS                       R6 R5 K13 ["visibility"]
       31 LOADK                            R6 K19 ["Asset1"]
       32 SETTABLEKS                       R6 R5 K14 ["name"]
       34 LOADK                            R6 K20 ["User1"]
       35 SETTABLEKS                       R6 R5 K15 ["owner"]
       37 GETIMPORT                        R6 K24 [Enum.AssetType.Audio]
       39 SETTABLEKS                       R6 R5 K16 ["type"]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K25 ["PUBLIC"]
       44 GETTABLEKS                       R3 R2 K8 ["AssetMetadata"]
       46 GETIMPORT                        R4 K11 [table.freeze]
       48 DUPTABLE                         R5 K26 [{"id", "visibility"}]
       49 LOADN                            R6 200
       50 SETTABLEKS                       R6 R5 K12 ["id"]
       52 LOADK                            R6 K27 ["Private"]
       53 SETTABLEKS                       R6 R5 K13 ["visibility"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K28 ["PRIVATE"]
       58 GETIMPORT                        R3 K11 [table.freeze]
       60 GETTABLEKS                       R4 R2 K8 ["AssetMetadata"]
       62 CALL                             R3 1 0
       63 NEWTABLE                         R3 0 0
       65 SETTABLEKS                       R3 R2 K29 ["AssetModel"]
       67 GETTABLEKS                       R3 R2 K29 ["AssetModel"]
       69 GETIMPORT                        R4 K11 [table.freeze]
       71 DUPTABLE                         R5 K32 [{"state", "metadata"}]
       72 LOADK                            R6 K33 ["Loaded"]
       73 SETTABLEKS                       R6 R5 K30 ["state"]
       75 GETIMPORT                        R6 K11 [table.freeze]
       77 GETIMPORT                        R7 K35 [table.clone]
       79 GETTABLEKS                       R8 R2 K8 ["AssetMetadata"]
       81 GETTABLEKS                       R8 R8 K25 ["PUBLIC"]
       83 CALL                             R7 1 -1
       84 CALL                             R6 -1 1
       85 SETTABLEKS                       R6 R5 K31 ["metadata"]
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R4 R3 K36 ["LOADED_PUBLIC"]
       90 GETTABLEKS                       R3 R2 K29 ["AssetModel"]
       92 GETIMPORT                        R4 K11 [table.freeze]
       94 DUPTABLE                         R5 K32 [{"state", "metadata"}]
       95 LOADK                            R6 K33 ["Loaded"]
       96 SETTABLEKS                       R6 R5 K30 ["state"]
       98 GETIMPORT                        R6 K11 [table.freeze]
      100 GETIMPORT                        R7 K35 [table.clone]
      102 GETTABLEKS                       R8 R2 K8 ["AssetMetadata"]
      104 GETTABLEKS                       R8 R8 K28 ["PRIVATE"]
      106 CALL                             R7 1 -1
      107 CALL                             R6 -1 1
      108 SETTABLEKS                       R6 R5 K31 ["metadata"]
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R4 R3 K37 ["LOADED_PRIVATE"]
      113 GETTABLEKS                       R3 R2 K29 ["AssetModel"]
      115 GETIMPORT                        R4 K11 [table.freeze]
      117 DUPTABLE                         R5 K38 [{"state"}]
      118 LOADK                            R6 K39 ["Loading"]
      119 SETTABLEKS                       R6 R5 K30 ["state"]
      121 CALL                             R4 1 1
      122 SETTABLEKS                       R4 R3 K40 ["LOADING"]
      124 GETTABLEKS                       R3 R2 K29 ["AssetModel"]
      126 GETIMPORT                        R4 K11 [table.freeze]
      128 DUPTABLE                         R5 K38 [{"state"}]
      129 LOADK                            R6 K41 ["Failed"]
      130 SETTABLEKS                       R6 R5 K30 ["state"]
      132 CALL                             R4 1 1
      133 SETTABLEKS                       R4 R3 K42 ["FAILED"]
      135 GETIMPORT                        R3 K11 [table.freeze]
      137 GETTABLEKS                       R4 R2 K29 ["AssetModel"]
      139 CALL                             R3 1 0
      140 GETIMPORT                        R3 K11 [table.freeze]
      142 NEWTABLE                         R4 4 0
      144 GETIMPORT                        R5 K11 [table.freeze]
      146 GETIMPORT                        R6 K35 [table.clone]
      148 GETTABLEKS                       R7 R2 K29 ["AssetModel"]
      150 GETTABLEKS                       R7 R7 K36 ["LOADED_PUBLIC"]
      152 CALL                             R6 1 -1
      153 CALL                             R5 -1 1
      154 SETTABLEN                        R5 R4 123
      155 LOADN                            R5 200
      156 GETIMPORT                        R6 K11 [table.freeze]
      158 GETIMPORT                        R7 K35 [table.clone]
      160 GETTABLEKS                       R8 R2 K29 ["AssetModel"]
      162 GETTABLEKS                       R8 R8 K37 ["LOADED_PRIVATE"]
      164 CALL                             R7 1 -1
      165 CALL                             R6 -1 1
      166 SETTABLE                         R6 R4 R5
      167 LOADN                            R5 21
      168 GETIMPORT                        R6 K11 [table.freeze]
      170 GETIMPORT                        R7 K35 [table.clone]
      172 GETTABLEKS                       R8 R2 K29 ["AssetModel"]
      174 GETTABLEKS                       R8 R8 K40 ["LOADING"]
      176 CALL                             R7 1 -1
      177 CALL                             R6 -1 1
      178 SETTABLE                         R6 R4 R5
      179 LOADK                            R5 K43 [101112]
      180 GETIMPORT                        R6 K11 [table.freeze]
      182 GETIMPORT                        R7 K35 [table.clone]
      184 GETTABLEKS                       R8 R2 K29 ["AssetModel"]
      186 GETTABLEKS                       R8 R8 K42 ["FAILED"]
      188 CALL                             R7 1 -1
      189 CALL                             R6 -1 1
      190 SETTABLE                         R6 R4 R5
      191 CALL                             R3 1 1
      192 SETTABLEKS                       R3 R2 K44 ["INACCESSIBLE_ASSET_MODELS"]
      194 NEWTABLE                         R3 0 0
      196 SETTABLEKS                       R3 R2 K45 ["UNSHARABLE_ASSET_MODELS"]
      198 NEWTABLE                         R3 0 0
      200 SETTABLEKS                       R3 R2 K46 ["INACCESSIBLE_ASSET_IDS"]
      202 NEWTABLE                         R3 0 0
      204 SETTABLEKS                       R3 R2 K47 ["UNSHARABLE_ASSET_IDS"]
      206 GETTABLEKS                       R3 R2 K44 ["INACCESSIBLE_ASSET_MODELS"]
      208 LOADNIL                          R4
      209 LOADNIL                          R5
      210 FORGPREP                         R3
      211 GETTABLEKS                       R9 R2 K46 ["INACCESSIBLE_ASSET_IDS"]
      213 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
      215 MOVE                             R10 R6
      216 GETIMPORT                        R8 K49 [table.insert]
      218 CALL                             R8 2 0
      219 MODK                             R8 R6 K50 [2]
      220 JUMPIFNOTEQKN                    R8 K51 [1] ; [+19]
      222 GETTABLEKS                       R9 R2 K47 ["UNSHARABLE_ASSET_IDS"]
      224 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
      226 MOVE                             R10 R6
      227 GETIMPORT                        R8 K49 [table.insert]
      229 CALL                             R8 2 0
      230 GETTABLEKS                       R8 R2 K45 ["UNSHARABLE_ASSET_MODELS"]
      232 GETIMPORT                        R9 K11 [table.freeze]
      234 GETIMPORT                        R10 K35 [table.clone]
      236 MOVE                             R11 R7
      237 CALL                             R10 1 -1
      238 CALL                             R9 -1 1
      239 SETTABLE                         R9 R8 R6
      240 FORGLOOP                         R3 2 ; [-30]
      242 GETIMPORT                        R3 K11 [table.freeze]
      244 GETTABLEKS                       R4 R2 K45 ["UNSHARABLE_ASSET_MODELS"]
      246 CALL                             R3 1 0
      247 GETIMPORT                        R3 K11 [table.freeze]
      249 GETTABLEKS                       R4 R2 K46 ["INACCESSIBLE_ASSET_IDS"]
      251 CALL                             R3 1 0
      252 GETIMPORT                        R3 K11 [table.freeze]
      254 GETTABLEKS                       R4 R2 K47 ["UNSHARABLE_ASSET_IDS"]
      256 CALL                             R3 1 0
      257 NEWTABLE                         R3 0 0
      259 SETTABLEKS                       R3 R2 K52 ["ShareDialogModel"]
      261 GETTABLEKS                       R3 R2 K52 ["ShareDialogModel"]
      263 GETIMPORT                        R4 K11 [table.freeze]
      265 DUPTABLE                         R5 K38 [{"state"}]
      266 LOADK                            R6 K53 ["Inactive"]
      267 SETTABLEKS                       R6 R5 K30 ["state"]
      269 CALL                             R4 1 1
      270 SETTABLEKS                       R4 R3 K54 ["INACTIVE"]
      272 GETTABLEKS                       R3 R2 K52 ["ShareDialogModel"]
      274 GETIMPORT                        R4 K11 [table.freeze]
      276 DUPTABLE                         R5 K56 [{"state", "assetModels"}]
      277 LOADK                            R6 K57 ["Prompt"]
      278 SETTABLEKS                       R6 R5 K30 ["state"]
      280 GETIMPORT                        R6 K11 [table.freeze]
      282 GETIMPORT                        R7 K35 [table.clone]
      284 GETTABLEKS                       R8 R2 K44 ["INACCESSIBLE_ASSET_MODELS"]
      286 CALL                             R7 1 -1
      287 CALL                             R6 -1 1
      288 SETTABLEKS                       R6 R5 K55 ["assetModels"]
      290 CALL                             R4 1 1
      291 SETTABLEKS                       R4 R3 K58 ["PROMPT"]
      293 GETTABLEKS                       R3 R2 K52 ["ShareDialogModel"]
      295 GETIMPORT                        R4 K11 [table.freeze]
      297 DUPTABLE                         R5 K56 [{"state", "assetModels"}]
      298 LOADK                            R6 K59 ["Sharing"]
      299 SETTABLEKS                       R6 R5 K30 ["state"]
      301 GETIMPORT                        R6 K11 [table.freeze]
      303 GETIMPORT                        R7 K35 [table.clone]
      305 GETTABLEKS                       R8 R2 K44 ["INACCESSIBLE_ASSET_MODELS"]
      307 CALL                             R7 1 -1
      308 CALL                             R6 -1 1
      309 SETTABLEKS                       R6 R5 K55 ["assetModels"]
      311 CALL                             R4 1 1
      312 SETTABLEKS                       R4 R3 K60 ["SHARING"]
      314 GETTABLEKS                       R3 R2 K52 ["ShareDialogModel"]
      316 GETIMPORT                        R4 K11 [table.freeze]
      318 DUPTABLE                         R5 K56 [{"state", "assetModels"}]
      319 LOADK                            R6 K61 ["CantShare"]
      320 SETTABLEKS                       R6 R5 K30 ["state"]
      322 GETIMPORT                        R6 K11 [table.freeze]
      324 GETIMPORT                        R7 K35 [table.clone]
      326 GETTABLEKS                       R8 R2 K45 ["UNSHARABLE_ASSET_MODELS"]
      328 CALL                             R7 1 -1
      329 CALL                             R6 -1 1
      330 SETTABLEKS                       R6 R5 K55 ["assetModels"]
      332 CALL                             R4 1 1
      333 SETTABLEKS                       R4 R3 K62 ["CANT_SHARE"]
      335 GETTABLEKS                       R3 R2 K52 ["ShareDialogModel"]
      337 GETIMPORT                        R4 K11 [table.freeze]
      339 DUPTABLE                         R5 K38 [{"state"}]
      340 LOADK                            R6 K63 ["UnexpectedError"]
      341 SETTABLEKS                       R6 R5 K30 ["state"]
      343 CALL                             R4 1 1
      344 SETTABLEKS                       R4 R3 K64 ["UNEXPECTED_ERROR"]
      346 GETIMPORT                        R3 K11 [table.freeze]
      348 GETTABLEKS                       R4 R2 K52 ["ShareDialogModel"]
      350 CALL                             R3 1 0
      351 GETIMPORT                        R3 K11 [table.freeze]
      353 MOVE                             R4 R2
      354 CALL                             R3 1 -1
      355 RETURN                           R3 -1
