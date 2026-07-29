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
      109 NEWTABLE                         R12 0 4
      111 GETTABLEKS                       R13 R1 K40 ["ScopeType"]
      113 GETTABLEKS                       R13 R13 K41 ["User"]
      115 GETTABLEKS                       R14 R1 K40 ["ScopeType"]
      117 GETTABLEKS                       R14 R14 K42 ["Group"]
      119 GETTABLEKS                       R15 R1 K40 ["ScopeType"]
      121 GETTABLEKS                       R15 R15 K43 ["ProjectShared"]
      123 GETTABLEKS                       R16 R1 K40 ["ScopeType"]
      125 GETTABLEKS                       R16 R16 K44 ["Universe"]
      127 SETLIST                          R12 R13 4 [1]
      129 SETTABLEKS                       R12 R11 K45 ["RootAccountScopeTypes"]
      131 LOADK                            R12 K46 ["--"]
      132 SETTABLEKS                       R12 R11 K47 ["PlaceholderText"]
      134 DUPTABLE                         R12 K54 [{["Name"] = "", ["Type"], ["Id"] = 0, ["Uid"]}]
      135 GETTABLEKS                       R13 R1 K40 ["ScopeType"]
      137 GETTABLEKS                       R13 R13 K55 ["RecentUploads"]
      139 SETTABLEKS                       R13 R12 K50 ["Type"]
      141 MOVE                             R13 R2
      142 GETTABLEKS                       R14 R1 K40 ["ScopeType"]
      144 GETTABLEKS                       R14 R14 K55 ["RecentUploads"]
      146 LOADN                            R15 0
      147 CALL                             R13 2 1
      148 SETTABLEKS                       R13 R12 K53 ["Uid"]
      150 SETTABLEKS                       R12 R11 K55 ["RecentUploads"]
      152 LOADN                            R12 0
      153 SETTABLEKS                       R12 R11 K56 ["NewFolderId"]
      155 MOVE                             R12 R2
      156 GETTABLEKS                       R13 R1 K40 ["ScopeType"]
      158 GETTABLEKS                       R13 R13 K57 ["Folder"]
      160 GETTABLEKS                       R14 R11 K56 ["NewFolderId"]
      162 CALL                             R12 2 1
      163 SETTABLEKS                       R12 R11 K58 ["NewFolderUid"]
      165 MOVE                             R12 R5
      166 CALL                             R12 0 1
      167 SETTABLEKS                       R12 R11 K59 ["FolderDepthMax"]
      169 MOVE                             R12 R6
      170 CALL                             R12 0 1
      171 SETTABLEKS                       R12 R11 K60 ["FolderBreadthMax"]
      173 MOVE                             R12 R7
      174 CALL                             R12 0 1
      175 SETTABLEKS                       R12 R11 K61 ["MoveBatchAssetMax"]
      177 MOVE                             R12 R8
      178 CALL                             R12 0 1
      179 SETTABLEKS                       R12 R11 K62 ["MoveBatchFolderMax"]
      181 MOVE                             R12 R9
      182 CALL                             R12 0 1
      183 SETTABLEKS                       R12 R11 K63 ["GetAssetParentsBatchMax"]
      185 MOVE                             R12 R4
      186 CALL                             R12 0 1
      187 SETTABLEKS                       R12 R11 K64 ["RecentMax"]
      189 MOVE                             R12 R3
      190 CALL                             R12 0 1
      191 SETTABLEKS                       R12 R11 K65 ["ItemFetchMax"]
      193 LOADN                            R12 5
      194 SETTABLEKS                       R12 R11 K66 ["FolderReadinessRetryCount"]
      196 NEWTABLE                         R12 16 0
      198 LOADB                            R13 1
      199 SETTABLEKS                       R13 R12 K67 ["\\"]
      201 LOADB                            R13 1
      202 SETTABLEKS                       R13 R12 K68 ["/"]
      204 LOADB                            R13 1
      205 SETTABLEKS                       R13 R12 K69 [":"]
      207 LOADB                            R13 1
      208 SETTABLEKS                       R13 R12 K70 ["*"]
      210 LOADB                            R13 1
      211 SETTABLEKS                       R13 R12 K71 ["?"]
      213 LOADB                            R13 1
      214 SETTABLEKS                       R13 R12 K72 ["\""]
      216 LOADB                            R13 1
      217 SETTABLEKS                       R13 R12 K73 ["<"]
      219 LOADB                            R13 1
      220 SETTABLEKS                       R13 R12 K74 [">"]
      222 LOADB                            R13 1
      223 SETTABLEKS                       R13 R12 K75 ["|"]
      225 SETTABLEKS                       R12 R11 K76 ["FolderForbiddenChars"]
      227 MOVE                             R12 R10
      228 CALL                             R12 0 1
      229 SETTABLEKS                       R12 R11 K77 ["OpenInBrowserWarningThreshold"]
      231 LOADN                            R12 3
      232 SETTABLEKS                       R12 R11 K78 ["SearchFoldersResultCountDefault"]
      234 LOADK                            R12 K79 [1.5]
      235 SETTABLEKS                       R12 R11 K80 ["RecentlyCreatedFolderHighlightTime"]
      237 DUPTABLE                         R12 K84 [{"DeleteFolder", "GetItems", "CreateFolder"}]
      238 NEWTABLE                         R13 2 0
      240 LOADK                            R14 K85 ["DeleteFolderFailedNotEmpty"]
      241 SETTABLEN                        R14 R13 1
      242 LOADK                            R14 K86 ["FolderNotFound"]
      243 SETTABLEN                        R14 R13 5
      244 SETTABLEKS                       R13 R12 K81 ["DeleteFolder"]
      246 NEWTABLE                         R13 1 0
      248 LOADK                            R14 K86 ["FolderNotFound"]
      249 SETTABLEN                        R14 R13 5
      250 SETTABLEKS                       R13 R12 K82 ["GetItems"]
      252 NEWTABLE                         R13 0 1
      254 LOADK                            R14 K87 ["CreateFolderDepthLimitExceeded"]
      255 SETTABLEN                        R14 R13 1
      256 SETTABLEKS                       R13 R12 K83 ["CreateFolder"]
      258 SETTABLEKS                       R12 R11 K88 ["ErrorTypeLookup"]
      260 RETURN                           R11 1
