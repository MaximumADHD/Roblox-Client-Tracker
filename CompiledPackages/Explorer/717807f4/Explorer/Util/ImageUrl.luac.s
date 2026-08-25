PROTO_0:
        0 LOADK                            R2 K0 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/%*.png"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["rbxasset://studio_svg_textures/Lua/Explorer/%*/Standard/%*.png"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R3 K0 ["rbxasset://studio_svg_textures/Shared/Packages/%*/Standard/PackageLink_%*.png"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R3 K0 ["rbxasset://studio_svg_textures/Shared/Packages/%*/Standard/PackageStatus_%*.png"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_4:
        0 LOADK                            R3 K0 ["rbxasset://studio_svg_textures/Shared/FileSync/%*/Standard/FileSyncStatus_%*.png"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_5:
        0 LOADK                            R3 K0 ["rbxasset://studio_svg_textures/Shared/FileSync/%*/Standard/FileSyncStatus_%*.png"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_6:
        0 LOADK                            R2 K0 ["rbxasset://studio_svg_textures/Shared/Alerts/%*/Standard/Warning.png"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R2 K0 ["rbxasset://studio_svg_textures/Shared/Utility/%*/Large/CircleOutline.png"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R2 K0 ["rbxasset://studio_svg_textures/Lua/AssetImport/%*/Standard/AutoReImport.png"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_9:
        0 JUMPIFNOT                        R2 ; [+2]
        1 LOADK                            R3 K0 ["_Highlighted"]
        2 JUMP                             ; [+1]
        3 LOADK                            R3 K1 [""]
        4 LOADK                            R5 K2 ["rbxasset://studio_svg_textures/Shared/VCS/%*/Standard/VCS%*%*.png"]
        5 MOVE                             R7 R1
        6 MOVE                             R8 R0
        7 MOVE                             R9 R3
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 4 1
       11 MOVE                             R4 R5
       12 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ThemeContext"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 16 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["standard"]
       21 DUPCLOSURE                       R3 K11 [PROTO_1]
       22 SETTABLEKS                       R3 R2 K12 ["themed"]
       24 DUPCLOSURE                       R3 K13 [PROTO_2]
       25 SETTABLEKS                       R3 R2 K14 ["packageLink"]
       27 DUPCLOSURE                       R3 K15 [PROTO_3]
       28 SETTABLEKS                       R3 R2 K16 ["packageStatus"]
       30 DUPCLOSURE                       R3 K17 [PROTO_4]
       31 SETTABLEKS                       R3 R2 K18 ["liveSyncStatus"]
       33 DUPCLOSURE                       R3 K19 [PROTO_5]
       34 SETTABLEKS                       R3 R2 K20 ["instanceFileSyncStatus"]
       36 DUPCLOSURE                       R3 K21 [PROTO_6]
       37 SETTABLEKS                       R3 R2 K22 ["alertIcons"]
       39 DUPCLOSURE                       R3 K23 [PROTO_7]
       40 SETTABLEKS                       R3 R2 K24 ["circleOutline"]
       42 DUPCLOSURE                       R3 K25 [PROTO_8]
       43 SETTABLEKS                       R3 R2 K26 ["reimportFileWatch"]
       45 DUPCLOSURE                       R3 K27 [PROTO_9]
       46 SETTABLEKS                       R3 R2 K28 ["diff"]
       48 RETURN                           R2 1
