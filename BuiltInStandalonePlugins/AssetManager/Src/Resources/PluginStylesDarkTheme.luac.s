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
       29 DUPTABLE                         R5 K43 [{"ArrowDownIcon", "ArrowRightIcon", "ArrowUpIcon", "CheckmarkIcon", "ClearIcon", "FilterIcon", "FolderIcon", "GameFolderIcon", "GroupDefaultIcon", "GroupFolderIcon", "GroupLargeDefaultIcon", "ImportIcon", "NotificationIcon", "PackageLinkIcon", "PlaceholderAssetIcon", "PlaceholderIcon", "PlacesFolderIcon", "RefreshIcon", "SearchIcon", "SidebarCollapseIcon", "SidebarExpandIcon", "SortIcon", "UniverseDefaultIcon", "UniverseLargeDefaultIcon", "UserDefaultIcon", "UserFolderIcon", "UserLargeDefaultIcon", "AmContentEmphasis", "TestCol"}]
       30 GETTABLEKS                       R6 R3 K44 ["getDark"]
       32 GETTABLEKS                       R7 R4 K45 ["ArrowDown"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K14 ["ArrowDownIcon"]
       37 GETTABLEKS                       R6 R3 K44 ["getDark"]
       39 GETTABLEKS                       R7 R4 K46 ["ArrowRight"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K15 ["ArrowRightIcon"]
       44 GETTABLEKS                       R6 R3 K44 ["getDark"]
       46 GETTABLEKS                       R7 R4 K47 ["ArrowUp"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K16 ["ArrowUpIcon"]
       51 GETTABLEKS                       R6 R3 K44 ["getDark"]
       53 GETTABLEKS                       R7 R4 K48 ["Checkmark"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K17 ["CheckmarkIcon"]
       58 GETTABLEKS                       R6 R3 K44 ["getDark"]
       60 GETTABLEKS                       R7 R4 K49 ["Clear"]
       62 CALL                             R6 1 1
       63 SETTABLEKS                       R6 R5 K18 ["ClearIcon"]
       65 GETTABLEKS                       R6 R3 K44 ["getDark"]
       67 GETTABLEKS                       R7 R4 K50 ["Filter"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K19 ["FilterIcon"]
       72 GETTABLEKS                       R6 R3 K44 ["getDark"]
       74 GETTABLEKS                       R7 R4 K51 ["Folder"]
       76 CALL                             R6 1 1
       77 SETTABLEKS                       R6 R5 K20 ["FolderIcon"]
       79 GETTABLEKS                       R6 R3 K44 ["getDark"]
       81 GETTABLEKS                       R7 R4 K52 ["GameFolder"]
       83 CALL                             R6 1 1
       84 SETTABLEKS                       R6 R5 K21 ["GameFolderIcon"]
       86 GETTABLEKS                       R6 R3 K44 ["getDark"]
       88 GETTABLEKS                       R7 R4 K53 ["Group"]
       90 CALL                             R6 1 1
       91 SETTABLEKS                       R6 R5 K22 ["GroupDefaultIcon"]
       93 GETTABLEKS                       R6 R3 K44 ["getDark"]
       95 GETTABLEKS                       R7 R4 K54 ["GroupFolder"]
       97 CALL                             R6 1 1
       98 SETTABLEKS                       R6 R5 K23 ["GroupFolderIcon"]
      100 GETTABLEKS                       R6 R3 K44 ["getDark"]
      102 GETTABLEKS                       R7 R4 K55 ["GroupLarge"]
      104 CALL                             R6 1 1
      105 SETTABLEKS                       R6 R5 K24 ["GroupLargeDefaultIcon"]
      107 GETTABLEKS                       R6 R3 K44 ["getDark"]
      109 GETTABLEKS                       R7 R4 K56 ["Import"]
      111 CALL                             R6 1 1
      112 SETTABLEKS                       R6 R5 K25 ["ImportIcon"]
      114 GETTABLEKS                       R6 R3 K44 ["getDark"]
      116 GETTABLEKS                       R7 R4 K57 ["Notification"]
      118 CALL                             R6 1 1
      119 SETTABLEKS                       R6 R5 K26 ["NotificationIcon"]
      121 GETTABLEKS                       R6 R3 K44 ["getDark"]
      123 GETTABLEKS                       R7 R4 K58 ["PackageLink"]
      125 CALL                             R6 1 1
      126 SETTABLEKS                       R6 R5 K27 ["PackageLinkIcon"]
      128 GETTABLEKS                       R6 R3 K44 ["getDark"]
      130 GETTABLEKS                       R7 R4 K59 ["PlaceholderAsset"]
      132 CALL                             R6 1 1
      133 SETTABLEKS                       R6 R5 K28 ["PlaceholderAssetIcon"]
      135 GETTABLEKS                       R6 R3 K44 ["getDark"]
      137 GETTABLEKS                       R7 R4 K60 ["Placeholder"]
      139 CALL                             R6 1 1
      140 SETTABLEKS                       R6 R5 K29 ["PlaceholderIcon"]
      142 GETTABLEKS                       R6 R3 K44 ["getDark"]
      144 GETTABLEKS                       R7 R4 K61 ["PlacesFolder"]
      146 CALL                             R6 1 1
      147 SETTABLEKS                       R6 R5 K30 ["PlacesFolderIcon"]
      149 GETTABLEKS                       R6 R3 K44 ["getDark"]
      151 GETTABLEKS                       R7 R4 K62 ["Refresh"]
      153 CALL                             R6 1 1
      154 SETTABLEKS                       R6 R5 K31 ["RefreshIcon"]
      156 GETTABLEKS                       R6 R3 K44 ["getDark"]
      158 GETTABLEKS                       R7 R4 K63 ["Search"]
      160 CALL                             R6 1 1
      161 SETTABLEKS                       R6 R5 K32 ["SearchIcon"]
      163 GETTABLEKS                       R6 R3 K44 ["getDark"]
      165 GETTABLEKS                       R7 R4 K64 ["SidebarCollapse"]
      167 CALL                             R6 1 1
      168 SETTABLEKS                       R6 R5 K33 ["SidebarCollapseIcon"]
      170 GETTABLEKS                       R6 R3 K44 ["getDark"]
      172 GETTABLEKS                       R7 R4 K65 ["SidebarExpand"]
      174 CALL                             R6 1 1
      175 SETTABLEKS                       R6 R5 K34 ["SidebarExpandIcon"]
      177 GETTABLEKS                       R6 R3 K44 ["getDark"]
      179 GETTABLEKS                       R7 R4 K66 ["Sort"]
      181 CALL                             R6 1 1
      182 SETTABLEKS                       R6 R5 K35 ["SortIcon"]
      184 GETTABLEKS                       R6 R3 K44 ["getDark"]
      186 GETTABLEKS                       R7 R4 K67 ["Universe"]
      188 CALL                             R6 1 1
      189 SETTABLEKS                       R6 R5 K36 ["UniverseDefaultIcon"]
      191 GETTABLEKS                       R6 R3 K44 ["getDark"]
      193 GETTABLEKS                       R7 R4 K68 ["UniverseLarge"]
      195 CALL                             R6 1 1
      196 SETTABLEKS                       R6 R5 K37 ["UniverseLargeDefaultIcon"]
      198 GETTABLEKS                       R6 R3 K44 ["getDark"]
      200 GETTABLEKS                       R7 R4 K69 ["User"]
      202 CALL                             R6 1 1
      203 SETTABLEKS                       R6 R5 K38 ["UserDefaultIcon"]
      205 GETTABLEKS                       R6 R3 K44 ["getDark"]
      207 GETTABLEKS                       R7 R4 K70 ["UserFolder"]
      209 CALL                             R6 1 1
      210 SETTABLEKS                       R6 R5 K39 ["UserFolderIcon"]
      212 GETTABLEKS                       R6 R3 K44 ["getDark"]
      214 GETTABLEKS                       R7 R4 K71 ["UserLarge"]
      216 CALL                             R6 1 1
      217 SETTABLEKS                       R6 R5 K40 ["UserLargeDefaultIcon"]
      219 GETIMPORT                        R6 K74 [Color3.fromHex]
      221 LOADK                            R7 K75 ["#EEEFF1"]
      222 CALL                             R6 1 1
      223 SETTABLEKS                       R6 R5 K41 ["AmContentEmphasis"]
      225 GETIMPORT                        R6 K77 [Color3.fromRGB]
      227 LOADN                            R7 255
      228 LOADN                            R8 0
      229 LOADN                            R9 0
      230 CALL                             R6 3 1
      231 SETTABLEKS                       R6 R5 K42 ["TestCol"]
      233 MOVE                             R6 R2
      234 LOADK                            R7 K78 ["AssetManagerDarkTheme"]
      235 NEWTABLE                         R8 0 0
      237 MOVE                             R9 R5
      238 CALL                             R6 3 -1
      239 RETURN                           R6 -1
