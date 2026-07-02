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
       24 DUPTABLE                         R5 K21 [{["id"] = 123, ["visibility"] = "Public", ["name"] = "Asset1", ["owner"] = "User1", ["type"]}]
       25 GETIMPORT                        R6 K25 [Enum.AssetType.Audio]
       27 SETTABLEKS                       R6 R5 K20 ["type"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K26 ["PUBLIC"]
       32 GETTABLEKS                       R3 R2 K8 ["AssetMetadata"]
       34 GETIMPORT                        R4 K11 [table.freeze]
       36 DUPTABLE                         R5 K29 [{["id"] = 456, ["visibility"] = "Private"}]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K30 ["PRIVATE"]
       40 GETIMPORT                        R3 K11 [table.freeze]
       42 GETTABLEKS                       R4 R2 K8 ["AssetMetadata"]
       44 CALL                             R3 1 0
       45 NEWTABLE                         R3 0 0
       47 SETTABLEKS                       R3 R2 K31 ["AssetModel"]
       49 GETTABLEKS                       R3 R2 K31 ["AssetModel"]
       51 GETIMPORT                        R4 K11 [table.freeze]
       53 DUPTABLE                         R5 K35 [{["state"] = "Loaded", ["metadata"]}]
       54 GETIMPORT                        R6 K11 [table.freeze]
       56 GETIMPORT                        R7 K37 [table.clone]
       58 GETTABLEKS                       R8 R2 K8 ["AssetMetadata"]
       60 GETTABLEKS                       R8 R8 K26 ["PUBLIC"]
       62 CALL                             R7 1 -1
       63 CALL                             R6 -1 1
       64 SETTABLEKS                       R6 R5 K34 ["metadata"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R3 K38 ["LOADED_PUBLIC"]
       69 GETTABLEKS                       R3 R2 K31 ["AssetModel"]
       71 GETIMPORT                        R4 K11 [table.freeze]
       73 DUPTABLE                         R5 K35 [{["state"] = "Loaded", ["metadata"]}]
       74 GETIMPORT                        R6 K11 [table.freeze]
       76 GETIMPORT                        R7 K37 [table.clone]
       78 GETTABLEKS                       R8 R2 K8 ["AssetMetadata"]
       80 GETTABLEKS                       R8 R8 K30 ["PRIVATE"]
       82 CALL                             R7 1 -1
       83 CALL                             R6 -1 1
       84 SETTABLEKS                       R6 R5 K34 ["metadata"]
       86 CALL                             R4 1 1
       87 SETTABLEKS                       R4 R3 K39 ["LOADED_PRIVATE"]
       89 GETTABLEKS                       R3 R2 K31 ["AssetModel"]
       91 GETIMPORT                        R4 K11 [table.freeze]
       93 DUPTABLE                         R5 K41 [{["state"] = "Loading"}]
       94 CALL                             R4 1 1
       95 SETTABLEKS                       R4 R3 K42 ["LOADING"]
       97 GETTABLEKS                       R3 R2 K31 ["AssetModel"]
       99 GETIMPORT                        R4 K11 [table.freeze]
      101 DUPTABLE                         R5 K44 [{["state"] = "Failed"}]
      102 CALL                             R4 1 1
      103 SETTABLEKS                       R4 R3 K45 ["FAILED"]
      105 GETIMPORT                        R3 K11 [table.freeze]
      107 GETTABLEKS                       R4 R2 K31 ["AssetModel"]
      109 CALL                             R3 1 0
      110 GETIMPORT                        R3 K11 [table.freeze]
      112 NEWTABLE                         R4 4 0
      114 GETIMPORT                        R5 K11 [table.freeze]
      116 GETIMPORT                        R6 K37 [table.clone]
      118 GETTABLEKS                       R7 R2 K31 ["AssetModel"]
      120 GETTABLEKS                       R7 R7 K38 ["LOADED_PUBLIC"]
      122 CALL                             R6 1 -1
      123 CALL                             R5 -1 1
      124 SETTABLEN                        R5 R4 123
      125 LOADN                            R5 456
      126 GETIMPORT                        R6 K11 [table.freeze]
      128 GETIMPORT                        R7 K37 [table.clone]
      130 GETTABLEKS                       R8 R2 K31 ["AssetModel"]
      132 GETTABLEKS                       R8 R8 K39 ["LOADED_PRIVATE"]
      134 CALL                             R7 1 -1
      135 CALL                             R6 -1 1
      136 SETTABLE                         R6 R4 R5
      137 LOADN                            R5 789
      138 GETIMPORT                        R6 K11 [table.freeze]
      140 GETIMPORT                        R7 K37 [table.clone]
      142 GETTABLEKS                       R8 R2 K31 ["AssetModel"]
      144 GETTABLEKS                       R8 R8 K42 ["LOADING"]
      146 CALL                             R7 1 -1
      147 CALL                             R6 -1 1
      148 SETTABLE                         R6 R4 R5
      149 LOADK                            R5 K46 [101112]
      150 GETIMPORT                        R6 K11 [table.freeze]
      152 GETIMPORT                        R7 K37 [table.clone]
      154 GETTABLEKS                       R8 R2 K31 ["AssetModel"]
      156 GETTABLEKS                       R8 R8 K45 ["FAILED"]
      158 CALL                             R7 1 -1
      159 CALL                             R6 -1 1
      160 SETTABLE                         R6 R4 R5
      161 CALL                             R3 1 1
      162 SETTABLEKS                       R3 R2 K47 ["INACCESSIBLE_ASSET_MODELS"]
      164 NEWTABLE                         R3 0 0
      166 SETTABLEKS                       R3 R2 K48 ["UNSHARABLE_ASSET_MODELS"]
      168 NEWTABLE                         R3 0 0
      170 SETTABLEKS                       R3 R2 K49 ["INACCESSIBLE_ASSET_IDS"]
      172 NEWTABLE                         R3 0 0
      174 SETTABLEKS                       R3 R2 K50 ["UNSHARABLE_ASSET_IDS"]
      176 GETTABLEKS                       R3 R2 K47 ["INACCESSIBLE_ASSET_MODELS"]
      178 LOADNIL                          R4
      179 LOADNIL                          R5
      180 FORGPREP                         R3
      181 GETTABLEKS                       R9 R2 K49 ["INACCESSIBLE_ASSET_IDS"]
      183 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
      185 MOVE                             R10 R6
      186 GETIMPORT                        R8 K52 [table.insert]
      188 CALL                             R8 2 0
      189 MODK                             R8 R6 K53 [2]
      190 JUMPIFNOTEQKN                    R8 K54 [1] ; [+19]
      192 GETTABLEKS                       R9 R2 K50 ["UNSHARABLE_ASSET_IDS"]
      194 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
      196 MOVE                             R10 R6
      197 GETIMPORT                        R8 K52 [table.insert]
      199 CALL                             R8 2 0
      200 GETTABLEKS                       R8 R2 K48 ["UNSHARABLE_ASSET_MODELS"]
      202 GETIMPORT                        R9 K11 [table.freeze]
      204 GETIMPORT                        R10 K37 [table.clone]
      206 MOVE                             R11 R7
      207 CALL                             R10 1 -1
      208 CALL                             R9 -1 1
      209 SETTABLE                         R9 R8 R6
      210 FORGLOOP                         R3 2 ; [-30]
      212 GETIMPORT                        R3 K11 [table.freeze]
      214 GETTABLEKS                       R4 R2 K48 ["UNSHARABLE_ASSET_MODELS"]
      216 CALL                             R3 1 0
      217 GETIMPORT                        R3 K11 [table.freeze]
      219 GETTABLEKS                       R4 R2 K49 ["INACCESSIBLE_ASSET_IDS"]
      221 CALL                             R3 1 0
      222 GETIMPORT                        R3 K11 [table.freeze]
      224 GETTABLEKS                       R4 R2 K50 ["UNSHARABLE_ASSET_IDS"]
      226 CALL                             R3 1 0
      227 NEWTABLE                         R3 0 0
      229 SETTABLEKS                       R3 R2 K55 ["ShareDialogModel"]
      231 GETTABLEKS                       R3 R2 K55 ["ShareDialogModel"]
      233 GETIMPORT                        R4 K11 [table.freeze]
      235 DUPTABLE                         R5 K57 [{["state"] = "Inactive"}]
      236 CALL                             R4 1 1
      237 SETTABLEKS                       R4 R3 K58 ["INACTIVE"]
      239 GETTABLEKS                       R3 R2 K55 ["ShareDialogModel"]
      241 GETIMPORT                        R4 K11 [table.freeze]
      243 DUPTABLE                         R5 K61 [{["state"] = "Prompt", ["assetModels"]}]
      244 GETIMPORT                        R6 K11 [table.freeze]
      246 GETIMPORT                        R7 K37 [table.clone]
      248 GETTABLEKS                       R8 R2 K47 ["INACCESSIBLE_ASSET_MODELS"]
      250 CALL                             R7 1 -1
      251 CALL                             R6 -1 1
      252 SETTABLEKS                       R6 R5 K60 ["assetModels"]
      254 CALL                             R4 1 1
      255 SETTABLEKS                       R4 R3 K62 ["PROMPT"]
      257 GETTABLEKS                       R3 R2 K55 ["ShareDialogModel"]
      259 GETIMPORT                        R4 K11 [table.freeze]
      261 DUPTABLE                         R5 K64 [{["state"] = "Sharing", ["assetModels"]}]
      262 GETIMPORT                        R6 K11 [table.freeze]
      264 GETIMPORT                        R7 K37 [table.clone]
      266 GETTABLEKS                       R8 R2 K47 ["INACCESSIBLE_ASSET_MODELS"]
      268 CALL                             R7 1 -1
      269 CALL                             R6 -1 1
      270 SETTABLEKS                       R6 R5 K60 ["assetModels"]
      272 CALL                             R4 1 1
      273 SETTABLEKS                       R4 R3 K65 ["SHARING"]
      275 GETTABLEKS                       R3 R2 K55 ["ShareDialogModel"]
      277 GETIMPORT                        R4 K11 [table.freeze]
      279 DUPTABLE                         R5 K67 [{["state"] = "CantShare", ["assetModels"]}]
      280 GETIMPORT                        R6 K11 [table.freeze]
      282 GETIMPORT                        R7 K37 [table.clone]
      284 GETTABLEKS                       R8 R2 K48 ["UNSHARABLE_ASSET_MODELS"]
      286 CALL                             R7 1 -1
      287 CALL                             R6 -1 1
      288 SETTABLEKS                       R6 R5 K60 ["assetModels"]
      290 CALL                             R4 1 1
      291 SETTABLEKS                       R4 R3 K68 ["CANT_SHARE"]
      293 GETTABLEKS                       R3 R2 K55 ["ShareDialogModel"]
      295 GETIMPORT                        R4 K11 [table.freeze]
      297 DUPTABLE                         R5 K70 [{["state"] = "UnexpectedError"}]
      298 CALL                             R4 1 1
      299 SETTABLEKS                       R4 R3 K71 ["UNEXPECTED_ERROR"]
      301 GETIMPORT                        R3 K11 [table.freeze]
      303 GETTABLEKS                       R4 R2 K55 ["ShareDialogModel"]
      305 CALL                             R3 1 0
      306 GETIMPORT                        R3 K11 [table.freeze]
      308 MOVE                             R4 R2
      309 CALL                             R3 1 -1
      310 RETURN                           R3 -1
