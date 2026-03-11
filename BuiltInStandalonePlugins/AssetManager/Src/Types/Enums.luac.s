PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R6
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_1:
        0 JUMPIFLT                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getEnumAsList"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [table.sort]
        7 MOVE                             R3 R1
        8 DUPCLOSURE                       R4 K4 [PROTO_1]
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["enumerate"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Flags"]
       20 GETTABLEKS                       R3 R4 K10 ["getFFlagAmrOrganizationFoundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Flags"]
       29 GETTABLEKS                       R4 R5 K11 ["getFFlagAmrRecents"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 16 0
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 SETTABLEKS                       R5 R4 K13 ["getEnumAsList"]
       37 DUPCLOSURE                       R5 K14 [PROTO_2]
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R5 R4 K15 ["getEnumAsSortedList"]
       41 DUPTABLE                         R5 K24 [{"User", "Group", "Universe", "ProjectShared", "ProjectPlaces", "Folder", "Header", "RecentUploads"}]
       42 LOADK                            R6 K16 ["User"]
       43 SETTABLEKS                       R6 R5 K16 ["User"]
       45 LOADK                            R6 K17 ["Group"]
       46 SETTABLEKS                       R6 R5 K17 ["Group"]
       48 LOADK                            R6 K18 ["Universe"]
       49 SETTABLEKS                       R6 R5 K18 ["Universe"]
       51 LOADK                            R6 K19 ["ProjectShared"]
       52 SETTABLEKS                       R6 R5 K19 ["ProjectShared"]
       54 LOADK                            R6 K20 ["ProjectPlaces"]
       55 SETTABLEKS                       R6 R5 K20 ["ProjectPlaces"]
       57 MOVE                             R7 R2
       58 CALL                             R7 0 1
       59 JUMPIFNOT                        R7 ; [+2]
       60 LOADK                            R6 K21 ["Folder"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K21 ["Folder"]
       65 MOVE                             R7 R2
       66 CALL                             R7 0 1
       67 JUMPIFNOT                        R7 ; [+2]
       68 LOADK                            R6 K22 ["Header"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R6
       71 SETTABLEKS                       R6 R5 K22 ["Header"]
       73 MOVE                             R7 R3
       74 CALL                             R7 0 1
       75 JUMPIFNOT                        R7 ; [+2]
       76 LOADK                            R6 K23 ["RecentUploads"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R6
       79 SETTABLEKS                       R6 R5 K23 ["RecentUploads"]
       81 SETTABLEKS                       R5 R4 K25 ["ScopeType"]
       83 DUPTABLE                         R6 K37 [{"Animation", "Audio", "Decal", "FontFamily", "Image", "Mesh", "MeshPart", "Model", "Place", "Plugin", "Video", "Folder"}]
       84 LOADK                            R7 K26 ["Animation"]
       85 SETTABLEKS                       R7 R6 K26 ["Animation"]
       87 LOADK                            R7 K27 ["Audio"]
       88 SETTABLEKS                       R7 R6 K27 ["Audio"]
       90 LOADK                            R7 K28 ["Decal"]
       91 SETTABLEKS                       R7 R6 K28 ["Decal"]
       93 LOADK                            R7 K29 ["FontFamily"]
       94 SETTABLEKS                       R7 R6 K29 ["FontFamily"]
       96 LOADK                            R7 K30 ["Image"]
       97 SETTABLEKS                       R7 R6 K30 ["Image"]
       99 LOADK                            R7 K31 ["Mesh"]
      100 SETTABLEKS                       R7 R6 K31 ["Mesh"]
      102 LOADK                            R7 K32 ["MeshPart"]
      103 SETTABLEKS                       R7 R6 K32 ["MeshPart"]
      105 LOADK                            R7 K33 ["Model"]
      106 SETTABLEKS                       R7 R6 K33 ["Model"]
      108 LOADK                            R7 K34 ["Place"]
      109 SETTABLEKS                       R7 R6 K34 ["Place"]
      111 LOADK                            R7 K35 ["Plugin"]
      112 SETTABLEKS                       R7 R6 K35 ["Plugin"]
      114 LOADK                            R7 K36 ["Video"]
      115 SETTABLEKS                       R7 R6 K36 ["Video"]
      117 MOVE                             R8 R2
      118 CALL                             R8 0 1
      119 JUMPIFNOT                        R8 ; [+2]
      120 LOADK                            R7 K21 ["Folder"]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R7
      123 SETTABLEKS                       R7 R6 K21 ["Folder"]
      125 SETTABLEKS                       R6 R4 K38 ["AssetType"]
      127 DUPTABLE                         R7 K42 [{"Reviewing", "Rejected", "Approved"}]
      128 LOADK                            R8 K43 ["MODERATION_STATE_REVIEWING"]
      129 SETTABLEKS                       R8 R7 K39 ["Reviewing"]
      131 LOADK                            R8 K44 ["MODERATION_STATE_REJECTED"]
      132 SETTABLEKS                       R8 R7 K40 ["Rejected"]
      134 LOADK                            R8 K45 ["MODERATION_STATE_APPROVED"]
      135 SETTABLEKS                       R8 R7 K41 ["Approved"]
      137 SETTABLEKS                       R7 R4 K46 ["ModerationStatus"]
      139 DUPTABLE                         R8 K58 [{"Path", "AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "IsPackage", "SearchRank"}]
      140 LOADK                            R9 K47 ["Path"]
      141 SETTABLEKS                       R9 R8 K47 ["Path"]
      143 LOADK                            R9 K48 ["AssetId"]
      144 SETTABLEKS                       R9 R8 K48 ["AssetId"]
      146 LOADK                            R9 K38 ["AssetType"]
      147 SETTABLEKS                       R9 R8 K38 ["AssetType"]
      149 LOADK                            R9 K49 ["DisplayName"]
      150 SETTABLEKS                       R9 R8 K49 ["DisplayName"]
      152 LOADK                            R9 K50 ["VersionNumber"]
      153 SETTABLEKS                       R9 R8 K50 ["VersionNumber"]
      155 LOADK                            R9 K51 ["Created"]
      156 SETTABLEKS                       R9 R8 K51 ["Created"]
      158 LOADK                            R9 K52 ["Modified"]
      159 SETTABLEKS                       R9 R8 K52 ["Modified"]
      161 LOADK                            R9 K46 ["ModerationStatus"]
      162 SETTABLEKS                       R9 R8 K46 ["ModerationStatus"]
      164 LOADK                            R9 K53 ["Creator"]
      165 SETTABLEKS                       R9 R8 K53 ["Creator"]
      167 LOADK                            R9 K54 ["Source"]
      168 SETTABLEKS                       R9 R8 K54 ["Source"]
      170 LOADK                            R9 K55 ["Archived"]
      171 SETTABLEKS                       R9 R8 K55 ["Archived"]
      173 LOADK                            R9 K56 ["IsPackage"]
      174 SETTABLEKS                       R9 R8 K56 ["IsPackage"]
      176 LOADK                            R9 K57 ["SearchRank"]
      177 SETTABLEKS                       R9 R8 K57 ["SearchRank"]
      179 SETTABLEKS                       R8 R4 K59 ["AssetInfoField"]
      181 DUPTABLE                         R9 K63 [{"Uploaded", "CreatorStore", "SharedWithMe"}]
      182 LOADK                            R10 K60 ["Uploaded"]
      183 SETTABLEKS                       R10 R9 K60 ["Uploaded"]
      185 LOADK                            R10 K61 ["CreatorStore"]
      186 SETTABLEKS                       R10 R9 K61 ["CreatorStore"]
      188 LOADK                            R10 K62 ["SharedWithMe"]
      189 SETTABLEKS                       R10 R9 K62 ["SharedWithMe"]
      191 SETTABLEKS                       R9 R4 K64 ["AssetSource"]
      193 MOVE                             R10 R1
      194 LOADK                            R11 K65 ["ViewType"]
      195 DUPTABLE                         R12 K69 [{"List", "Grid", "Unsupported"}]
      196 LOADN                            R13 1
      197 SETTABLEKS                       R13 R12 K66 ["List"]
      199 LOADN                            R13 2
      200 SETTABLEKS                       R13 R12 K67 ["Grid"]
      202 LOADN                            R13 3
      203 SETTABLEKS                       R13 R12 K68 ["Unsupported"]
      205 CALL                             R10 2 1
      206 SETTABLEKS                       R10 R4 K65 ["ViewType"]
      208 DUPTABLE                         R11 K73 [{"Asset", "Column", "Sidebar"}]
      209 LOADK                            R12 K70 ["Asset"]
      210 SETTABLEKS                       R12 R11 K70 ["Asset"]
      212 LOADK                            R12 K71 ["Column"]
      213 SETTABLEKS                       R12 R11 K71 ["Column"]
      215 LOADK                            R12 K72 ["Sidebar"]
      216 SETTABLEKS                       R12 R11 K72 ["Sidebar"]
      218 SETTABLEKS                       R11 R4 K74 ["MenuContext"]
      220 MOVE                             R12 R1
      221 LOADK                            R13 K75 ["ExplorerHeader"]
      222 DUPTABLE                         R14 K80 [{"User", "Groups", "Project", "Library", "Recent"}]
      223 LOADN                            R15 1
      224 SETTABLEKS                       R15 R14 K16 ["User"]
      226 LOADN                            R15 2
      227 SETTABLEKS                       R15 R14 K76 ["Groups"]
      229 LOADN                            R15 3
      230 SETTABLEKS                       R15 R14 K77 ["Project"]
      232 LOADN                            R15 4
      233 SETTABLEKS                       R15 R14 K78 ["Library"]
      235 LOADN                            R15 5
      236 SETTABLEKS                       R15 R14 K79 ["Recent"]
      238 CALL                             R12 2 1
      239 SETTABLEKS                       R12 R4 K75 ["ExplorerHeader"]
      241 DUPTABLE                         R13 K82 [{"Recent", "Project", "Inventories"}]
      242 LOADK                            R14 K79 ["Recent"]
      243 SETTABLEKS                       R14 R13 K79 ["Recent"]
      245 LOADK                            R14 K77 ["Project"]
      246 SETTABLEKS                       R14 R13 K77 ["Project"]
      248 LOADK                            R14 K81 ["Inventories"]
      249 SETTABLEKS                       R14 R13 K81 ["Inventories"]
      251 SETTABLEKS                       R13 R4 K83 ["SidebarHeader"]
      253 DUPTABLE                         R14 K87 [{"Browser", "Explorer", "Filters"}]
      254 LOADK                            R15 K84 ["Browser"]
      255 SETTABLEKS                       R15 R14 K84 ["Browser"]
      257 LOADK                            R15 K85 ["Explorer"]
      258 SETTABLEKS                       R15 R14 K85 ["Explorer"]
      260 LOADK                            R15 K86 ["Filters"]
      261 SETTABLEKS                       R15 R14 K86 ["Filters"]
      263 SETTABLEKS                       R14 R4 K88 ["UiZone"]
      265 DUPTABLE                         R15 K92 [{"Invalid", "User", "Group", "GroupRoleset", "All", "Universe"}]
      266 LOADK                            R16 K89 ["Invalid"]
      267 SETTABLEKS                       R16 R15 K89 ["Invalid"]
      269 LOADK                            R16 K16 ["User"]
      270 SETTABLEKS                       R16 R15 K16 ["User"]
      272 LOADK                            R16 K17 ["Group"]
      273 SETTABLEKS                       R16 R15 K17 ["Group"]
      275 LOADK                            R16 K90 ["GroupRoleset"]
      276 SETTABLEKS                       R16 R15 K90 ["GroupRoleset"]
      278 LOADK                            R16 K91 ["All"]
      279 SETTABLEKS                       R16 R15 K91 ["All"]
      281 LOADK                            R16 K18 ["Universe"]
      282 SETTABLEKS                       R16 R15 K18 ["Universe"]
      284 SETTABLEKS                       R15 R4 K93 ["PermissionsSubject"]
      286 DUPTABLE                         R16 K103 [{"Invalid", "Edit", "Use", "Download", "CreateAssetVersion", "UpdateAssetText", "GrantAssetPermissions", "CreateAssetFromAsset", "CopyFromRcc", "UpdateFromRcc"}]
      287 LOADK                            R17 K89 ["Invalid"]
      288 SETTABLEKS                       R17 R16 K89 ["Invalid"]
      290 LOADK                            R17 K94 ["Edit"]
      291 SETTABLEKS                       R17 R16 K94 ["Edit"]
      293 LOADK                            R17 K95 ["Use"]
      294 SETTABLEKS                       R17 R16 K95 ["Use"]
      296 LOADK                            R17 K96 ["Download"]
      297 SETTABLEKS                       R17 R16 K96 ["Download"]
      299 LOADK                            R17 K97 ["CreateAssetVersion"]
      300 SETTABLEKS                       R17 R16 K97 ["CreateAssetVersion"]
      302 LOADK                            R17 K98 ["UpdateAssetText"]
      303 SETTABLEKS                       R17 R16 K98 ["UpdateAssetText"]
      305 LOADK                            R17 K99 ["GrantAssetPermissions"]
      306 SETTABLEKS                       R17 R16 K99 ["GrantAssetPermissions"]
      308 LOADK                            R17 K100 ["CreateAssetFromAsset"]
      309 SETTABLEKS                       R17 R16 K100 ["CreateAssetFromAsset"]
      311 LOADK                            R17 K101 ["CopyFromRcc"]
      312 SETTABLEKS                       R17 R16 K101 ["CopyFromRcc"]
      314 LOADK                            R17 K102 ["UpdateFromRcc"]
      315 SETTABLEKS                       R17 R16 K102 ["UpdateFromRcc"]
      317 SETTABLEKS                       R16 R4 K104 ["PermissionsAction"]
      319 DUPTABLE                         R17 K109 [{"UnknownError", "HasPermission", "NoPermission", "AssetNotFound"}]
      320 LOADK                            R18 K105 ["UnknownError"]
      321 SETTABLEKS                       R18 R17 K105 ["UnknownError"]
      323 LOADK                            R18 K106 ["HasPermission"]
      324 SETTABLEKS                       R18 R17 K106 ["HasPermission"]
      326 LOADK                            R18 K107 ["NoPermission"]
      327 SETTABLEKS                       R18 R17 K107 ["NoPermission"]
      329 LOADK                            R18 K108 ["AssetNotFound"]
      330 SETTABLEKS                       R18 R17 K108 ["AssetNotFound"]
      332 SETTABLEKS                       R17 R4 K110 ["ApiPermissionStatus"]
      334 DUPTABLE                         R18 K115 [{"Test", "QuickShare", "Confirm", "AssetError"}]
      335 LOADK                            R19 K111 ["Test"]
      336 SETTABLEKS                       R19 R18 K111 ["Test"]
      338 LOADK                            R19 K112 ["QuickShare"]
      339 SETTABLEKS                       R19 R18 K112 ["QuickShare"]
      341 LOADK                            R19 K113 ["Confirm"]
      342 SETTABLEKS                       R19 R18 K113 ["Confirm"]
      344 LOADK                            R19 K114 ["AssetError"]
      345 SETTABLEKS                       R19 R18 K114 ["AssetError"]
      347 SETTABLEKS                       R18 R4 K116 ["DialogType"]
      349 RETURN                           R4 1
