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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["asList"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [table.sort]
        7 MOVE                             R3 R1
        8 DUPCLOSURE                       R4 K4 [PROTO_1]
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["asList"]
        6 DUPCLOSURE                       R1 K2 [PROTO_2]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["asSortedList"]
       10 DUPTABLE                         R1 K11 [{["User"] = "User", ["Group"] = "Group", ["Universe"] = "Universe", ["ProjectPlaces"] = "ProjectPlaces", ["Folder"] = "Folder", ["Header"] = "Header", ["RecentUploads"] = "RecentUploads"}]
       11 SETTABLEKS                       R1 R0 K12 ["ScopeType"]
       13 DUPTABLE                         R2 K26 [{["Archived"] = "Archived", ["AssetId"] = "AssetId", ["AssetType"] = "AssetType", ["Created"] = "Created", ["Creator"] = "Creator", ["DisplayName"] = "DisplayName", ["IsPackage"] = "IsPackage", ["ModerationStatus"] = "ModerationStatus", ["Modified"] = "Modified", ["Path"] = "Path", ["SearchRank"] = "SearchRank", ["Source"] = "Source", ["VersionNumber"] = "VersionNumber"}]
       14 SETTABLEKS                       R2 R0 K27 ["ItemInfoField"]
       16 DUPTABLE                         R3 K39 [{["Animation"] = "Animation", ["Audio"] = "Audio", ["Decal"] = "Decal", ["FontFamily"] = "FontFamily", ["Image"] = "Image", ["Mesh"] = "Mesh", ["MeshPart"] = "MeshPart", ["Model"] = "Model", ["Place"] = "Place", ["Plugin"] = "Plugin", ["Video"] = "Video", ["Folder"] = "Folder"}]
       17 SETTABLEKS                       R3 R0 K40 ["CreatorInventoryItemType"]
       19 DUPTABLE                         R4 K45 [{["Uploaded"] = "Uploaded", ["CreatorStore"] = "CreatorStore", ["SharedWithMe"] = "SharedWithMe", ["Unknown"] = "Unknown"}]
       20 SETTABLEKS                       R4 R0 K46 ["ItemSource"]
       22 DUPTABLE                         R5 K51 [{["Reviewing"] = "Reviewing", ["Rejected"] = "Rejected", ["Approved"] = "Approved", ["Placeholder"] = "Placeholder"}]
       23 SETTABLEKS                       R5 R0 K20 ["ModerationStatus"]
       25 RETURN                           R0 1
