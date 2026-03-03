PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K4 ["getThemeName"]
        9 CALL                             R3 0 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["_Uris"]
        5 GETTABLE                         R2 R3 R0
        6 LOADK                            R3 K4 ["Light"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["_Uris"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["enumerate"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R1 K9 ["Style"]
       23 GETTABLEKS                       R3 R4 K10 ["ThemeSwitcher"]
       25 NEWTABLE                         R4 8 0
       27 MOVE                             R5 R2
       28 LOADK                            R6 K11 ["AvailableImages"]
       29 DUPTABLE                         R7 K19 [{"Open", "OpenLarge", "Cleanup", "Error", "Success", "File", "Warning"}]
       30 LOADN                            R8 1
       31 SETTABLEKS                       R8 R7 K12 ["Open"]
       33 LOADN                            R8 2
       34 SETTABLEKS                       R8 R7 K13 ["OpenLarge"]
       36 LOADN                            R8 3
       37 SETTABLEKS                       R8 R7 K14 ["Cleanup"]
       39 LOADN                            R8 4
       40 SETTABLEKS                       R8 R7 K15 ["Error"]
       42 LOADN                            R8 5
       43 SETTABLEKS                       R8 R7 K16 ["Success"]
       45 LOADN                            R8 6
       46 SETTABLEKS                       R8 R7 K17 ["File"]
       48 LOADN                            R8 7
       49 SETTABLEKS                       R8 R7 K18 ["Warning"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K11 ["AvailableImages"]
       54 NEWTABLE                         R6 8 0
       56 GETTABLEKS                       R7 R5 K12 ["Open"]
       58 LOADK                            R8 K20 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/Open.png"]
       59 SETTABLE                         R8 R6 R7
       60 GETTABLEKS                       R7 R5 K13 ["OpenLarge"]
       62 LOADK                            R8 K21 ["rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/Open.png"]
       63 SETTABLE                         R8 R6 R7
       64 GETTABLEKS                       R7 R5 K14 ["Cleanup"]
       66 LOADK                            R8 K22 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/Cleanup.png"]
       67 SETTABLE                         R8 R6 R7
       68 GETTABLEKS                       R7 R5 K15 ["Error"]
       70 LOADK                            R8 K23 ["rbxasset://studio_svg_textures/Shared/Alerts/%s/Standard/Error.png"]
       71 SETTABLE                         R8 R6 R7
       72 GETTABLEKS                       R7 R5 K16 ["Success"]
       74 LOADK                            R8 K24 ["rbxasset://studio_svg_textures/Shared/Alerts/%s/Standard/Success.png"]
       75 SETTABLE                         R8 R6 R7
       76 GETTABLEKS                       R7 R5 K17 ["File"]
       78 LOADK                            R8 K25 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/File.png"]
       79 SETTABLE                         R8 R6 R7
       80 GETTABLEKS                       R7 R5 K18 ["Warning"]
       82 LOADK                            R8 K26 ["rbxasset://studio_svg_textures/Shared/Alerts/%s/Standard/Warning.png"]
       83 SETTABLE                         R8 R6 R7
       84 SETTABLEKS                       R6 R4 K27 ["_Uris"]
       86 DUPCLOSURE                       R6 K28 [PROTO_0]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R6 R4 K29 ["get"]
       91 DUPCLOSURE                       R6 K30 [PROTO_1]
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R6 R4 K31 ["getLight"]
       95 DUPCLOSURE                       R6 K32 [PROTO_2]
       96 CAPTURE                          VAL R4
       97 SETTABLEKS                       R6 R4 K33 ["getDark"]
       99 RETURN                           R4 1
