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
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["AssetManagement"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["Utils"]
       23 GETTABLEKS                       R3 R3 K11 ["createScopeUid"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Flags"]
       31 GETTABLEKS                       R5 R5 K13 ["getFIntAmrAssetFetchCount"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Flags"]
       40 GETTABLEKS                       R6 R6 K14 ["getFIntAmrRecentUploadsMax"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R7 K12 ["Flags"]
       49 GETTABLEKS                       R7 R7 K15 ["getFIntAmrFolderDepthMax"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K6 ["Src"]
       56 GETTABLEKS                       R8 R8 K12 ["Flags"]
       58 GETTABLEKS                       R8 R8 K16 ["getFIntAmrFolderBreadthMax"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K6 ["Src"]
       65 GETTABLEKS                       R9 R9 K12 ["Flags"]
       67 GETTABLEKS                       R9 R9 K17 ["getFIntAmrMoveAssetMax"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K6 ["Src"]
       74 GETTABLEKS                       R10 R10 K12 ["Flags"]
       76 GETTABLEKS                       R10 R10 K18 ["getFIntAmrMoveFolderMax"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K6 ["Src"]
       83 GETTABLEKS                       R11 R11 K12 ["Flags"]
       85 GETTABLEKS                       R11 R11 K19 ["getFIntAmrGetAssetParentsBatchMax"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K6 ["Src"]
       92 GETTABLEKS                       R12 R12 K12 ["Flags"]
       94 GETTABLEKS                       R12 R12 K20 ["getFIntAmrOpenInBrowserWarningThreshold"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R0 K6 ["Src"]
      101 GETTABLEKS                       R13 R13 K12 ["Flags"]
      103 GETTABLEKS                       R13 R13 K21 ["getFIntAmrInitialScopeFetchLimit"]
      105 CALL                             R12 1 1
      106 NEWTABLE                         R13 32 0
      108 LOADK                            R14 K22 ["OpenAssetConfiguration"]
      109 SETTABLEKS                       R14 R13 K23 ["OpenAssetConfigurationKey"]
      111 DUPTABLE                         R14 K32 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "AssetManager", ["Category"] = "Widgets", ["ItemId"] = "AssetManagerGui"}]
      112 SETTABLEKS                       R14 R13 K33 ["GuiUri"]
      114 DUPTABLE                         R14 K37 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      115 SETTABLEKS                       R14 R13 K38 ["PlaceVersionHistoryToggle"]
      117 DUPTABLE                         R14 K41 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Settings", ["ItemId"] = "PlaceId"}]
      118 SETTABLEKS                       R14 R13 K42 ["PlaceVersionHistoryPlaceIdUri"]
      120 NEWTABLE                         R14 0 3
      122 GETTABLEKS                       R15 R1 K43 ["ScopeType"]
      124 GETTABLEKS                       R15 R15 K44 ["User"]
      126 GETTABLEKS                       R16 R1 K43 ["ScopeType"]
      128 GETTABLEKS                       R16 R16 K45 ["Group"]
      130 GETTABLEKS                       R17 R1 K43 ["ScopeType"]
      132 GETTABLEKS                       R17 R17 K46 ["Universe"]
      134 SETLIST                          R14 R15 3 [1]
      136 SETTABLEKS                       R14 R13 K47 ["RootAccountScopeTypes"]
      138 DUPTABLE                         R14 K54 [{["Name"] = "", ["Type"], ["Id"] = 0, ["Uid"]}]
      139 GETTABLEKS                       R15 R1 K43 ["ScopeType"]
      141 GETTABLEKS                       R15 R15 K55 ["RecentUploads"]
      143 SETTABLEKS                       R15 R14 K50 ["Type"]
      145 MOVE                             R15 R3
      146 GETTABLEKS                       R16 R1 K43 ["ScopeType"]
      148 GETTABLEKS                       R16 R16 K55 ["RecentUploads"]
      150 LOADN                            R17 0
      151 CALL                             R15 2 1
      152 SETTABLEKS                       R15 R14 K53 ["Uid"]
      154 SETTABLEKS                       R14 R13 K55 ["RecentUploads"]
      156 LOADN                            R14 0
      157 SETTABLEKS                       R14 R13 K56 ["NewFolderId"]
      159 MOVE                             R14 R3
      160 GETTABLEKS                       R15 R1 K43 ["ScopeType"]
      162 GETTABLEKS                       R15 R15 K57 ["Folder"]
      164 GETTABLEKS                       R16 R13 K56 ["NewFolderId"]
      166 CALL                             R14 2 1
      167 SETTABLEKS                       R14 R13 K58 ["NewFolderUid"]
      169 MOVE                             R14 R6
      170 CALL                             R14 0 1
      171 SETTABLEKS                       R14 R13 K59 ["FolderDepthMax"]
      173 MOVE                             R14 R7
      174 CALL                             R14 0 1
      175 SETTABLEKS                       R14 R13 K60 ["FolderBreadthMax"]
      177 LOADN                            R14 50
      178 SETTABLEKS                       R14 R13 K61 ["ShareBatchAssetMax"]
      180 MOVE                             R14 R8
      181 CALL                             R14 0 1
      182 SETTABLEKS                       R14 R13 K62 ["MoveBatchAssetMax"]
      184 MOVE                             R14 R9
      185 CALL                             R14 0 1
      186 SETTABLEKS                       R14 R13 K63 ["MoveBatchFolderMax"]
      188 MOVE                             R14 R10
      189 CALL                             R14 0 1
      190 SETTABLEKS                       R14 R13 K64 ["GetAssetParentsBatchMax"]
      192 MOVE                             R14 R5
      193 CALL                             R14 0 1
      194 SETTABLEKS                       R14 R13 K65 ["RecentMax"]
      196 MOVE                             R14 R4
      197 CALL                             R14 0 1
      198 SETTABLEKS                       R14 R13 K66 ["ItemFetchMax"]
      200 MOVE                             R14 R12
      201 CALL                             R14 0 1
      202 SETTABLEKS                       R14 R13 K67 ["InitialScopeFetchLimit"]
      204 LOADN                            R14 5
      205 SETTABLEKS                       R14 R13 K68 ["FolderReadinessRetryCount"]
      207 NEWTABLE                         R14 16 0
      209 LOADB                            R15 1
      210 SETTABLEKS                       R15 R14 K69 ["\\"]
      212 LOADB                            R15 1
      213 SETTABLEKS                       R15 R14 K70 ["/"]
      215 LOADB                            R15 1
      216 SETTABLEKS                       R15 R14 K71 [":"]
      218 LOADB                            R15 1
      219 SETTABLEKS                       R15 R14 K72 ["*"]
      221 LOADB                            R15 1
      222 SETTABLEKS                       R15 R14 K73 ["?"]
      224 LOADB                            R15 1
      225 SETTABLEKS                       R15 R14 K74 ["\""]
      227 LOADB                            R15 1
      228 SETTABLEKS                       R15 R14 K75 ["<"]
      230 LOADB                            R15 1
      231 SETTABLEKS                       R15 R14 K76 [">"]
      233 LOADB                            R15 1
      234 SETTABLEKS                       R15 R14 K77 ["|"]
      236 SETTABLEKS                       R14 R13 K78 ["FolderForbiddenChars"]
      238 MOVE                             R14 R11
      239 CALL                             R14 0 1
      240 SETTABLEKS                       R14 R13 K79 ["OpenInBrowserWarningThreshold"]
      242 LOADN                            R14 3
      243 SETTABLEKS                       R14 R13 K80 ["SearchFoldersResultCountDefault"]
      245 LOADK                            R14 K81 [1.5]
      246 SETTABLEKS                       R14 R13 K82 ["RecentlyCreatedFolderHighlightTime"]
      248 DUPTABLE                         R14 K86 [{"DeleteFolder", "GetItems", "CreateFolder"}]
      249 NEWTABLE                         R15 2 0
      251 LOADK                            R16 K87 ["DeleteFolderFailedNotEmpty"]
      252 SETTABLEN                        R16 R15 1
      253 LOADK                            R16 K88 ["FolderNotFound"]
      254 SETTABLEN                        R16 R15 5
      255 SETTABLEKS                       R15 R14 K83 ["DeleteFolder"]
      257 NEWTABLE                         R15 1 0
      259 LOADK                            R16 K88 ["FolderNotFound"]
      260 SETTABLEN                        R16 R15 5
      261 SETTABLEKS                       R15 R14 K84 ["GetItems"]
      263 NEWTABLE                         R15 0 1
      265 LOADK                            R16 K89 ["CreateFolderDepthLimitExceeded"]
      266 SETTABLEN                        R16 R15 1
      267 SETTABLEKS                       R15 R14 K85 ["CreateFolder"]
      269 SETTABLEKS                       R14 R13 K90 ["ErrorTypeLookup"]
      271 RETURN                           R13 1
