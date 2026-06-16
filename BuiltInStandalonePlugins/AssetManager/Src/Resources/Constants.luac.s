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
       29 GETTABLEKS                       R4 R4 K11 ["getFIntAmrAssetFetchCount"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFIntAmrRecentUploadsMax"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Flags"]
       47 GETTABLEKS                       R6 R6 K13 ["getFIntAmrFolderDepthMax"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K10 ["Flags"]
       56 GETTABLEKS                       R7 R7 K14 ["getFIntAmrFolderBreadthMax"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K10 ["Flags"]
       65 GETTABLEKS                       R8 R8 K15 ["getFIntAmrMoveAssetMax"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R9 K10 ["Flags"]
       74 GETTABLEKS                       R9 R9 K16 ["getFIntAmrMoveFolderMax"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Src"]
       81 GETTABLEKS                       R10 R10 K10 ["Flags"]
       83 GETTABLEKS                       R10 R10 K17 ["getFIntAmrOpenInBrowserWarningThreshold"]
       85 CALL                             R9 1 1
       86 NEWTABLE                         R10 32 0
       88 LOADK                            R11 K18 ["OpenAssetConfiguration"]
       89 SETTABLEKS                       R11 R10 K19 ["OpenAssetConfigurationKey"]
       91 DUPTABLE                         R11 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       92 LOADK                            R12 K26 ["Standalone"]
       93 SETTABLEKS                       R12 R11 K20 ["DataModel"]
       95 LOADK                            R12 K26 ["Standalone"]
       96 SETTABLEKS                       R12 R11 K21 ["PluginType"]
       98 LOADK                            R12 K2 ["AssetManager"]
       99 SETTABLEKS                       R12 R11 K22 ["PluginId"]
      101 LOADK                            R12 K27 ["Widgets"]
      102 SETTABLEKS                       R12 R11 K23 ["Category"]
      104 LOADK                            R12 K28 ["AssetManagerGui"]
      105 SETTABLEKS                       R12 R11 K24 ["ItemId"]
      107 SETTABLEKS                       R11 R10 K29 ["GuiUri"]
      109 DUPTABLE                         R11 K30 [{"DataModel", "PluginId", "Category", "ItemId"}]
      110 LOADK                            R12 K26 ["Standalone"]
      111 SETTABLEKS                       R12 R11 K20 ["DataModel"]
      113 LOADK                            R12 K31 ["PlaceVersionHistory"]
      114 SETTABLEKS                       R12 R11 K22 ["PluginId"]
      116 LOADK                            R12 K32 ["Actions"]
      117 SETTABLEKS                       R12 R11 K23 ["Category"]
      119 LOADK                            R12 K33 ["Toggle"]
      120 SETTABLEKS                       R12 R11 K24 ["ItemId"]
      122 SETTABLEKS                       R11 R10 K34 ["PlaceVersionHistoryToggle"]
      124 DUPTABLE                         R11 K30 [{"DataModel", "PluginId", "Category", "ItemId"}]
      125 LOADK                            R12 K26 ["Standalone"]
      126 SETTABLEKS                       R12 R11 K20 ["DataModel"]
      128 LOADK                            R12 K31 ["PlaceVersionHistory"]
      129 SETTABLEKS                       R12 R11 K22 ["PluginId"]
      131 LOADK                            R12 K35 ["Settings"]
      132 SETTABLEKS                       R12 R11 K23 ["Category"]
      134 LOADK                            R12 K36 ["PlaceId"]
      135 SETTABLEKS                       R12 R11 K24 ["ItemId"]
      137 SETTABLEKS                       R11 R10 K37 ["PlaceVersionHistoryPlaceIdUri"]
      139 NEWTABLE                         R11 0 4
      141 GETTABLEKS                       R12 R1 K38 ["ScopeType"]
      143 GETTABLEKS                       R12 R12 K39 ["User"]
      145 GETTABLEKS                       R13 R1 K38 ["ScopeType"]
      147 GETTABLEKS                       R13 R13 K40 ["Group"]
      149 GETTABLEKS                       R14 R1 K38 ["ScopeType"]
      151 GETTABLEKS                       R14 R14 K41 ["ProjectShared"]
      153 GETTABLEKS                       R15 R1 K38 ["ScopeType"]
      155 GETTABLEKS                       R15 R15 K42 ["Universe"]
      157 SETLIST                          R11 R12 4 [1]
      159 SETTABLEKS                       R11 R10 K43 ["RootAccountScopeTypes"]
      161 LOADK                            R11 K44 ["--"]
      162 SETTABLEKS                       R11 R10 K45 ["PlaceholderText"]
      164 DUPTABLE                         R11 K50 [{"Name", "Type", "Id", "Uid"}]
      165 LOADK                            R12 K51 [""]
      166 SETTABLEKS                       R12 R11 K46 ["Name"]
      168 GETTABLEKS                       R12 R1 K38 ["ScopeType"]
      170 GETTABLEKS                       R12 R12 K52 ["RecentUploads"]
      172 SETTABLEKS                       R12 R11 K47 ["Type"]
      174 LOADN                            R12 0
      175 SETTABLEKS                       R12 R11 K48 ["Id"]
      177 MOVE                             R12 R2
      178 GETTABLEKS                       R13 R1 K38 ["ScopeType"]
      180 GETTABLEKS                       R13 R13 K52 ["RecentUploads"]
      182 LOADN                            R14 0
      183 CALL                             R12 2 1
      184 SETTABLEKS                       R12 R11 K49 ["Uid"]
      186 SETTABLEKS                       R11 R10 K52 ["RecentUploads"]
      188 LOADN                            R11 0
      189 SETTABLEKS                       R11 R10 K53 ["NewFolderId"]
      191 MOVE                             R11 R2
      192 GETTABLEKS                       R12 R1 K38 ["ScopeType"]
      194 GETTABLEKS                       R12 R12 K54 ["Folder"]
      196 GETTABLEKS                       R13 R10 K53 ["NewFolderId"]
      198 CALL                             R11 2 1
      199 SETTABLEKS                       R11 R10 K55 ["NewFolderUid"]
      201 MOVE                             R11 R5
      202 CALL                             R11 0 1
      203 SETTABLEKS                       R11 R10 K56 ["FolderDepthMax"]
      205 MOVE                             R11 R6
      206 CALL                             R11 0 1
      207 SETTABLEKS                       R11 R10 K57 ["FolderBreadthMax"]
      209 MOVE                             R11 R7
      210 CALL                             R11 0 1
      211 SETTABLEKS                       R11 R10 K58 ["MoveBatchAssetMax"]
      213 MOVE                             R11 R8
      214 CALL                             R11 0 1
      215 SETTABLEKS                       R11 R10 K59 ["MoveBatchFolderMax"]
      217 MOVE                             R11 R4
      218 CALL                             R11 0 1
      219 SETTABLEKS                       R11 R10 K60 ["RecentMax"]
      221 MOVE                             R11 R3
      222 CALL                             R11 0 1
      223 SETTABLEKS                       R11 R10 K61 ["ItemFetchMax"]
      225 LOADN                            R11 5
      226 SETTABLEKS                       R11 R10 K62 ["FolderReadinessRetryCount"]
      228 NEWTABLE                         R11 16 0
      230 LOADB                            R12 1
      231 SETTABLEKS                       R12 R11 K63 ["\\"]
      233 LOADB                            R12 1
      234 SETTABLEKS                       R12 R11 K64 ["/"]
      236 LOADB                            R12 1
      237 SETTABLEKS                       R12 R11 K65 [":"]
      239 LOADB                            R12 1
      240 SETTABLEKS                       R12 R11 K66 ["*"]
      242 LOADB                            R12 1
      243 SETTABLEKS                       R12 R11 K67 ["?"]
      245 LOADB                            R12 1
      246 SETTABLEKS                       R12 R11 K68 ["\""]
      248 LOADB                            R12 1
      249 SETTABLEKS                       R12 R11 K69 ["<"]
      251 LOADB                            R12 1
      252 SETTABLEKS                       R12 R11 K70 [">"]
      254 LOADB                            R12 1
      255 SETTABLEKS                       R12 R11 K71 ["|"]
      257 SETTABLEKS                       R11 R10 K72 ["FolderForbiddenChars"]
      259 MOVE                             R11 R9
      260 CALL                             R11 0 1
      261 SETTABLEKS                       R11 R10 K73 ["OpenInBrowserWarningThreshold"]
      263 LOADN                            R11 3
      264 SETTABLEKS                       R11 R10 K74 ["SearchFoldersResultCountDefault"]
      266 LOADK                            R11 K75 [1.5]
      267 SETTABLEKS                       R11 R10 K76 ["RecentlyCreatedFolderHighlightTime"]
      269 DUPTABLE                         R11 K80 [{"DeleteFolder", "GetItems", "CreateFolder"}]
      270 NEWTABLE                         R12 2 0
      272 LOADK                            R13 K81 ["DeleteFolderFailedNotEmpty"]
      273 SETTABLEN                        R13 R12 1
      274 LOADK                            R13 K82 ["FolderNotFound"]
      275 SETTABLEN                        R13 R12 5
      276 SETTABLEKS                       R12 R11 K77 ["DeleteFolder"]
      278 NEWTABLE                         R12 1 0
      280 LOADK                            R13 K82 ["FolderNotFound"]
      281 SETTABLEN                        R13 R12 5
      282 SETTABLEKS                       R12 R11 K78 ["GetItems"]
      284 NEWTABLE                         R12 0 1
      286 LOADK                            R13 K83 ["CreateFolderDepthLimitExceeded"]
      287 SETTABLEN                        R13 R12 1
      288 SETTABLEKS                       R12 R11 K79 ["CreateFolder"]
      290 SETTABLEKS                       R11 R10 K84 ["ErrorTypeLookup"]
      292 RETURN                           R10 1
