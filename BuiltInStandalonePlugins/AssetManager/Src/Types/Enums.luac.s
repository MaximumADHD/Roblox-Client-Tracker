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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["enumerate"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 32 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["asList"]
       19 DUPCLOSURE                       R3 K10 [PROTO_2]
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R2 K11 ["asSortedList"]
       23 DUPTABLE                         R3 K19 [{["User"] = "User", ["Group"] = "Group", ["Universe"] = "Universe", ["ProjectPlaces"] = "ProjectPlaces", ["Folder"] = "Folder", ["Header"] = "Header", ["RecentUploads"] = "RecentUploads"}]
       24 SETTABLEKS                       R3 R2 K20 ["ScopeType"]
       26 DUPTABLE                         R4 K32 [{["Animation"] = "Animation", ["Audio"] = "Audio", ["Decal"] = "Decal", ["FontFamily"] = "FontFamily", ["Image"] = "Image", ["Mesh"] = "Mesh", ["MeshPart"] = "MeshPart", ["Model"] = "Model", ["Place"] = "Place", ["Plugin"] = "Plugin", ["Video"] = "Video", ["Folder"] = "Folder"}]
       27 SETTABLEKS                       R4 R2 K33 ["AssetType"]
       29 DUPTABLE                         R5 K38 [{["Reviewing"] = "Reviewing", ["Rejected"] = "Rejected", ["Approved"] = "Approved", ["Placeholder"] = "Placeholder"}]
       30 SETTABLEKS                       R5 R2 K39 ["ModerationStatus"]
       32 DUPTABLE                         R6 K46 [{["FoldersReady"] = "INVENTORY_STATUS_FOLDERS_READY", ["FoldersNotReady"] = "INVENTORY_STATUS_FOLDERS_NOT_READY", ["Invalid"] = "INVENTORY_STATUS_INVALID"}]
       33 SETTABLEKS                       R6 R2 K47 ["InventoryFolderStatus"]
       35 DUPTABLE                         R7 K59 [{["Path"] = "Path", ["AssetId"] = "AssetId", ["AssetType"] = "AssetType", ["DisplayName"] = "DisplayName", ["VersionNumber"] = "VersionNumber", ["Created"] = "Created", ["Modified"] = "Modified", ["ModerationStatus"] = "ModerationStatus", ["Creator"] = "Creator", ["Source"] = "Source", ["Archived"] = "Archived", ["IsPackage"] = "IsPackage", ["SearchRank"] = "SearchRank"}]
       36 SETTABLEKS                       R7 R2 K60 ["AssetInfoField"]
       38 DUPTABLE                         R8 K65 [{["Uploaded"] = "Uploaded", ["CreatorStore"] = "CreatorStore", ["SharedWithMe"] = "SharedWithMe", ["Unknown"] = "Unknown"}]
       39 SETTABLEKS                       R8 R2 K66 ["AssetSource"]
       41 MOVE                             R9 R1
       42 LOADK                            R10 K67 ["ViewType"]
       43 DUPTABLE                         R11 K74 [{["List"] = 1, ["Grid"] = 2, ["Unsupported"] = 3}]
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R2 K67 ["ViewType"]
       47 DUPTABLE                         R10 K78 [{["Asset"] = "Asset", ["Column"] = "Column", ["Sidebar"] = "Sidebar"}]
       48 SETTABLEKS                       R10 R2 K79 ["MenuContext"]
       50 DUPTABLE                         R11 K83 [{["Recent"] = "Recent", ["Project"] = "Project", ["Inventories"] = "Inventories"}]
       51 SETTABLEKS                       R11 R2 K84 ["SidebarHeader"]
       53 DUPTABLE                         R12 K87 [{["Browser"] = "Browser", ["Sidebar"] = "Sidebar", ["Filters"] = "Filters"}]
       54 SETTABLEKS                       R12 R2 K88 ["UiZone"]
       56 DUPTABLE                         R13 K91 [{["Invalid"] = "Invalid", ["User"] = "User", ["Group"] = "Group", ["GroupRoleset"] = "GroupRoleset", ["All"] = "All", ["Universe"] = "Universe"}]
       57 SETTABLEKS                       R13 R2 K92 ["PermissionsSubject"]
       59 DUPTABLE                         R14 K102 [{["Invalid"] = "Invalid", ["Edit"] = "Edit", ["Use"] = "Use", ["Download"] = "Download", ["CreateAssetVersion"] = "CreateAssetVersion", ["UpdateAssetText"] = "UpdateAssetText", ["GrantAssetPermissions"] = "GrantAssetPermissions", ["CreateAssetFromAsset"] = "CreateAssetFromAsset", ["CopyFromRcc"] = "CopyFromRcc", ["UpdateFromRcc"] = "UpdateFromRcc"}]
       60 SETTABLEKS                       R14 R2 K103 ["PermissionsAction"]
       62 DUPTABLE                         R15 K108 [{["UnknownError"] = "UnknownError", ["HasPermission"] = "HasPermission", ["NoPermission"] = "NoPermission", ["AssetNotFound"] = "AssetNotFound"}]
       63 SETTABLEKS                       R15 R2 K109 ["ApiPermissionStatus"]
       65 DUPTABLE                         R16 K115 [{["Test"] = "Test", ["QuickShare"] = "QuickShare", ["Confirm"] = "Confirm", ["AssetError"] = "AssetError", ["Move"] = "Move"}]
       66 SETTABLEKS                       R16 R2 K116 ["DialogType"]
       68 DUPTABLE                         R17 K118 [{["TestExperiment"] = "TestExperiment"}]
       69 SETTABLEKS                       R17 R2 K119 ["IxpVariable"]
       71 DUPTABLE                         R18 K124 [{["Control"] = "control", ["Experiment"] = "experiment"}]
       72 SETTABLEKS                       R18 R2 K125 ["IxpValue"]
       74 RETURN                           R2 1
