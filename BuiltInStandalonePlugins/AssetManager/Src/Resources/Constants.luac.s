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
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K6 ["Src"]
       99 GETTABLEKS                       R12 R12 K10 ["Flags"]
      101 GETTABLEKS                       R12 R12 K19 ["getFIntAmrInitialScopeFetchLimit"]
      103 CALL                             R11 1 1
      104 NEWTABLE                         R12 32 0
      106 LOADK                            R13 K20 ["OpenAssetConfiguration"]
      107 SETTABLEKS                       R13 R12 K21 ["OpenAssetConfigurationKey"]
      109 DUPTABLE                         R13 K30 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "AssetManager", ["Category"] = "Widgets", ["ItemId"] = "AssetManagerGui"}]
      110 SETTABLEKS                       R13 R12 K31 ["GuiUri"]
      112 DUPTABLE                         R13 K35 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      113 SETTABLEKS                       R13 R12 K36 ["PlaceVersionHistoryToggle"]
      115 DUPTABLE                         R13 K39 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Settings", ["ItemId"] = "PlaceId"}]
      116 SETTABLEKS                       R13 R12 K40 ["PlaceVersionHistoryPlaceIdUri"]
      118 NEWTABLE                         R13 0 3
      120 GETTABLEKS                       R14 R1 K41 ["ScopeType"]
      122 GETTABLEKS                       R14 R14 K42 ["User"]
      124 GETTABLEKS                       R15 R1 K41 ["ScopeType"]
      126 GETTABLEKS                       R15 R15 K43 ["Group"]
      128 GETTABLEKS                       R16 R1 K41 ["ScopeType"]
      130 GETTABLEKS                       R16 R16 K44 ["Universe"]
      132 SETLIST                          R13 R14 3 [1]
      134 SETTABLEKS                       R13 R12 K45 ["RootAccountScopeTypes"]
      136 LOADK                            R13 K46 ["--"]
      137 SETTABLEKS                       R13 R12 K47 ["PlaceholderText"]
      139 DUPTABLE                         R13 K54 [{["Name"] = "", ["Type"], ["Id"] = 0, ["Uid"]}]
      140 GETTABLEKS                       R14 R1 K41 ["ScopeType"]
      142 GETTABLEKS                       R14 R14 K55 ["RecentUploads"]
      144 SETTABLEKS                       R14 R13 K50 ["Type"]
      146 MOVE                             R14 R2
      147 GETTABLEKS                       R15 R1 K41 ["ScopeType"]
      149 GETTABLEKS                       R15 R15 K55 ["RecentUploads"]
      151 LOADN                            R16 0
      152 CALL                             R14 2 1
      153 SETTABLEKS                       R14 R13 K53 ["Uid"]
      155 SETTABLEKS                       R13 R12 K55 ["RecentUploads"]
      157 LOADN                            R13 0
      158 SETTABLEKS                       R13 R12 K56 ["NewFolderId"]
      160 MOVE                             R13 R2
      161 GETTABLEKS                       R14 R1 K41 ["ScopeType"]
      163 GETTABLEKS                       R14 R14 K57 ["Folder"]
      165 GETTABLEKS                       R15 R12 K56 ["NewFolderId"]
      167 CALL                             R13 2 1
      168 SETTABLEKS                       R13 R12 K58 ["NewFolderUid"]
      170 MOVE                             R13 R5
      171 CALL                             R13 0 1
      172 SETTABLEKS                       R13 R12 K59 ["FolderDepthMax"]
      174 MOVE                             R13 R6
      175 CALL                             R13 0 1
      176 SETTABLEKS                       R13 R12 K60 ["FolderBreadthMax"]
      178 LOADN                            R13 50
      179 SETTABLEKS                       R13 R12 K61 ["ShareBatchAssetMax"]
      181 MOVE                             R13 R7
      182 CALL                             R13 0 1
      183 SETTABLEKS                       R13 R12 K62 ["MoveBatchAssetMax"]
      185 MOVE                             R13 R8
      186 CALL                             R13 0 1
      187 SETTABLEKS                       R13 R12 K63 ["MoveBatchFolderMax"]
      189 MOVE                             R13 R9
      190 CALL                             R13 0 1
      191 SETTABLEKS                       R13 R12 K64 ["GetAssetParentsBatchMax"]
      193 MOVE                             R13 R4
      194 CALL                             R13 0 1
      195 SETTABLEKS                       R13 R12 K65 ["RecentMax"]
      197 MOVE                             R13 R3
      198 CALL                             R13 0 1
      199 SETTABLEKS                       R13 R12 K66 ["ItemFetchMax"]
      201 MOVE                             R13 R11
      202 CALL                             R13 0 1
      203 SETTABLEKS                       R13 R12 K67 ["InitialScopeFetchLimit"]
      205 LOADN                            R13 5
      206 SETTABLEKS                       R13 R12 K68 ["FolderReadinessRetryCount"]
      208 NEWTABLE                         R13 16 0
      210 LOADB                            R14 1
      211 SETTABLEKS                       R14 R13 K69 ["\\"]
      213 LOADB                            R14 1
      214 SETTABLEKS                       R14 R13 K70 ["/"]
      216 LOADB                            R14 1
      217 SETTABLEKS                       R14 R13 K71 [":"]
      219 LOADB                            R14 1
      220 SETTABLEKS                       R14 R13 K72 ["*"]
      222 LOADB                            R14 1
      223 SETTABLEKS                       R14 R13 K73 ["?"]
      225 LOADB                            R14 1
      226 SETTABLEKS                       R14 R13 K74 ["\""]
      228 LOADB                            R14 1
      229 SETTABLEKS                       R14 R13 K75 ["<"]
      231 LOADB                            R14 1
      232 SETTABLEKS                       R14 R13 K76 [">"]
      234 LOADB                            R14 1
      235 SETTABLEKS                       R14 R13 K77 ["|"]
      237 SETTABLEKS                       R13 R12 K78 ["FolderForbiddenChars"]
      239 MOVE                             R13 R10
      240 CALL                             R13 0 1
      241 SETTABLEKS                       R13 R12 K79 ["OpenInBrowserWarningThreshold"]
      243 LOADN                            R13 3
      244 SETTABLEKS                       R13 R12 K80 ["SearchFoldersResultCountDefault"]
      246 LOADK                            R13 K81 [1.5]
      247 SETTABLEKS                       R13 R12 K82 ["RecentlyCreatedFolderHighlightTime"]
      249 DUPTABLE                         R13 K86 [{"DeleteFolder", "GetItems", "CreateFolder"}]
      250 NEWTABLE                         R14 2 0
      252 LOADK                            R15 K87 ["DeleteFolderFailedNotEmpty"]
      253 SETTABLEN                        R15 R14 1
      254 LOADK                            R15 K88 ["FolderNotFound"]
      255 SETTABLEN                        R15 R14 5
      256 SETTABLEKS                       R14 R13 K83 ["DeleteFolder"]
      258 NEWTABLE                         R14 1 0
      260 LOADK                            R15 K88 ["FolderNotFound"]
      261 SETTABLEN                        R15 R14 5
      262 SETTABLEKS                       R14 R13 K84 ["GetItems"]
      264 NEWTABLE                         R14 0 1
      266 LOADK                            R15 K89 ["CreateFolderDepthLimitExceeded"]
      267 SETTABLEN                        R15 R14 1
      268 SETTABLEKS                       R14 R13 K85 ["CreateFolder"]
      270 SETTABLEKS                       R13 R12 K90 ["ErrorTypeLookup"]
      272 RETURN                           R12 1
