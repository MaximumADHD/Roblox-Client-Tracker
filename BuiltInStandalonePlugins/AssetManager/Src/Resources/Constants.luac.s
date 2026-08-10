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
       83 GETTABLEKS                       R10 R10 K17 ["getFIntAmrGetAssetParentsBatchMax"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Src"]
       90 GETTABLEKS                       R11 R11 K10 ["Flags"]
       92 GETTABLEKS                       R11 R11 K18 ["getFIntAmrOpenInBrowserWarningThreshold"]
       94 CALL                             R10 1 1
       95 NEWTABLE                         R11 32 0
       97 LOADK                            R12 K19 ["OpenAssetConfiguration"]
       98 SETTABLEKS                       R12 R11 K20 ["OpenAssetConfigurationKey"]
      100 DUPTABLE                         R12 K29 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "AssetManager", ["Category"] = "Widgets", ["ItemId"] = "AssetManagerGui"}]
      101 SETTABLEKS                       R12 R11 K30 ["GuiUri"]
      103 DUPTABLE                         R12 K34 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      104 SETTABLEKS                       R12 R11 K35 ["PlaceVersionHistoryToggle"]
      106 DUPTABLE                         R12 K38 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Settings", ["ItemId"] = "PlaceId"}]
      107 SETTABLEKS                       R12 R11 K39 ["PlaceVersionHistoryPlaceIdUri"]
      109 NEWTABLE                         R12 0 3
      111 GETTABLEKS                       R13 R1 K40 ["ScopeType"]
      113 GETTABLEKS                       R13 R13 K41 ["User"]
      115 GETTABLEKS                       R14 R1 K40 ["ScopeType"]
      117 GETTABLEKS                       R14 R14 K42 ["Group"]
      119 GETTABLEKS                       R15 R1 K40 ["ScopeType"]
      121 GETTABLEKS                       R15 R15 K43 ["Universe"]
      123 SETLIST                          R12 R13 3 [1]
      125 SETTABLEKS                       R12 R11 K44 ["RootAccountScopeTypes"]
      127 LOADK                            R12 K45 ["--"]
      128 SETTABLEKS                       R12 R11 K46 ["PlaceholderText"]
      130 DUPTABLE                         R12 K53 [{["Name"] = "", ["Type"], ["Id"] = 0, ["Uid"]}]
      131 GETTABLEKS                       R13 R1 K40 ["ScopeType"]
      133 GETTABLEKS                       R13 R13 K54 ["RecentUploads"]
      135 SETTABLEKS                       R13 R12 K49 ["Type"]
      137 MOVE                             R13 R2
      138 GETTABLEKS                       R14 R1 K40 ["ScopeType"]
      140 GETTABLEKS                       R14 R14 K54 ["RecentUploads"]
      142 LOADN                            R15 0
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R12 K52 ["Uid"]
      146 SETTABLEKS                       R12 R11 K54 ["RecentUploads"]
      148 LOADN                            R12 0
      149 SETTABLEKS                       R12 R11 K55 ["NewFolderId"]
      151 MOVE                             R12 R2
      152 GETTABLEKS                       R13 R1 K40 ["ScopeType"]
      154 GETTABLEKS                       R13 R13 K56 ["Folder"]
      156 GETTABLEKS                       R14 R11 K55 ["NewFolderId"]
      158 CALL                             R12 2 1
      159 SETTABLEKS                       R12 R11 K57 ["NewFolderUid"]
      161 MOVE                             R12 R5
      162 CALL                             R12 0 1
      163 SETTABLEKS                       R12 R11 K58 ["FolderDepthMax"]
      165 MOVE                             R12 R6
      166 CALL                             R12 0 1
      167 SETTABLEKS                       R12 R11 K59 ["FolderBreadthMax"]
      169 LOADN                            R12 50
      170 SETTABLEKS                       R12 R11 K60 ["ShareBatchAssetMax"]
      172 MOVE                             R12 R7
      173 CALL                             R12 0 1
      174 SETTABLEKS                       R12 R11 K61 ["MoveBatchAssetMax"]
      176 MOVE                             R12 R8
      177 CALL                             R12 0 1
      178 SETTABLEKS                       R12 R11 K62 ["MoveBatchFolderMax"]
      180 MOVE                             R12 R9
      181 CALL                             R12 0 1
      182 SETTABLEKS                       R12 R11 K63 ["GetAssetParentsBatchMax"]
      184 MOVE                             R12 R4
      185 CALL                             R12 0 1
      186 SETTABLEKS                       R12 R11 K64 ["RecentMax"]
      188 MOVE                             R12 R3
      189 CALL                             R12 0 1
      190 SETTABLEKS                       R12 R11 K65 ["ItemFetchMax"]
      192 LOADN                            R12 5
      193 SETTABLEKS                       R12 R11 K66 ["FolderReadinessRetryCount"]
      195 NEWTABLE                         R12 16 0
      197 LOADB                            R13 1
      198 SETTABLEKS                       R13 R12 K67 ["\\"]
      200 LOADB                            R13 1
      201 SETTABLEKS                       R13 R12 K68 ["/"]
      203 LOADB                            R13 1
      204 SETTABLEKS                       R13 R12 K69 [":"]
      206 LOADB                            R13 1
      207 SETTABLEKS                       R13 R12 K70 ["*"]
      209 LOADB                            R13 1
      210 SETTABLEKS                       R13 R12 K71 ["?"]
      212 LOADB                            R13 1
      213 SETTABLEKS                       R13 R12 K72 ["\""]
      215 LOADB                            R13 1
      216 SETTABLEKS                       R13 R12 K73 ["<"]
      218 LOADB                            R13 1
      219 SETTABLEKS                       R13 R12 K74 [">"]
      221 LOADB                            R13 1
      222 SETTABLEKS                       R13 R12 K75 ["|"]
      224 SETTABLEKS                       R12 R11 K76 ["FolderForbiddenChars"]
      226 MOVE                             R12 R10
      227 CALL                             R12 0 1
      228 SETTABLEKS                       R12 R11 K77 ["OpenInBrowserWarningThreshold"]
      230 LOADN                            R12 3
      231 SETTABLEKS                       R12 R11 K78 ["SearchFoldersResultCountDefault"]
      233 LOADK                            R12 K79 [1.5]
      234 SETTABLEKS                       R12 R11 K80 ["RecentlyCreatedFolderHighlightTime"]
      236 DUPTABLE                         R12 K84 [{"DeleteFolder", "GetItems", "CreateFolder"}]
      237 NEWTABLE                         R13 2 0
      239 LOADK                            R14 K85 ["DeleteFolderFailedNotEmpty"]
      240 SETTABLEN                        R14 R13 1
      241 LOADK                            R14 K86 ["FolderNotFound"]
      242 SETTABLEN                        R14 R13 5
      243 SETTABLEKS                       R13 R12 K81 ["DeleteFolder"]
      245 NEWTABLE                         R13 1 0
      247 LOADK                            R14 K86 ["FolderNotFound"]
      248 SETTABLEN                        R14 R13 5
      249 SETTABLEKS                       R13 R12 K82 ["GetItems"]
      251 NEWTABLE                         R13 0 1
      253 LOADK                            R14 K87 ["CreateFolderDepthLimitExceeded"]
      254 SETTABLEN                        R14 R13 1
      255 SETTABLEKS                       R13 R12 K83 ["CreateFolder"]
      257 SETTABLEKS                       R12 R11 K88 ["ErrorTypeLookup"]
      259 RETURN                           R11 1
