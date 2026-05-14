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
       77 NEWTABLE                         R9 32 0
       79 LOADK                            R10 K17 ["OpenAssetConfiguration"]
       80 SETTABLEKS                       R10 R9 K18 ["OpenAssetConfigurationKey"]
       82 DUPTABLE                         R10 K24 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       83 LOADK                            R11 K25 ["Standalone"]
       84 SETTABLEKS                       R11 R10 K19 ["DataModel"]
       86 LOADK                            R11 K25 ["Standalone"]
       87 SETTABLEKS                       R11 R10 K20 ["PluginType"]
       89 LOADK                            R11 K2 ["AssetManager"]
       90 SETTABLEKS                       R11 R10 K21 ["PluginId"]
       92 LOADK                            R11 K26 ["Widgets"]
       93 SETTABLEKS                       R11 R10 K22 ["Category"]
       95 LOADK                            R11 K27 ["AssetManagerGui"]
       96 SETTABLEKS                       R11 R10 K23 ["ItemId"]
       98 SETTABLEKS                       R10 R9 K28 ["GuiUri"]
      100 DUPTABLE                         R10 K29 [{"DataModel", "PluginId", "Category", "ItemId"}]
      101 LOADK                            R11 K25 ["Standalone"]
      102 SETTABLEKS                       R11 R10 K19 ["DataModel"]
      104 LOADK                            R11 K30 ["PlaceVersionHistory"]
      105 SETTABLEKS                       R11 R10 K21 ["PluginId"]
      107 LOADK                            R11 K31 ["Actions"]
      108 SETTABLEKS                       R11 R10 K22 ["Category"]
      110 LOADK                            R11 K32 ["Toggle"]
      111 SETTABLEKS                       R11 R10 K23 ["ItemId"]
      113 SETTABLEKS                       R10 R9 K33 ["PlaceVersionHistoryToggle"]
      115 DUPTABLE                         R10 K29 [{"DataModel", "PluginId", "Category", "ItemId"}]
      116 LOADK                            R11 K25 ["Standalone"]
      117 SETTABLEKS                       R11 R10 K19 ["DataModel"]
      119 LOADK                            R11 K30 ["PlaceVersionHistory"]
      120 SETTABLEKS                       R11 R10 K21 ["PluginId"]
      122 LOADK                            R11 K34 ["Settings"]
      123 SETTABLEKS                       R11 R10 K22 ["Category"]
      125 LOADK                            R11 K35 ["PlaceId"]
      126 SETTABLEKS                       R11 R10 K23 ["ItemId"]
      128 SETTABLEKS                       R10 R9 K36 ["PlaceVersionHistoryPlaceIdUri"]
      130 NEWTABLE                         R10 0 4
      132 GETTABLEKS                       R11 R1 K37 ["ScopeType"]
      134 GETTABLEKS                       R11 R11 K38 ["User"]
      136 GETTABLEKS                       R12 R1 K37 ["ScopeType"]
      138 GETTABLEKS                       R12 R12 K39 ["Group"]
      140 GETTABLEKS                       R13 R1 K37 ["ScopeType"]
      142 GETTABLEKS                       R13 R13 K40 ["ProjectShared"]
      144 GETTABLEKS                       R14 R1 K37 ["ScopeType"]
      146 GETTABLEKS                       R14 R14 K41 ["Universe"]
      148 SETLIST                          R10 R11 4 [1]
      150 SETTABLEKS                       R10 R9 K42 ["RootAccountScopeTypes"]
      152 LOADK                            R10 K43 ["--"]
      153 SETTABLEKS                       R10 R9 K44 ["PlaceholderText"]
      155 DUPTABLE                         R10 K49 [{"Name", "Type", "Id", "Uid"}]
      156 LOADK                            R11 K50 [""]
      157 SETTABLEKS                       R11 R10 K45 ["Name"]
      159 GETTABLEKS                       R11 R1 K37 ["ScopeType"]
      161 GETTABLEKS                       R11 R11 K51 ["RecentUploads"]
      163 SETTABLEKS                       R11 R10 K46 ["Type"]
      165 LOADN                            R11 0
      166 SETTABLEKS                       R11 R10 K47 ["Id"]
      168 MOVE                             R11 R2
      169 GETTABLEKS                       R12 R1 K37 ["ScopeType"]
      171 GETTABLEKS                       R12 R12 K51 ["RecentUploads"]
      173 LOADN                            R13 0
      174 CALL                             R11 2 1
      175 SETTABLEKS                       R11 R10 K48 ["Uid"]
      177 SETTABLEKS                       R10 R9 K51 ["RecentUploads"]
      179 LOADN                            R10 0
      180 SETTABLEKS                       R10 R9 K52 ["NewFolderId"]
      182 MOVE                             R10 R2
      183 GETTABLEKS                       R11 R1 K37 ["ScopeType"]
      185 GETTABLEKS                       R11 R11 K53 ["Folder"]
      187 GETTABLEKS                       R12 R9 K52 ["NewFolderId"]
      189 CALL                             R10 2 1
      190 SETTABLEKS                       R10 R9 K54 ["NewFolderUid"]
      192 MOVE                             R10 R5
      193 CALL                             R10 0 1
      194 SETTABLEKS                       R10 R9 K55 ["FolderDepthMax"]
      196 MOVE                             R10 R6
      197 CALL                             R10 0 1
      198 SETTABLEKS                       R10 R9 K56 ["FolderBreadthMax"]
      200 MOVE                             R10 R7
      201 CALL                             R10 0 1
      202 SETTABLEKS                       R10 R9 K57 ["MoveBatchAssetMax"]
      204 MOVE                             R10 R8
      205 CALL                             R10 0 1
      206 SETTABLEKS                       R10 R9 K58 ["MoveBatchFolderMax"]
      208 MOVE                             R10 R4
      209 CALL                             R10 0 1
      210 SETTABLEKS                       R10 R9 K59 ["RecentMax"]
      212 MOVE                             R10 R3
      213 CALL                             R10 0 1
      214 SETTABLEKS                       R10 R9 K60 ["ItemFetchMax"]
      216 LOADN                            R10 3
      217 SETTABLEKS                       R10 R9 K61 ["FolderReadinessRetryCount"]
      219 NEWTABLE                         R10 16 0
      221 LOADB                            R11 1
      222 SETTABLEKS                       R11 R10 K62 ["\\"]
      224 LOADB                            R11 1
      225 SETTABLEKS                       R11 R10 K63 ["/"]
      227 LOADB                            R11 1
      228 SETTABLEKS                       R11 R10 K64 [":"]
      230 LOADB                            R11 1
      231 SETTABLEKS                       R11 R10 K65 ["*"]
      233 LOADB                            R11 1
      234 SETTABLEKS                       R11 R10 K66 ["?"]
      236 LOADB                            R11 1
      237 SETTABLEKS                       R11 R10 K67 ["\""]
      239 LOADB                            R11 1
      240 SETTABLEKS                       R11 R10 K68 ["<"]
      242 LOADB                            R11 1
      243 SETTABLEKS                       R11 R10 K69 [">"]
      245 LOADB                            R11 1
      246 SETTABLEKS                       R11 R10 K70 ["|"]
      248 SETTABLEKS                       R10 R9 K71 ["FolderForbiddenChars"]
      250 LOADN                            R10 3
      251 SETTABLEKS                       R10 R9 K72 ["SearchFoldersResultCountDefault"]
      253 DUPTABLE                         R10 K76 [{"DeleteFolder", "GetItems", "CreateFolder"}]
      254 NEWTABLE                         R11 2 0
      256 LOADK                            R12 K77 ["DeleteFolderFailedNotEmpty"]
      257 SETTABLEN                        R12 R11 1
      258 LOADK                            R12 K78 ["FolderNotFound"]
      259 SETTABLEN                        R12 R11 5
      260 SETTABLEKS                       R11 R10 K73 ["DeleteFolder"]
      262 NEWTABLE                         R11 1 0
      264 LOADK                            R12 K78 ["FolderNotFound"]
      265 SETTABLEN                        R12 R11 5
      266 SETTABLEKS                       R11 R10 K74 ["GetItems"]
      268 NEWTABLE                         R11 0 1
      270 LOADK                            R12 K79 ["CreateFolderDepthLimitExceeded"]
      271 SETTABLEN                        R12 R11 1
      272 SETTABLEKS                       R11 R10 K75 ["CreateFolder"]
      274 SETTABLEKS                       R10 R9 K80 ["ErrorTypeLookup"]
      276 RETURN                           R9 1
