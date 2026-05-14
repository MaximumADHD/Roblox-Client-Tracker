PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["asset"]
        6 GETTABLEKS                       R3 R3 K3 ["icon"]
        8 GETIMPORT                        R4 K6 [Color3.fromRGB]
       10 LOADN                            R5 255
       11 LOADN                            R6 255
       12 LOADN                            R7 255
       13 CALL                             R4 3 1
       14 LOADN                            R5 0
       15 GETTABLEKS                       R6 R2 K2 ["asset"]
       17 GETTABLEKS                       R6 R6 K7 ["background"]
       19 GETTABLEKS                       R4 R6 K8 ["color"]
       21 GETTABLEKS                       R6 R2 K2 ["asset"]
       23 GETTABLEKS                       R6 R6 K7 ["background"]
       25 GETTABLEKS                       R5 R6 K9 ["borderSize"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K10 ["Dictionary"]
       30 GETTABLEKS                       R6 R6 K11 ["join"]
       32 MOVE                             R7 R1
       33 DUPTABLE                         R8 K19 [{"BackgroundColor3", "Image", "BorderColor3", "BorderSizePixel", "ScaleType", "TileSize", "backgroundIndex", "Stylizer"}]
       34 SETTABLEKS                       R4 R8 K12 ["BackgroundColor3"]
       36 LOADK                            R9 K20 [""]
       37 SETTABLEKS                       R9 R8 K13 ["Image"]
       39 GETTABLEKS                       R9 R3 K21 ["borderColor"]
       41 SETTABLEKS                       R9 R8 K14 ["BorderColor3"]
       43 SETTABLEKS                       R5 R8 K15 ["BorderSizePixel"]
       45 GETIMPORT                        R9 K24 [Enum.ScaleType.Tile]
       47 SETTABLEKS                       R9 R8 K16 ["ScaleType"]
       49 GETIMPORT                        R9 K27 [UDim2.new]
       51 LOADK                            R10 K28 [0.125]
       52 LOADN                            R11 0
       53 LOADK                            R12 K28 [0.125]
       54 LOADN                            R13 0
       55 CALL                             R9 4 1
       56 SETTABLEKS                       R9 R8 K17 ["TileSize"]
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K29 ["None"]
       61 SETTABLEKS                       R9 R8 K18 ["backgroundIndex"]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K29 ["None"]
       66 SETTABLEKS                       R9 R8 K1 ["Stylizer"]
       68 CALL                             R6 2 1
       69 MOVE                             R1 R6
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K30 ["createElement"]
       73 LOADK                            R7 K31 ["ImageLabel"]
       74 MOVE                             R8 R1
       75 CALL                             R6 2 -1
       76 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       30 GETTABLEKS                       R6 R5 K10 ["withContext"]
       32 GETTABLEKS                       R7 R2 K11 ["Component"]
       34 LOADK                            R9 K12 ["AssetBackground1"]
       35 NAMECALL                         R7 R7 K13 ["extend"]
       37 CALL                             R7 2 1
       38 DUPCLOSURE                       R8 K14 [PROTO_0]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R8 R7 K15 ["render"]
       43 MOVE                             R8 R6
       44 DUPTABLE                         R9 K17 [{"Stylizer"}]
       45 GETTABLEKS                       R10 R5 K16 ["Stylizer"]
       47 SETTABLEKS                       R10 R9 K16 ["Stylizer"]
       49 CALL                             R8 1 1
       50 MOVE                             R9 R7
       51 CALL                             R8 1 1
       52 MOVE                             R7 R8
       53 RETURN                           R7 1
