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
       41 NEWTABLE                         R5 16 0
       43 LOADK                            R6 K13 ["OpenAssetConfiguration"]
       44 SETTABLEKS                       R6 R5 K14 ["OpenAssetConfigurationKey"]
       46 DUPTABLE                         R6 K20 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       47 LOADK                            R7 K21 ["Standalone"]
       48 SETTABLEKS                       R7 R6 K15 ["DataModel"]
       50 LOADK                            R7 K21 ["Standalone"]
       51 SETTABLEKS                       R7 R6 K16 ["PluginType"]
       53 LOADK                            R7 K2 ["AssetManager"]
       54 SETTABLEKS                       R7 R6 K17 ["PluginId"]
       56 LOADK                            R7 K22 ["Widgets"]
       57 SETTABLEKS                       R7 R6 K18 ["Category"]
       59 LOADK                            R7 K23 ["AssetManagerGui"]
       60 SETTABLEKS                       R7 R6 K19 ["ItemId"]
       62 SETTABLEKS                       R6 R5 K24 ["GuiUri"]
       64 DUPTABLE                         R6 K25 [{"DataModel", "PluginId", "Category", "ItemId"}]
       65 LOADK                            R7 K21 ["Standalone"]
       66 SETTABLEKS                       R7 R6 K15 ["DataModel"]
       68 LOADK                            R7 K26 ["PlaceVersionHistory"]
       69 SETTABLEKS                       R7 R6 K17 ["PluginId"]
       71 LOADK                            R7 K27 ["Actions"]
       72 SETTABLEKS                       R7 R6 K18 ["Category"]
       74 LOADK                            R7 K28 ["Toggle"]
       75 SETTABLEKS                       R7 R6 K19 ["ItemId"]
       77 SETTABLEKS                       R6 R5 K29 ["PlaceVersionHistoryToggle"]
       79 DUPTABLE                         R6 K25 [{"DataModel", "PluginId", "Category", "ItemId"}]
       80 LOADK                            R7 K21 ["Standalone"]
       81 SETTABLEKS                       R7 R6 K15 ["DataModel"]
       83 LOADK                            R7 K26 ["PlaceVersionHistory"]
       84 SETTABLEKS                       R7 R6 K17 ["PluginId"]
       86 LOADK                            R7 K30 ["Settings"]
       87 SETTABLEKS                       R7 R6 K18 ["Category"]
       89 LOADK                            R7 K31 ["PlaceId"]
       90 SETTABLEKS                       R7 R6 K19 ["ItemId"]
       92 SETTABLEKS                       R6 R5 K32 ["PlaceVersionHistoryPlaceIdUri"]
       94 DUPTABLE                         R6 K37 [{"Name", "Type", "Id", "Uid"}]
       95 LOADK                            R7 K38 [""]
       96 SETTABLEKS                       R7 R6 K33 ["Name"]
       98 GETTABLEKS                       R8 R1 K39 ["ScopeType"]
      100 GETTABLEKS                       R7 R8 K40 ["RecentUploads"]
      102 SETTABLEKS                       R7 R6 K34 ["Type"]
      104 LOADN                            R7 0
      105 SETTABLEKS                       R7 R6 K35 ["Id"]
      107 MOVE                             R7 R2
      108 GETTABLEKS                       R9 R1 K39 ["ScopeType"]
      110 GETTABLEKS                       R8 R9 K40 ["RecentUploads"]
      112 LOADN                            R9 0
      113 CALL                             R7 2 1
      114 SETTABLEKS                       R7 R6 K36 ["Uid"]
      116 SETTABLEKS                       R6 R5 K40 ["RecentUploads"]
      118 MOVE                             R6 R4
      119 CALL                             R6 0 1
      120 SETTABLEKS                       R6 R5 K41 ["RecentMax"]
      122 MOVE                             R6 R3
      123 CALL                             R6 0 1
      124 SETTABLEKS                       R6 R5 K42 ["ItemFetchMax"]
      126 NEWTABLE                         R6 16 0
      128 LOADB                            R7 1
      129 SETTABLEKS                       R7 R6 K43 ["\\"]
      131 LOADB                            R7 1
      132 SETTABLEKS                       R7 R6 K44 ["/"]
      134 LOADB                            R7 1
      135 SETTABLEKS                       R7 R6 K45 [":"]
      137 LOADB                            R7 1
      138 SETTABLEKS                       R7 R6 K46 ["*"]
      140 LOADB                            R7 1
      141 SETTABLEKS                       R7 R6 K47 ["?"]
      143 LOADB                            R7 1
      144 SETTABLEKS                       R7 R6 K48 ["\""]
      146 LOADB                            R7 1
      147 SETTABLEKS                       R7 R6 K49 ["<"]
      149 LOADB                            R7 1
      150 SETTABLEKS                       R7 R6 K50 [">"]
      152 LOADB                            R7 1
      153 SETTABLEKS                       R7 R6 K51 ["|"]
      155 SETTABLEKS                       R6 R5 K52 ["FolderForbiddenChars"]
      157 LOADN                            R6 3
      158 SETTABLEKS                       R6 R5 K53 ["SearchFoldersResultCountDefault"]
      160 RETURN                           R5 1
