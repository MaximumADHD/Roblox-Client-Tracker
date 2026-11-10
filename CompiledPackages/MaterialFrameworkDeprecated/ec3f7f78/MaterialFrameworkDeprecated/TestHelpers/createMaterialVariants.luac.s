PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Flagstone"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 1
        7 GETIMPORT                        R1 K4 [Instance.new]
        9 LOADK                            R2 K5 ["MaterialVariant"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K0 ["Flagstone"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETIMPORT                        R2 K10 [Enum.Material.Pavement]
       16 SETTABLEKS                       R2 R1 K11 ["BaseMaterial"]
       18 LOADN                            R2 8
       19 SETTABLEKS                       R2 R1 K12 ["StudsPerTile"]
       21 LOADK                            R2 K13 ["rbxassetid://9809148719"]
       22 SETTABLEKS                       R2 R1 K14 ["ColorMap"]
       24 LOADK                            R2 K15 ["rbxassetid://8602642017"]
       25 SETTABLEKS                       R2 R1 K16 ["MetalnessMap"]
       27 LOADK                            R2 K17 ["rbxassetid://9809147846"]
       28 SETTABLEKS                       R2 R1 K18 ["NormalMap"]
       30 LOADK                            R2 K19 ["rbxassetid://9809147255"]
       31 SETTABLEKS                       R2 R1 K20 ["RoughnessMap"]
       33 LOADB                            R2 0
       34 SETTABLEKS                       R2 R1 K21 ["Archivable"]
       36 GETUPVAL                         R2 0
       37 SETTABLEKS                       R2 R1 K22 ["Parent"]
       39 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Wallpaper"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 1
        7 GETIMPORT                        R1 K4 [Instance.new]
        9 LOADK                            R2 K5 ["MaterialVariant"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K0 ["Wallpaper"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETIMPORT                        R2 K10 [Enum.Material.Wood]
       16 SETTABLEKS                       R2 R1 K11 ["BaseMaterial"]
       18 LOADN                            R2 4
       19 SETTABLEKS                       R2 R1 K12 ["StudsPerTile"]
       21 LOADK                            R2 K13 ["rbxassetid://8602640896"]
       22 SETTABLEKS                       R2 R1 K14 ["ColorMap"]
       24 LOADK                            R2 K15 ["rbxassetid://8474851245"]
       25 SETTABLEKS                       R2 R1 K16 ["MetalnessMap"]
       27 LOADK                            R2 K17 ["rbxassetid://8602641773"]
       28 SETTABLEKS                       R2 R1 K18 ["NormalMap"]
       30 LOADK                            R2 K19 ["rbxassetid://8602641137"]
       31 SETTABLEKS                       R2 R1 K20 ["RoughnessMap"]
       33 LOADB                            R2 0
       34 SETTABLEKS                       R2 R1 K21 ["Archivable"]
       36 GETUPVAL                         R2 0
       37 SETTABLEKS                       R2 R1 K22 ["Parent"]
       39 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 2
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["Flagstone"]
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 MOVE                             R1 R2
        9 JUMP                             ; [+33]
       10 GETIMPORT                        R3 K4 [Instance.new]
       12 LOADK                            R4 K5 ["MaterialVariant"]
       13 CALL                             R3 1 1
       14 LOADK                            R4 K0 ["Flagstone"]
       15 SETTABLEKS                       R4 R3 K6 ["Name"]
       17 GETIMPORT                        R4 K10 [Enum.Material.Pavement]
       19 SETTABLEKS                       R4 R3 K11 ["BaseMaterial"]
       21 LOADN                            R4 8
       22 SETTABLEKS                       R4 R3 K12 ["StudsPerTile"]
       24 LOADK                            R4 K13 ["rbxassetid://9809148719"]
       25 SETTABLEKS                       R4 R3 K14 ["ColorMap"]
       27 LOADK                            R4 K15 ["rbxassetid://8602642017"]
       28 SETTABLEKS                       R4 R3 K16 ["MetalnessMap"]
       30 LOADK                            R4 K17 ["rbxassetid://9809147846"]
       31 SETTABLEKS                       R4 R3 K18 ["NormalMap"]
       33 LOADK                            R4 K19 ["rbxassetid://9809147255"]
       34 SETTABLEKS                       R4 R3 K20 ["RoughnessMap"]
       36 LOADB                            R4 0
       37 SETTABLEKS                       R4 R3 K21 ["Archivable"]
       39 GETUPVAL                         R4 0
       40 SETTABLEKS                       R4 R3 K22 ["Parent"]
       42 MOVE                             R1 R3
       43 GETUPVAL                         R3 0
       44 LOADK                            R5 K23 ["Wallpaper"]
       45 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
       47 CALL                             R3 2 1
       48 JUMPIFNOT                        R3 ; [+2]
       49 MOVE                             R2 R3
       50 JUMP                             ; [+33]
       51 GETIMPORT                        R4 K4 [Instance.new]
       53 LOADK                            R5 K5 ["MaterialVariant"]
       54 CALL                             R4 1 1
       55 LOADK                            R5 K23 ["Wallpaper"]
       56 SETTABLEKS                       R5 R4 K6 ["Name"]
       58 GETIMPORT                        R5 K25 [Enum.Material.Wood]
       60 SETTABLEKS                       R5 R4 K11 ["BaseMaterial"]
       62 LOADN                            R5 4
       63 SETTABLEKS                       R5 R4 K12 ["StudsPerTile"]
       65 LOADK                            R5 K26 ["rbxassetid://8602640896"]
       66 SETTABLEKS                       R5 R4 K14 ["ColorMap"]
       68 LOADK                            R5 K27 ["rbxassetid://8474851245"]
       69 SETTABLEKS                       R5 R4 K16 ["MetalnessMap"]
       71 LOADK                            R5 K28 ["rbxassetid://8602641773"]
       72 SETTABLEKS                       R5 R4 K18 ["NormalMap"]
       74 LOADK                            R5 K29 ["rbxassetid://8602641137"]
       75 SETTABLEKS                       R5 R4 K20 ["RoughnessMap"]
       77 LOADB                            R5 0
       78 SETTABLEKS                       R5 R4 K21 ["Archivable"]
       80 GETUPVAL                         R5 0
       81 SETTABLEKS                       R5 R4 K22 ["Parent"]
       83 MOVE                             R2 R4
       84 SETLIST                          R0 R1 2 [1]
       86 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MaterialService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K5 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R3 K6 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 RETURN                           R3 1
