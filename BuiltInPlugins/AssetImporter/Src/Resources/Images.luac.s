PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["getThemeName"]
        9 CALL                             R3 0 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 LOADK                            R3 K4 ["Light"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 LOADK                            R3 K4 ["Dark"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["enumerate"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Style"]
       23 GETTABLEKS                       R3 R3 K10 ["ThemeSwitcher"]
       25 NEWTABLE                         R4 8 0
       27 MOVE                             R5 R2
       28 LOADK                            R6 K11 ["AvailableImages"]
       29 DUPTABLE                         R7 K26 [{["Open"] = 1, ["OpenLarge"] = 2, ["Cleanup"] = 3, ["Error"] = 4, ["Success"] = 5, ["File"] = 6, ["Warning"] = 7}]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K11 ["AvailableImages"]
       33 NEWTABLE                         R6 8 0
       35 GETTABLEKS                       R7 R5 K12 ["Open"]
       37 LOADK                            R8 K27 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/Open.png"]
       38 SETTABLE                         R8 R6 R7
       39 GETTABLEKS                       R7 R5 K14 ["OpenLarge"]
       41 LOADK                            R8 K28 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/Open.png"]
       42 SETTABLE                         R8 R6 R7
       43 GETTABLEKS                       R7 R5 K16 ["Cleanup"]
       45 LOADK                            R8 K29 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Cleanup.png"]
       46 SETTABLE                         R8 R6 R7
       47 GETTABLEKS                       R7 R5 K18 ["Error"]
       49 LOADK                            R8 K30 ["rbxasset://studio_svg_textures/Shared/Alerts/%s/Standard/Error.png"]
       50 SETTABLE                         R8 R6 R7
       51 GETTABLEKS                       R7 R5 K20 ["Success"]
       53 LOADK                            R8 K31 ["rbxasset://studio_svg_textures/Shared/Alerts/%s/Standard/Success.png"]
       54 SETTABLE                         R8 R6 R7
       55 GETTABLEKS                       R7 R5 K22 ["File"]
       57 LOADK                            R8 K32 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/File.png"]
       58 SETTABLE                         R8 R6 R7
       59 GETTABLEKS                       R7 R5 K24 ["Warning"]
       61 LOADK                            R8 K33 ["rbxasset://studio_svg_textures/Shared/Alerts/%s/Standard/Warning.png"]
       62 SETTABLE                         R8 R6 R7
       63 SETTABLEKS                       R6 R4 K34 ["_Uris"]
       65 DUPCLOSURE                       R6 K35 [PROTO_0]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R6 R4 K36 ["get"]
       70 DUPCLOSURE                       R6 K37 [PROTO_1]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R6 R4 K38 ["getLight"]
       74 DUPCLOSURE                       R6 K39 [PROTO_2]
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R6 R4 K40 ["getDark"]
       78 RETURN                           R4 1
