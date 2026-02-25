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
       23 NEWTABLE                         R3 16 0
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 SETTABLEKS                       R4 R3 K12 ["getEnumAsList"]
       28 DUPCLOSURE                       R4 K13 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R3 K14 ["getEnumAsSortedList"]
       32 DUPTABLE                         R4 K22 [{"User", "Group", "Universe", "ProjectShared", "ProjectPlaces", "Folder", "Header"}]
       33 LOADK                            R5 K15 ["User"]
       34 SETTABLEKS                       R5 R4 K15 ["User"]
       36 LOADK                            R5 K16 ["Group"]
       37 SETTABLEKS                       R5 R4 K16 ["Group"]
       39 LOADK                            R5 K17 ["Universe"]
       40 SETTABLEKS                       R5 R4 K17 ["Universe"]
       42 LOADK                            R5 K18 ["ProjectShared"]
       43 SETTABLEKS                       R5 R4 K18 ["ProjectShared"]
       45 LOADK                            R5 K19 ["ProjectPlaces"]
       46 SETTABLEKS                       R5 R4 K19 ["ProjectPlaces"]
       48 MOVE                             R6 R2
       49 CALL                             R6 0 1
       50 JUMPIFNOT                        R6 ; [+2]
       51 LOADK                            R5 K20 ["Folder"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R5
       54 SETTABLEKS                       R5 R4 K20 ["Folder"]
       56 MOVE                             R6 R2
       57 CALL                             R6 0 1
       58 JUMPIFNOT                        R6 ; [+2]
       59 LOADK                            R5 K21 ["Header"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R5
       62 SETTABLEKS                       R5 R4 K21 ["Header"]
       64 SETTABLEKS                       R4 R3 K23 ["ScopeType"]
       66 DUPTABLE                         R5 K35 [{"Animation", "Audio", "Decal", "FontFamily", "Image", "Mesh", "MeshPart", "Model", "Place", "Plugin", "Video", "Folder"}]
       67 LOADK                            R6 K24 ["Animation"]
       68 SETTABLEKS                       R6 R5 K24 ["Animation"]
       70 LOADK                            R6 K25 ["Audio"]
       71 SETTABLEKS                       R6 R5 K25 ["Audio"]
       73 LOADK                            R6 K26 ["Decal"]
       74 SETTABLEKS                       R6 R5 K26 ["Decal"]
       76 LOADK                            R6 K27 ["FontFamily"]
       77 SETTABLEKS                       R6 R5 K27 ["FontFamily"]
       79 LOADK                            R6 K28 ["Image"]
       80 SETTABLEKS                       R6 R5 K28 ["Image"]
       82 LOADK                            R6 K29 ["Mesh"]
       83 SETTABLEKS                       R6 R5 K29 ["Mesh"]
       85 LOADK                            R6 K30 ["MeshPart"]
       86 SETTABLEKS                       R6 R5 K30 ["MeshPart"]
       88 LOADK                            R6 K31 ["Model"]
       89 SETTABLEKS                       R6 R5 K31 ["Model"]
       91 LOADK                            R6 K32 ["Place"]
       92 SETTABLEKS                       R6 R5 K32 ["Place"]
       94 LOADK                            R6 K33 ["Plugin"]
       95 SETTABLEKS                       R6 R5 K33 ["Plugin"]
       97 LOADK                            R6 K34 ["Video"]
       98 SETTABLEKS                       R6 R5 K34 ["Video"]
      100 MOVE                             R7 R2
      101 CALL                             R7 0 1
      102 JUMPIFNOT                        R7 ; [+2]
      103 LOADK                            R6 K20 ["Folder"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R6
      106 SETTABLEKS                       R6 R5 K20 ["Folder"]
      108 SETTABLEKS                       R5 R3 K36 ["AssetType"]
      110 DUPTABLE                         R6 K40 [{"Reviewing", "Rejected", "Approved"}]
      111 LOADK                            R7 K41 ["MODERATION_STATE_REVIEWING"]
      112 SETTABLEKS                       R7 R6 K37 ["Reviewing"]
      114 LOADK                            R7 K42 ["MODERATION_STATE_REJECTED"]
      115 SETTABLEKS                       R7 R6 K38 ["Rejected"]
      117 LOADK                            R7 K43 ["MODERATION_STATE_APPROVED"]
      118 SETTABLEKS                       R7 R6 K39 ["Approved"]
      120 SETTABLEKS                       R6 R3 K44 ["ModerationStatus"]
      122 DUPTABLE                         R7 K56 [{"Path", "AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "IsPackage", "SearchRank"}]
      123 LOADK                            R8 K45 ["Path"]
      124 SETTABLEKS                       R8 R7 K45 ["Path"]
      126 LOADK                            R8 K46 ["AssetId"]
      127 SETTABLEKS                       R8 R7 K46 ["AssetId"]
      129 LOADK                            R8 K36 ["AssetType"]
      130 SETTABLEKS                       R8 R7 K36 ["AssetType"]
      132 LOADK                            R8 K47 ["DisplayName"]
      133 SETTABLEKS                       R8 R7 K47 ["DisplayName"]
      135 LOADK                            R8 K48 ["VersionNumber"]
      136 SETTABLEKS                       R8 R7 K48 ["VersionNumber"]
      138 LOADK                            R8 K49 ["Created"]
      139 SETTABLEKS                       R8 R7 K49 ["Created"]
      141 LOADK                            R8 K50 ["Modified"]
      142 SETTABLEKS                       R8 R7 K50 ["Modified"]
      144 LOADK                            R8 K44 ["ModerationStatus"]
      145 SETTABLEKS                       R8 R7 K44 ["ModerationStatus"]
      147 LOADK                            R8 K51 ["Creator"]
      148 SETTABLEKS                       R8 R7 K51 ["Creator"]
      150 LOADK                            R8 K52 ["Source"]
      151 SETTABLEKS                       R8 R7 K52 ["Source"]
      153 LOADK                            R8 K53 ["Archived"]
      154 SETTABLEKS                       R8 R7 K53 ["Archived"]
      156 LOADK                            R8 K54 ["IsPackage"]
      157 SETTABLEKS                       R8 R7 K54 ["IsPackage"]
      159 LOADK                            R8 K55 ["SearchRank"]
      160 SETTABLEKS                       R8 R7 K55 ["SearchRank"]
      162 SETTABLEKS                       R7 R3 K57 ["AssetInfoField"]
      164 DUPTABLE                         R8 K61 [{"Uploaded", "CreatorStore", "SharedWithMe"}]
      165 LOADK                            R9 K58 ["Uploaded"]
      166 SETTABLEKS                       R9 R8 K58 ["Uploaded"]
      168 LOADK                            R9 K59 ["CreatorStore"]
      169 SETTABLEKS                       R9 R8 K59 ["CreatorStore"]
      171 LOADK                            R9 K60 ["SharedWithMe"]
      172 SETTABLEKS                       R9 R8 K60 ["SharedWithMe"]
      174 SETTABLEKS                       R8 R3 K62 ["AssetSource"]
      176 MOVE                             R9 R1
      177 LOADK                            R10 K63 ["ViewType"]
      178 DUPTABLE                         R11 K67 [{"List", "Grid", "Unsupported"}]
      179 LOADN                            R12 1
      180 SETTABLEKS                       R12 R11 K64 ["List"]
      182 LOADN                            R12 2
      183 SETTABLEKS                       R12 R11 K65 ["Grid"]
      185 LOADN                            R12 3
      186 SETTABLEKS                       R12 R11 K66 ["Unsupported"]
      188 CALL                             R9 2 1
      189 SETTABLEKS                       R9 R3 K63 ["ViewType"]
      191 DUPTABLE                         R10 K72 [{"Asset", "Scope", "Column", "Sidebar"}]
      192 LOADK                            R11 K68 ["Asset"]
      193 SETTABLEKS                       R11 R10 K68 ["Asset"]
      195 LOADK                            R11 K69 ["Scope"]
      196 SETTABLEKS                       R11 R10 K69 ["Scope"]
      198 LOADK                            R11 K70 ["Column"]
      199 SETTABLEKS                       R11 R10 K70 ["Column"]
      201 LOADK                            R11 K71 ["Sidebar"]
      202 SETTABLEKS                       R11 R10 K71 ["Sidebar"]
      204 SETTABLEKS                       R10 R3 K73 ["MenuContext"]
      206 MOVE                             R11 R1
      207 LOADK                            R12 K74 ["ExplorerHeader"]
      208 DUPTABLE                         R13 K78 [{"User", "Groups", "Project", "Library"}]
      209 LOADN                            R14 1
      210 SETTABLEKS                       R14 R13 K15 ["User"]
      212 LOADN                            R14 2
      213 SETTABLEKS                       R14 R13 K75 ["Groups"]
      215 LOADN                            R14 3
      216 SETTABLEKS                       R14 R13 K76 ["Project"]
      218 LOADN                            R14 4
      219 SETTABLEKS                       R14 R13 K77 ["Library"]
      221 CALL                             R11 2 1
      222 SETTABLEKS                       R11 R3 K74 ["ExplorerHeader"]
      224 DUPTABLE                         R12 K82 [{"Browser", "Explorer", "Filters"}]
      225 LOADK                            R13 K79 ["Browser"]
      226 SETTABLEKS                       R13 R12 K79 ["Browser"]
      228 LOADK                            R13 K80 ["Explorer"]
      229 SETTABLEKS                       R13 R12 K80 ["Explorer"]
      231 LOADK                            R13 K81 ["Filters"]
      232 SETTABLEKS                       R13 R12 K81 ["Filters"]
      234 SETTABLEKS                       R12 R3 K83 ["UiZone"]
      236 DUPTABLE                         R13 K84 [{"User", "Group", "Universe"}]
      237 LOADK                            R14 K15 ["User"]
      238 SETTABLEKS                       R14 R13 K15 ["User"]
      240 LOADK                            R14 K16 ["Group"]
      241 SETTABLEKS                       R14 R13 K16 ["Group"]
      243 LOADK                            R14 K17 ["Universe"]
      244 SETTABLEKS                       R14 R13 K17 ["Universe"]
      246 SETTABLEKS                       R13 R3 K85 ["PermissionsGrantSubject"]
      248 DUPTABLE                         R14 K88 [{"Use", "Edit"}]
      249 LOADK                            R15 K86 ["Use"]
      250 SETTABLEKS                       R15 R14 K86 ["Use"]
      252 LOADK                            R15 K87 ["Edit"]
      253 SETTABLEKS                       R15 R14 K87 ["Edit"]
      255 SETTABLEKS                       R14 R3 K89 ["PermissionsGrantAction"]
      257 RETURN                           R3 1
