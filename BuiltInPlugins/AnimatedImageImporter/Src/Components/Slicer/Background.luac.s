PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Image"]
        6 DUPTABLE                         R3 K9 [{["tag"] = "size-full", ["imageStyle"], ["ImageContent"], ["ScaleType"], ["TileSize"], ["ZIndex"]}]
        7 DUPTABLE                         R4 K12 [{["Transparency"] = 0.6}]
        8 SETTABLEKS                       R4 R3 K4 ["imageStyle"]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K5 ["ImageContent"]
       13 GETIMPORT                        R4 K15 [Enum.ScaleType.Tile]
       15 SETTABLEKS                       R4 R3 K6 ["ScaleType"]
       17 GETIMPORT                        R4 K18 [UDim2.fromOffset]
       19 LOADN                            R5 25
       20 LOADN                            R6 25
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K7 ["TileSize"]
       24 GETTABLEKS                       R4 R0 K19 ["zIndex"]
       26 SETTABLEKS                       R4 R3 K8 ["ZIndex"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimatedImageImporter"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 DUPTABLE                         R6 K14 [{"Size"}]
       28 GETIMPORT                        R7 K17 [Vector2.new]
       30 LOADN                            R8 50
       31 LOADN                            R9 50
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K13 ["Size"]
       35 NAMECALL                         R4 R0 K18 ["CreateEditableImage"]
       37 CALL                             R4 2 1
       38 GETIMPORT                        R7 K20 [Vector2.zero]
       40 GETIMPORT                        R8 K17 [Vector2.new]
       42 LOADN                            R9 50
       43 LOADN                            R10 50
       44 CALL                             R8 2 1
       45 GETIMPORT                        R9 K23 [Color3.fromRGB]
       47 LOADN                            R10 211
       48 LOADN                            R11 211
       49 LOADN                            R12 211
       50 CALL                             R9 3 1
       51 LOADN                            R10 0
       52 GETIMPORT                        R11 K27 [Enum.ImageCombineType.Overwrite]
       54 NAMECALL                         R5 R4 K28 ["DrawRectangle"]
       56 CALL                             R5 6 0
       57 GETIMPORT                        R7 K20 [Vector2.zero]
       59 GETIMPORT                        R8 K17 [Vector2.new]
       61 LOADN                            R9 25
       62 LOADN                            R10 25
       63 CALL                             R8 2 1
       64 GETIMPORT                        R9 K29 [Color3.new]
       66 LOADN                            R10 1
       67 LOADN                            R11 1
       68 LOADN                            R12 1
       69 CALL                             R9 3 1
       70 LOADN                            R10 0
       71 GETIMPORT                        R11 K27 [Enum.ImageCombineType.Overwrite]
       73 NAMECALL                         R5 R4 K28 ["DrawRectangle"]
       75 CALL                             R5 6 0
       76 GETIMPORT                        R7 K17 [Vector2.new]
       78 LOADN                            R8 25
       79 LOADN                            R9 25
       80 CALL                             R7 2 1
       81 GETIMPORT                        R8 K17 [Vector2.new]
       83 LOADN                            R9 25
       84 LOADN                            R10 25
       85 CALL                             R8 2 1
       86 GETIMPORT                        R9 K29 [Color3.new]
       88 LOADN                            R10 1
       89 LOADN                            R11 1
       90 LOADN                            R12 1
       91 CALL                             R9 3 1
       92 LOADN                            R10 0
       93 GETIMPORT                        R11 K27 [Enum.ImageCombineType.Overwrite]
       95 NAMECALL                         R5 R4 K28 ["DrawRectangle"]
       97 CALL                             R5 6 0
       98 GETIMPORT                        R5 K32 [Content.fromObject]
      100 MOVE                             R6 R4
      101 CALL                             R5 1 1
      102 DUPCLOSURE                       R6 K33 [PROTO_0]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R5
      106 RETURN                           R6 1
