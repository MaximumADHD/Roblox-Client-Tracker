MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{[1] = "User", ["Group"] = "Group", ["Universe"] = "Universe", ["ProjectPlaces"] = "ProjectPlaces", ["Folder"] = "Folder", ["Header"] = "Header", ["RecentUploads"] = "RecentUploads"}]
        2 DUPTABLE                         R1 K21 [{["Animation"] = "Animation", ["AnimatedImage"] = "AnimatedImage", ["Audio"] = "Audio", ["Decal"] = "Decal", ["FontFamily"] = "FontFamily", ["Image"] = "Image", ["Mesh"] = "Mesh", ["MeshPart"] = "MeshPart", ["Model"] = "Model", ["Place"] = "Place", ["Plugin"] = "Plugin", ["TextDocument"] = "TextDocument", ["Video"] = "Video", ["Folder"] = "Folder"}]
        3 DUPTABLE                         R2 K24 [{["List"] = "List", ["Grid"] = "Grid"}]
        4 DUPTABLE                         R3 K30 [{["CPC_ID"] = "CPC::AssetManager", ["CPC_EVENTS"], ["MEMSTORAGE_EVENTS"], ["ENUMS"]}]
        5 DUPTABLE                         R4 K33 [{["IMPORT_ASSET_VERSION"] = "ImportAssetVersion"}]
        6 SETTABLEKS                       R4 R3 K27 ["CPC_EVENTS"]
        8 DUPTABLE                         R4 K36 [{["OPEN_FROM_EXTERNAL_TRIGGER"] = "OpenAssetManagerFromExternalTrigger"}]
        9 SETTABLEKS                       R4 R3 K28 ["MEMSTORAGE_EVENTS"]
       11 DUPTABLE                         R4 K40 [{"CREATOR_INVENTORY_ITEM_TYPE", "SCOPE_TYPE", "VIEW_TYPE"}]
       12 SETTABLEKS                       R1 R4 K37 ["CREATOR_INVENTORY_ITEM_TYPE"]
       14 SETTABLEKS                       R0 R4 K38 ["SCOPE_TYPE"]
       16 SETTABLEKS                       R2 R4 K39 ["VIEW_TYPE"]
       18 SETTABLEKS                       R4 R3 K29 ["ENUMS"]
       20 RETURN                           R3 1
