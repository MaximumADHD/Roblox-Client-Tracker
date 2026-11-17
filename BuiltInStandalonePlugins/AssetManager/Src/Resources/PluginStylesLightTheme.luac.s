MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["Images"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["AvailableImages"]
       29 DUPTABLE                         R5 K36 [{"ArrowDownIcon", "ArrowRightIcon", "ArrowUpIcon", "CheckmarkIcon", "ClearIcon", "FilterIcon", "FolderIcon", "GameFolderIcon", "GroupDefaultIcon", "GroupFolderIcon", "GroupLargeDefaultIcon", "ImportIcon", "NotificationIcon", "PlaceholderAssetIcon", "PlaceholderIcon", "PlacesFolderIcon", "UniverseDefaultIcon", "UniverseLargeDefaultIcon", "UserDefaultIcon", "UserFolderIcon", "UserLargeDefaultIcon", "AmContentEmphasis"}]
       30 GETTABLEKS                       R6 R3 K37 ["getLight"]
       32 GETTABLEKS                       R7 R4 K38 ["ArrowDown"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K14 ["ArrowDownIcon"]
       37 GETTABLEKS                       R6 R3 K37 ["getLight"]
       39 GETTABLEKS                       R7 R4 K39 ["ArrowRight"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K15 ["ArrowRightIcon"]
       44 GETTABLEKS                       R6 R3 K37 ["getLight"]
       46 GETTABLEKS                       R7 R4 K40 ["ArrowUp"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K16 ["ArrowUpIcon"]
       51 GETTABLEKS                       R6 R3 K37 ["getLight"]
       53 GETTABLEKS                       R7 R4 K41 ["Checkmark"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K17 ["CheckmarkIcon"]
       58 GETTABLEKS                       R6 R3 K37 ["getLight"]
       60 GETTABLEKS                       R7 R4 K42 ["Clear"]
       62 CALL                             R6 1 1
       63 SETTABLEKS                       R6 R5 K18 ["ClearIcon"]
       65 GETTABLEKS                       R6 R3 K37 ["getLight"]
       67 GETTABLEKS                       R7 R4 K43 ["Filter"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K19 ["FilterIcon"]
       72 GETTABLEKS                       R6 R3 K37 ["getLight"]
       74 GETTABLEKS                       R7 R4 K44 ["Folder"]
       76 CALL                             R6 1 1
       77 SETTABLEKS                       R6 R5 K20 ["FolderIcon"]
       79 GETTABLEKS                       R6 R3 K37 ["getLight"]
       81 GETTABLEKS                       R7 R4 K45 ["GameFolder"]
       83 CALL                             R6 1 1
       84 SETTABLEKS                       R6 R5 K21 ["GameFolderIcon"]
       86 GETTABLEKS                       R6 R3 K37 ["getLight"]
       88 GETTABLEKS                       R7 R4 K46 ["Group"]
       90 CALL                             R6 1 1
       91 SETTABLEKS                       R6 R5 K22 ["GroupDefaultIcon"]
       93 GETTABLEKS                       R6 R3 K37 ["getLight"]
       95 GETTABLEKS                       R7 R4 K47 ["GroupFolder"]
       97 CALL                             R6 1 1
       98 SETTABLEKS                       R6 R5 K23 ["GroupFolderIcon"]
      100 GETTABLEKS                       R6 R3 K37 ["getLight"]
      102 GETTABLEKS                       R7 R4 K48 ["GroupLarge"]
      104 CALL                             R6 1 1
      105 SETTABLEKS                       R6 R5 K24 ["GroupLargeDefaultIcon"]
      107 GETTABLEKS                       R6 R3 K37 ["getLight"]
      109 GETTABLEKS                       R7 R4 K49 ["Import"]
      111 CALL                             R6 1 1
      112 SETTABLEKS                       R6 R5 K25 ["ImportIcon"]
      114 GETTABLEKS                       R6 R3 K37 ["getLight"]
      116 GETTABLEKS                       R7 R4 K50 ["Notification"]
      118 CALL                             R6 1 1
      119 SETTABLEKS                       R6 R5 K26 ["NotificationIcon"]
      121 GETTABLEKS                       R6 R3 K37 ["getLight"]
      123 GETTABLEKS                       R7 R4 K51 ["PlaceholderAsset"]
      125 CALL                             R6 1 1
      126 SETTABLEKS                       R6 R5 K27 ["PlaceholderAssetIcon"]
      128 GETTABLEKS                       R6 R3 K37 ["getLight"]
      130 GETTABLEKS                       R7 R4 K52 ["Placeholder"]
      132 CALL                             R6 1 1
      133 SETTABLEKS                       R6 R5 K28 ["PlaceholderIcon"]
      135 GETTABLEKS                       R6 R3 K37 ["getLight"]
      137 GETTABLEKS                       R7 R4 K53 ["PlacesFolder"]
      139 CALL                             R6 1 1
      140 SETTABLEKS                       R6 R5 K29 ["PlacesFolderIcon"]
      142 GETTABLEKS                       R6 R3 K37 ["getLight"]
      144 GETTABLEKS                       R7 R4 K54 ["Universe"]
      146 CALL                             R6 1 1
      147 SETTABLEKS                       R6 R5 K30 ["UniverseDefaultIcon"]
      149 GETTABLEKS                       R6 R3 K37 ["getLight"]
      151 GETTABLEKS                       R7 R4 K55 ["UniverseLarge"]
      153 CALL                             R6 1 1
      154 SETTABLEKS                       R6 R5 K31 ["UniverseLargeDefaultIcon"]
      156 GETTABLEKS                       R6 R3 K37 ["getLight"]
      158 GETTABLEKS                       R7 R4 K56 ["User"]
      160 CALL                             R6 1 1
      161 SETTABLEKS                       R6 R5 K32 ["UserDefaultIcon"]
      163 GETTABLEKS                       R6 R3 K37 ["getLight"]
      165 GETTABLEKS                       R7 R4 K57 ["UserFolder"]
      167 CALL                             R6 1 1
      168 SETTABLEKS                       R6 R5 K33 ["UserFolderIcon"]
      170 GETTABLEKS                       R6 R3 K37 ["getLight"]
      172 GETTABLEKS                       R7 R4 K58 ["UserLarge"]
      174 CALL                             R6 1 1
      175 SETTABLEKS                       R6 R5 K34 ["UserLargeDefaultIcon"]
      177 GETIMPORT                        R6 K61 [Color3.fromHex]
      179 LOADK                            R7 K62 ["#202227"]
      180 CALL                             R6 1 1
      181 SETTABLEKS                       R6 R5 K35 ["AmContentEmphasis"]
      183 MOVE                             R6 R2
      184 LOADK                            R7 K63 ["AssetManagerLightTheme"]
      185 NEWTABLE                         R8 0 0
      187 MOVE                             R9 R5
      188 CALL                             R6 3 -1
      189 RETURN                           R6 -1
