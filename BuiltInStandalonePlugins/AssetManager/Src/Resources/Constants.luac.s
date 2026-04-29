MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["createScopeUid"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Flags"]
       29 GETTABLEKS                       R4 R5 K11 ["getFIntAmrAssetFetchCount"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Flags"]
       38 GETTABLEKS                       R5 R6 K12 ["getFIntAmrRecentUploadsMax"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K10 ["Flags"]
       47 GETTABLEKS                       R6 R7 K13 ["getFIntAmrFolderDepthMax"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Src"]
       54 GETTABLEKS                       R8 R9 K10 ["Flags"]
       56 GETTABLEKS                       R7 R8 K14 ["getFIntAmrFolderBreadthMax"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K6 ["Src"]
       63 GETTABLEKS                       R9 R10 K10 ["Flags"]
       65 GETTABLEKS                       R8 R9 K15 ["getFIntAmrMoveAssetMax"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["Src"]
       72 GETTABLEKS                       R10 R11 K10 ["Flags"]
       74 GETTABLEKS                       R9 R10 K16 ["getFIntAmrMoveFolderMax"]
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
      130 LOADK                            R10 K37 ["--"]
      131 SETTABLEKS                       R10 R9 K38 ["PlaceholderText"]
      133 DUPTABLE                         R10 K43 [{"Name", "Type", "Id", "Uid"}]
      134 LOADK                            R11 K44 [""]
      135 SETTABLEKS                       R11 R10 K39 ["Name"]
      137 GETTABLEKS                       R12 R1 K45 ["ScopeType"]
      139 GETTABLEKS                       R11 R12 K46 ["RecentUploads"]
      141 SETTABLEKS                       R11 R10 K40 ["Type"]
      143 LOADN                            R11 0
      144 SETTABLEKS                       R11 R10 K41 ["Id"]
      146 MOVE                             R11 R2
      147 GETTABLEKS                       R13 R1 K45 ["ScopeType"]
      149 GETTABLEKS                       R12 R13 K46 ["RecentUploads"]
      151 LOADN                            R13 0
      152 CALL                             R11 2 1
      153 SETTABLEKS                       R11 R10 K42 ["Uid"]
      155 SETTABLEKS                       R10 R9 K46 ["RecentUploads"]
      157 LOADN                            R10 0
      158 SETTABLEKS                       R10 R9 K47 ["NewFolderId"]
      160 MOVE                             R10 R2
      161 GETTABLEKS                       R12 R1 K45 ["ScopeType"]
      163 GETTABLEKS                       R11 R12 K48 ["Folder"]
      165 GETTABLEKS                       R12 R9 K47 ["NewFolderId"]
      167 CALL                             R10 2 1
      168 SETTABLEKS                       R10 R9 K49 ["NewFolderUid"]
      170 MOVE                             R10 R5
      171 CALL                             R10 0 1
      172 SETTABLEKS                       R10 R9 K50 ["FolderDepthMax"]
      174 MOVE                             R10 R6
      175 CALL                             R10 0 1
      176 SETTABLEKS                       R10 R9 K51 ["FolderBreadthMax"]
      178 MOVE                             R10 R7
      179 CALL                             R10 0 1
      180 SETTABLEKS                       R10 R9 K52 ["MoveBatchAssetMax"]
      182 MOVE                             R10 R8
      183 CALL                             R10 0 1
      184 SETTABLEKS                       R10 R9 K53 ["MoveBatchFolderMax"]
      186 MOVE                             R10 R4
      187 CALL                             R10 0 1
      188 SETTABLEKS                       R10 R9 K54 ["RecentMax"]
      190 MOVE                             R10 R3
      191 CALL                             R10 0 1
      192 SETTABLEKS                       R10 R9 K55 ["ItemFetchMax"]
      194 NEWTABLE                         R10 16 0
      196 LOADB                            R11 1
      197 SETTABLEKS                       R11 R10 K56 ["\\"]
      199 LOADB                            R11 1
      200 SETTABLEKS                       R11 R10 K57 ["/"]
      202 LOADB                            R11 1
      203 SETTABLEKS                       R11 R10 K58 [":"]
      205 LOADB                            R11 1
      206 SETTABLEKS                       R11 R10 K59 ["*"]
      208 LOADB                            R11 1
      209 SETTABLEKS                       R11 R10 K60 ["?"]
      211 LOADB                            R11 1
      212 SETTABLEKS                       R11 R10 K61 ["\""]
      214 LOADB                            R11 1
      215 SETTABLEKS                       R11 R10 K62 ["<"]
      217 LOADB                            R11 1
      218 SETTABLEKS                       R11 R10 K63 [">"]
      220 LOADB                            R11 1
      221 SETTABLEKS                       R11 R10 K64 ["|"]
      223 SETTABLEKS                       R10 R9 K65 ["FolderForbiddenChars"]
      225 LOADN                            R10 3
      226 SETTABLEKS                       R10 R9 K66 ["SearchFoldersResultCountDefault"]
      228 DUPTABLE                         R10 K70 [{"DeleteFolder", "GetItems", "CreateFolder"}]
      229 NEWTABLE                         R11 2 0
      231 LOADK                            R12 K71 ["DeleteFolderFailedNotEmpty"]
      232 SETTABLEN                        R12 R11 1
      233 LOADK                            R12 K72 ["FolderNotFound"]
      234 SETTABLEN                        R12 R11 5
      235 SETTABLEKS                       R11 R10 K67 ["DeleteFolder"]
      237 NEWTABLE                         R11 1 0
      239 LOADK                            R12 K72 ["FolderNotFound"]
      240 SETTABLEN                        R12 R11 5
      241 SETTABLEKS                       R11 R10 K68 ["GetItems"]
      243 NEWTABLE                         R11 0 1
      245 LOADK                            R12 K73 ["CreateFolderDepthLimitExceeded"]
      246 SETTABLEN                        R12 R11 1
      247 SETTABLEKS                       R11 R10 K69 ["CreateFolder"]
      249 SETTABLEKS                       R10 R9 K74 ["ErrorTypeLookup"]
      251 RETURN                           R9 1
