MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K4 [{"Head", "Accessory", "Mood", "Export"}]
        4 LOADK                            R2 K0 ["Head"]
        5 SETTABLEKS                       R2 R1 K0 ["Head"]
        7 LOADK                            R2 K1 ["Accessory"]
        8 SETTABLEKS                       R2 R1 K1 ["Accessory"]
       10 LOADK                            R2 K2 ["Mood"]
       11 SETTABLEKS                       R2 R1 K2 ["Mood"]
       13 LOADK                            R2 K3 ["Export"]
       14 SETTABLEKS                       R2 R1 K3 ["Export"]
       16 SETTABLEKS                       R1 R0 K5 ["Modes"]
       18 DUPTABLE                         R1 K12 [{"SelectRig", "InputSurfaceAppearanceIds", "InputAccessoryType", "InputAnimationId", "Error", "OwnershipTransfer"}]
       19 LOADK                            R2 K6 ["SelectRig"]
       20 SETTABLEKS                       R2 R1 K6 ["SelectRig"]
       22 LOADK                            R2 K7 ["InputSurfaceAppearanceIds"]
       23 SETTABLEKS                       R2 R1 K7 ["InputSurfaceAppearanceIds"]
       25 LOADK                            R2 K8 ["InputAccessoryType"]
       26 SETTABLEKS                       R2 R1 K8 ["InputAccessoryType"]
       28 LOADK                            R2 K9 ["InputAnimationId"]
       29 SETTABLEKS                       R2 R1 K9 ["InputAnimationId"]
       31 LOADK                            R2 K10 ["Error"]
       32 SETTABLEKS                       R2 R1 K10 ["Error"]
       34 LOADK                            R2 K11 ["OwnershipTransfer"]
       35 SETTABLEKS                       R2 R1 K11 ["OwnershipTransfer"]
       37 SETTABLEKS                       R1 R0 K13 ["Screens"]
       39 DUPTABLE                         R1 K18 [{"ImportedRthroRig", "ImportedRthroSlenderRig", "ImportedR15Rig", "FBXImportGeneric"}]
       40 LOADB                            R2 1
       41 SETTABLEKS                       R2 R1 K14 ["ImportedRthroRig"]
       43 LOADB                            R2 1
       44 SETTABLEKS                       R2 R1 K15 ["ImportedRthroSlenderRig"]
       46 LOADB                            R2 1
       47 SETTABLEKS                       R2 R1 K16 ["ImportedR15Rig"]
       49 LOADB                            R2 1
       50 SETTABLEKS                       R2 R1 K17 ["FBXImportGeneric"]
       52 SETTABLEKS                       R1 R0 K19 ["AvatarImporterRigNames"]
       54 GETIMPORT                        R1 K22 [Vector2.new]
       56 LOADN                            R2 128
       57 LOADN                            R3 224
       58 CALL                             R1 2 1
       59 SETTABLEKS                       R1 R0 K23 ["WindowSize"]
       61 LOADN                            R1 15
       62 SETTABLEKS                       R1 R0 K24 ["Padding"]
       64 LOADK                            R1 K25 ["DynamicHeadExportTool"]
       65 SETTABLEKS                       R1 R0 K26 ["Tag"]
       67 RETURN                           R0 1
