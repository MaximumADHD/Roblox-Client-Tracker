MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K4 [{[1] = "Head", ["Accessory"] = "Accessory", ["Mood"] = "Mood", ["Export"] = "Export"}]
        4 SETTABLEKS                       R1 R0 K5 ["Modes"]
        6 DUPTABLE                         R1 K12 [{["SelectRig"] = "SelectRig", ["InputSurfaceAppearanceIds"] = "InputSurfaceAppearanceIds", ["InputAccessoryType"] = "InputAccessoryType", ["InputAnimationId"] = "InputAnimationId", ["Error"] = "Error", ["OwnershipTransfer"] = "OwnershipTransfer"}]
        7 SETTABLEKS                       R1 R0 K13 ["Screens"]
        9 DUPTABLE                         R1 K19 [{["ImportedRthroRig"] = True, ["ImportedRthroSlenderRig"] = True, ["ImportedR15Rig"] = True, ["FBXImportGeneric"] = True}]
       10 SETTABLEKS                       R1 R0 K20 ["AvatarImporterRigNames"]
       12 GETIMPORT                        R1 K23 [Vector2.new]
       14 LOADN                            R2 640
       15 LOADN                            R3 480
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K24 ["WindowSize"]
       19 LOADN                            R1 15
       20 SETTABLEKS                       R1 R0 K25 ["Padding"]
       22 LOADK                            R1 K26 ["DynamicHeadExportTool"]
       23 SETTABLEKS                       R1 R0 K27 ["Tag"]
       25 RETURN                           R0 1
