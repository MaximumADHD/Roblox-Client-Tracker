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
       29 DUPTABLE                         R5 K37 [{"ArrowDownIcon", "ArrowRightIcon", "ArrowUpIcon", "CheckmarkIcon", "ClearIcon", "FilterIcon", "FolderIcon", "GameFolderIcon", "GroupDefaultIcon", "GroupFolderIcon", "GroupLargeDefaultIcon", "ImportIcon", "NotificationIcon", "PlaceholderAssetIcon", "PlaceholderIcon", "PlacesFolderIcon", "UniverseDefaultIcon", "UniverseLargeDefaultIcon", "UserDefaultIcon", "UserFolderIcon", "UserLargeDefaultIcon", "AmContentEmphasis", "TestCol"}]
       30 GETTABLEKS                       R6 R3 K38 ["getDark"]
       32 GETTABLEKS                       R7 R4 K39 ["ArrowDown"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K14 ["ArrowDownIcon"]
       37 GETTABLEKS                       R6 R3 K38 ["getDark"]
       39 GETTABLEKS                       R7 R4 K40 ["ArrowRight"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K15 ["ArrowRightIcon"]
       44 GETTABLEKS                       R6 R3 K38 ["getDark"]
       46 GETTABLEKS                       R7 R4 K41 ["ArrowUp"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K16 ["ArrowUpIcon"]
       51 GETTABLEKS                       R6 R3 K38 ["getDark"]
       53 GETTABLEKS                       R7 R4 K42 ["Checkmark"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K17 ["CheckmarkIcon"]
       58 GETTABLEKS                       R6 R3 K38 ["getDark"]
       60 GETTABLEKS                       R7 R4 K43 ["Clear"]
       62 CALL                             R6 1 1
       63 SETTABLEKS                       R6 R5 K18 ["ClearIcon"]
       65 GETTABLEKS                       R6 R3 K38 ["getDark"]
       67 GETTABLEKS                       R7 R4 K44 ["Filter"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K19 ["FilterIcon"]
       72 GETTABLEKS                       R6 R3 K38 ["getDark"]
       74 GETTABLEKS                       R7 R4 K45 ["Folder"]
       76 CALL                             R6 1 1
       77 SETTABLEKS                       R6 R5 K20 ["FolderIcon"]
       79 GETTABLEKS                       R6 R3 K38 ["getDark"]
       81 GETTABLEKS                       R7 R4 K46 ["GameFolder"]
       83 CALL                             R6 1 1
       84 SETTABLEKS                       R6 R5 K21 ["GameFolderIcon"]
       86 GETTABLEKS                       R6 R3 K38 ["getDark"]
       88 GETTABLEKS                       R7 R4 K47 ["Group"]
       90 CALL                             R6 1 1
       91 SETTABLEKS                       R6 R5 K22 ["GroupDefaultIcon"]
       93 GETTABLEKS                       R6 R3 K38 ["getDark"]
       95 GETTABLEKS                       R7 R4 K48 ["GroupFolder"]
       97 CALL                             R6 1 1
       98 SETTABLEKS                       R6 R5 K23 ["GroupFolderIcon"]
      100 GETTABLEKS                       R6 R3 K38 ["getDark"]
      102 GETTABLEKS                       R7 R4 K49 ["GroupLarge"]
      104 CALL                             R6 1 1
      105 SETTABLEKS                       R6 R5 K24 ["GroupLargeDefaultIcon"]
      107 GETTABLEKS                       R6 R3 K38 ["getDark"]
      109 GETTABLEKS                       R7 R4 K50 ["Import"]
      111 CALL                             R6 1 1
      112 SETTABLEKS                       R6 R5 K25 ["ImportIcon"]
      114 GETTABLEKS                       R6 R3 K38 ["getDark"]
      116 GETTABLEKS                       R7 R4 K51 ["Notification"]
      118 CALL                             R6 1 1
      119 SETTABLEKS                       R6 R5 K26 ["NotificationIcon"]
      121 GETTABLEKS                       R6 R3 K38 ["getDark"]
      123 GETTABLEKS                       R7 R4 K52 ["PlaceholderAsset"]
      125 CALL                             R6 1 1
      126 SETTABLEKS                       R6 R5 K27 ["PlaceholderAssetIcon"]
      128 GETTABLEKS                       R6 R3 K38 ["getDark"]
      130 GETTABLEKS                       R7 R4 K53 ["Placeholder"]
      132 CALL                             R6 1 1
      133 SETTABLEKS                       R6 R5 K28 ["PlaceholderIcon"]
      135 GETTABLEKS                       R6 R3 K38 ["getDark"]
      137 GETTABLEKS                       R7 R4 K54 ["PlacesFolder"]
      139 CALL                             R6 1 1
      140 SETTABLEKS                       R6 R5 K29 ["PlacesFolderIcon"]
      142 GETTABLEKS                       R6 R3 K38 ["getDark"]
      144 GETTABLEKS                       R7 R4 K55 ["Universe"]
      146 CALL                             R6 1 1
      147 SETTABLEKS                       R6 R5 K30 ["UniverseDefaultIcon"]
      149 GETTABLEKS                       R6 R3 K38 ["getDark"]
      151 GETTABLEKS                       R7 R4 K56 ["UniverseLarge"]
      153 CALL                             R6 1 1
      154 SETTABLEKS                       R6 R5 K31 ["UniverseLargeDefaultIcon"]
      156 GETTABLEKS                       R6 R3 K38 ["getDark"]
      158 GETTABLEKS                       R7 R4 K57 ["User"]
      160 CALL                             R6 1 1
      161 SETTABLEKS                       R6 R5 K32 ["UserDefaultIcon"]
      163 GETTABLEKS                       R6 R3 K38 ["getDark"]
      165 GETTABLEKS                       R7 R4 K58 ["UserFolder"]
      167 CALL                             R6 1 1
      168 SETTABLEKS                       R6 R5 K33 ["UserFolderIcon"]
      170 GETTABLEKS                       R6 R3 K38 ["getDark"]
      172 GETTABLEKS                       R7 R4 K59 ["UserLarge"]
      174 CALL                             R6 1 1
      175 SETTABLEKS                       R6 R5 K34 ["UserLargeDefaultIcon"]
      177 GETIMPORT                        R6 K62 [Color3.fromHex]
      179 LOADK                            R7 K63 ["#EEEFF1"]
      180 CALL                             R6 1 1
      181 SETTABLEKS                       R6 R5 K35 ["AmContentEmphasis"]
      183 GETIMPORT                        R6 K65 [Color3.fromRGB]
      185 LOADN                            R7 255
      186 LOADN                            R8 0
      187 LOADN                            R9 0
      188 CALL                             R6 3 1
      189 SETTABLEKS                       R6 R5 K36 ["TestCol"]
      191 MOVE                             R6 R2
      192 LOADK                            R7 K66 ["AssetManagerDarkTheme"]
      193 NEWTABLE                         R8 0 0
      195 MOVE                             R9 R5
      196 CALL                             R6 3 -1
      197 RETURN                           R6 -1
