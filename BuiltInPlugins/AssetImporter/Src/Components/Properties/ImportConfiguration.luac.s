PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createFragment"]
        5 DUPTABLE                         R3 K4 [{"Image", "Label"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K5 ["createElement"]
        9 LOADK                            R5 K6 ["ImageLabel"]
       10 DUPTABLE                         R6 K10 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
       11 LOADN                            R7 1
       12 SETTABLEKS                       R7 R6 K7 ["BackgroundTransparency"]
       14 LOADK                            R7 K11 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
       15 SETTABLEKS                       R7 R6 K2 ["Image"]
       17 LOADN                            R7 1
       18 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       20 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       22 LOADN                            R8 32
       23 LOADN                            R9 32
       24 CALL                             R7 2 1
       25 SETTABLEKS                       R7 R6 K9 ["Size"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K2 ["Image"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K5 ["createElement"]
       33 GETUPVAL                         R5 1
       34 DUPTABLE                         R6 K18 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped"}]
       35 GETIMPORT                        R7 K21 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R7 R6 K15 ["AutomaticSize"]
       39 LOADN                            R7 2
       40 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       42 LOADK                            R9 K22 ["Plugin"]
       43 LOADK                            R10 K23 ["ImportConfiguration"]
       44 NAMECALL                         R7 R1 K24 ["getText"]
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K16 ["Text"]
       49 LOADB                            R7 1
       50 SETTABLEKS                       R7 R6 K17 ["TextWrapped"]
       52 CALL                             R4 2 1
       53 SETTABLEKS                       R4 R3 K3 ["Label"]
       55 CALL                             R2 1 -1
       56 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createFragment"]
        5 DUPTABLE                         R3 K3 [{"PropertyList"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K4 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K7 [{"Instance", "AssetImportSession", "Localization"}]
       11 GETTABLEKS                       R7 R0 K8 ["ImportItem"]
       13 SETTABLEKS                       R7 R6 K5 ["Instance"]
       15 GETTABLEKS                       R7 R0 K6 ["AssetImportSession"]
       17 SETTABLEKS                       R7 R6 K6 ["AssetImportSession"]
       19 SETTABLEKS                       R1 R6 K0 ["Localization"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K2 ["PropertyList"]
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R1 K2 ["ImportItem"]
        6 JUMPIFNOT                        R4 ; [+15]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["createElement"]
       10 GETUPVAL                         R4 1
       11 DUPTABLE                         R5 K5 [{"ImportItem", "AssetImportSession"}]
       12 GETTABLEKS                       R6 R1 K2 ["ImportItem"]
       14 SETTABLEKS                       R6 R5 K2 ["ImportItem"]
       16 GETTABLEKS                       R6 R1 K4 ["AssetImportSession"]
       18 SETTABLEKS                       R6 R5 K4 ["AssetImportSession"]
       20 CALL                             R3 2 1
       21 RETURN                           R3 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K3 ["createElement"]
       25 GETUPVAL                         R4 2
       26 DUPTABLE                         R5 K6 [{"Localization"}]
       27 SETTABLEKS                       R2 R5 K1 ["Localization"]
       29 CALL                             R3 2 1
       30 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R3 K11 ["Localization"]
       27 GETTABLEKS                       R6 R2 K12 ["Style"]
       29 GETTABLEKS                       R6 R6 K13 ["Stylizer"]
       31 GETTABLEKS                       R7 R2 K14 ["UI"]
       33 GETTABLEKS                       R8 R7 K15 ["TextLabel"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETIMPORT                        R10 K1 [script]
       39 GETTABLEKS                       R10 R10 K16 ["Parent"]
       41 GETTABLEKS                       R10 R10 K17 ["PropertyListView"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R1 K18 ["PureComponent"]
       46 LOADK                            R12 K19 ["ImportConfiguration"]
       47 NAMECALL                         R10 R10 K20 ["extend"]
       49 CALL                             R10 2 1
       50 DUPCLOSURE                       R11 K21 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R8
       53 DUPCLOSURE                       R12 K22 [PROTO_1]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R9
       56 DUPCLOSURE                       R13 K23 [PROTO_2]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R11
       60 SETTABLEKS                       R13 R10 K24 ["render"]
       62 MOVE                             R13 R4
       63 DUPTABLE                         R14 K25 [{"Localization", "Stylizer"}]
       64 SETTABLEKS                       R5 R14 K11 ["Localization"]
       66 SETTABLEKS                       R6 R14 K13 ["Stylizer"]
       68 CALL                             R13 1 1
       69 MOVE                             R14 R10
       70 CALL                             R13 1 1
       71 MOVE                             R10 R13
       72 RETURN                           R10 1
