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
       91 DUPTABLE                         R11 K28 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "AssetManager", ["Category"] = "Widgets", ["ItemId"] = "AssetManagerGui"}]
       92 SETTABLEKS                       R11 R10 K29 ["GuiUri"]
       94 DUPTABLE                         R11 K33 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       95 SETTABLEKS                       R11 R10 K34 ["PlaceVersionHistoryToggle"]
       97 DUPTABLE                         R11 K37 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Settings", ["ItemId"] = "PlaceId"}]
       98 SETTABLEKS                       R11 R10 K38 ["PlaceVersionHistoryPlaceIdUri"]
      100 NEWTABLE                         R11 0 4
      102 GETTABLEKS                       R12 R1 K39 ["ScopeType"]
      104 GETTABLEKS                       R12 R12 K40 ["User"]
      106 GETTABLEKS                       R13 R1 K39 ["ScopeType"]
      108 GETTABLEKS                       R13 R13 K41 ["Group"]
      110 GETTABLEKS                       R14 R1 K39 ["ScopeType"]
      112 GETTABLEKS                       R14 R14 K42 ["ProjectShared"]
      114 GETTABLEKS                       R15 R1 K39 ["ScopeType"]
      116 GETTABLEKS                       R15 R15 K43 ["Universe"]
      118 SETLIST                          R11 R12 4 [1]
      120 SETTABLEKS                       R11 R10 K44 ["RootAccountScopeTypes"]
      122 LOADK                            R11 K45 ["--"]
      123 SETTABLEKS                       R11 R10 K46 ["PlaceholderText"]
      125 DUPTABLE                         R11 K53 [{["Name"] = "", ["Type"], ["Id"] = 0, ["Uid"]}]
      126 GETTABLEKS                       R12 R1 K39 ["ScopeType"]
      128 GETTABLEKS                       R12 R12 K54 ["RecentUploads"]
      130 SETTABLEKS                       R12 R11 K49 ["Type"]
      132 MOVE                             R12 R2
      133 GETTABLEKS                       R13 R1 K39 ["ScopeType"]
      135 GETTABLEKS                       R13 R13 K54 ["RecentUploads"]
      137 LOADN                            R14 0
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K52 ["Uid"]
      141 SETTABLEKS                       R11 R10 K54 ["RecentUploads"]
      143 LOADN                            R11 0
      144 SETTABLEKS                       R11 R10 K55 ["NewFolderId"]
      146 MOVE                             R11 R2
      147 GETTABLEKS                       R12 R1 K39 ["ScopeType"]
      149 GETTABLEKS                       R12 R12 K56 ["Folder"]
      151 GETTABLEKS                       R13 R10 K55 ["NewFolderId"]
      153 CALL                             R11 2 1
      154 SETTABLEKS                       R11 R10 K57 ["NewFolderUid"]
      156 MOVE                             R11 R5
      157 CALL                             R11 0 1
      158 SETTABLEKS                       R11 R10 K58 ["FolderDepthMax"]
      160 MOVE                             R11 R6
      161 CALL                             R11 0 1
      162 SETTABLEKS                       R11 R10 K59 ["FolderBreadthMax"]
      164 MOVE                             R11 R7
      165 CALL                             R11 0 1
      166 SETTABLEKS                       R11 R10 K60 ["MoveBatchAssetMax"]
      168 MOVE                             R11 R8
      169 CALL                             R11 0 1
      170 SETTABLEKS                       R11 R10 K61 ["MoveBatchFolderMax"]
      172 MOVE                             R11 R4
      173 CALL                             R11 0 1
      174 SETTABLEKS                       R11 R10 K62 ["RecentMax"]
      176 MOVE                             R11 R3
      177 CALL                             R11 0 1
      178 SETTABLEKS                       R11 R10 K63 ["ItemFetchMax"]
      180 LOADN                            R11 5
      181 SETTABLEKS                       R11 R10 K64 ["FolderReadinessRetryCount"]
      183 NEWTABLE                         R11 16 0
      185 LOADB                            R12 1
      186 SETTABLEKS                       R12 R11 K65 ["\\"]
      188 LOADB                            R12 1
      189 SETTABLEKS                       R12 R11 K66 ["/"]
      191 LOADB                            R12 1
      192 SETTABLEKS                       R12 R11 K67 [":"]
      194 LOADB                            R12 1
      195 SETTABLEKS                       R12 R11 K68 ["*"]
      197 LOADB                            R12 1
      198 SETTABLEKS                       R12 R11 K69 ["?"]
      200 LOADB                            R12 1
      201 SETTABLEKS                       R12 R11 K70 ["\""]
      203 LOADB                            R12 1
      204 SETTABLEKS                       R12 R11 K71 ["<"]
      206 LOADB                            R12 1
      207 SETTABLEKS                       R12 R11 K72 [">"]
      209 LOADB                            R12 1
      210 SETTABLEKS                       R12 R11 K73 ["|"]
      212 SETTABLEKS                       R11 R10 K74 ["FolderForbiddenChars"]
      214 MOVE                             R11 R9
      215 CALL                             R11 0 1
      216 SETTABLEKS                       R11 R10 K75 ["OpenInBrowserWarningThreshold"]
      218 LOADN                            R11 3
      219 SETTABLEKS                       R11 R10 K76 ["SearchFoldersResultCountDefault"]
      221 LOADK                            R11 K77 [1.5]
      222 SETTABLEKS                       R11 R10 K78 ["RecentlyCreatedFolderHighlightTime"]
      224 DUPTABLE                         R11 K82 [{"DeleteFolder", "GetItems", "CreateFolder"}]
      225 NEWTABLE                         R12 2 0
      227 LOADK                            R13 K83 ["DeleteFolderFailedNotEmpty"]
      228 SETTABLEN                        R13 R12 1
      229 LOADK                            R13 K84 ["FolderNotFound"]
      230 SETTABLEN                        R13 R12 5
      231 SETTABLEKS                       R12 R11 K79 ["DeleteFolder"]
      233 NEWTABLE                         R12 1 0
      235 LOADK                            R13 K84 ["FolderNotFound"]
      236 SETTABLEN                        R13 R12 5
      237 SETTABLEKS                       R12 R11 K80 ["GetItems"]
      239 NEWTABLE                         R12 0 1
      241 LOADK                            R13 K85 ["CreateFolderDepthLimitExceeded"]
      242 SETTABLEN                        R13 R12 1
      243 SETTABLEKS                       R12 R11 K81 ["CreateFolder"]
      245 SETTABLEKS                       R11 R10 K86 ["ErrorTypeLookup"]
      247 RETURN                           R10 1
