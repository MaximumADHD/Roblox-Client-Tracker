PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getViewportRect"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["getGraphRect"]
        7 CALL                             R1 0 1
        8 GETIMPORT                        R2 K4 [Vector2.new]
       10 GETTABLEKS                       R3 R0 K5 ["Min"]
       12 GETTABLEKS                       R3 R3 K6 ["X"]
       14 GETTABLEKS                       R5 R1 K7 ["Max"]
       16 GETTABLEKS                       R5 R5 K8 ["Y"]
       18 GETTABLEKS                       R6 R0 K7 ["Max"]
       20 GETTABLEKS                       R6 R6 K8 ["Y"]
       22 SUB                              R4 R5 R6
       23 CALL                             R2 2 1
       24 GETTABLEKS                       R6 R2 K6 ["X"]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K9 ["ORIGINAL_TILE_SIZE"]
       29 MOD                              R5 R6 R7
       30 MINUS                            R4 R5
       31 GETUPVAL                         R5 2
       32 MUL                              R3 R4 R5
       33 GETTABLEKS                       R8 R2 K8 ["Y"]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K9 ["ORIGINAL_TILE_SIZE"]
       38 MOD                              R7 R8 R9
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K9 ["ORIGINAL_TILE_SIZE"]
       42 DIVK                             R8 R9 K10 [2]
       43 ADD                              R6 R7 R8
       44 MINUS                            R5 R6
       45 GETUPVAL                         R6 2
       46 MUL                              R4 R5 R6
       47 GETIMPORT                        R5 K13 [UDim2.fromOffset]
       49 FASTCALL1                        MATH_ROUND R3 ; [+3]
       50 MOVE                             R7 R3
       51 GETIMPORT                        R6 K16 [math.round]
       53 CALL                             R6 1 1
       54 FASTCALL1                        MATH_ROUND R4 ; [+3]
       55 MOVE                             R8 R4
       56 GETIMPORT                        R7 K16 [math.round]
       58 CALL                             R7 1 1
       59 CALL                             R5 2 -1
       60 RETURN                           R5 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [UDim2.fromOffset]
        2 GETUPVAL                         R2 0
        3 FASTCALL1                        MATH_ROUND R2 ; [+2]
        4 GETIMPORT                        R1 K5 [math.round]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 FASTCALL1                        MATH_ROUND R3 ; [+2]
        9 GETIMPORT                        R2 K5 [math.round]
       11 CALL                             R2 1 1
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K2 [UDim2.new]
        2 LOADN                            R1 1
        3 GETUPVAL                         R3 0
        4 FASTCALL1                        MATH_ROUND R3 ; [+2]
        5 GETIMPORT                        R2 K5 [math.round]
        7 CALL                             R2 1 1
        8 LOADN                            R3 1
        9 GETUPVAL                         R5 0
       10 FASTCALL1                        MATH_ROUND R5 ; [+2]
       11 GETIMPORT                        R4 K5 [math.round]
       13 CALL                             R4 1 1
       14 CALL                             R0 4 -1
       15 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CanvasContext"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K3 ["useSignalState"]
       17 GETTABLEKS                       R4 R2 K4 ["observeZoomRatio"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K5 ["ORIGINAL_TILE_SIZE"]
       23 MUL                              R4 R3 R5
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R3
       31 NEWTABLE                         R7 0 4
       33 MOVE                             R8 R1
       34 MOVE                             R9 R3
       35 GETTABLEKS                       R10 R1 K7 ["getViewportRect"]
       37 GETTABLEKS                       R11 R1 K8 ["getGraphRect"]
       39 SETLIST                          R7 R8 4 [1]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R8 0 2
       49 MOVE                             R9 R3
       50 MOVE                             R10 R4
       51 SETLIST                          R8 R9 2 [1]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       57 NEWCLOSURE                       R8 P2
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R9 0 1
       61 MOVE                             R10 R4
       62 SETLIST                          R9 R10 1 [1]
       64 CALL                             R7 2 1
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R8 R8 K9 ["createElement"]
       68 LOADK                            R9 K10 ["ImageLabel"]
       69 DUPTABLE                         R10 K19 [{"Image", "Size", "Position", "BackgroundTransparency", "BorderSizePixel", "ScaleType", "TileSize", "ZIndex"}]
       70 LOADK                            R11 K20 ["rbxassetid://72892776565420"]
       71 SETTABLEKS                       R11 R10 K11 ["Image"]
       73 SETTABLEKS                       R7 R10 K12 ["Size"]
       75 SETTABLEKS                       R5 R10 K13 ["Position"]
       77 LOADN                            R11 1
       78 SETTABLEKS                       R11 R10 K14 ["BackgroundTransparency"]
       80 LOADN                            R11 0
       81 SETTABLEKS                       R11 R10 K15 ["BorderSizePixel"]
       83 GETIMPORT                        R11 K23 [Enum.ScaleType.Tile]
       85 SETTABLEKS                       R11 R10 K16 ["ScaleType"]
       87 SETTABLEKS                       R6 R10 K17 ["TileSize"]
       89 GETTABLEKS                       R11 R0 K18 ["ZIndex"]
       91 SETTABLEKS                       R11 R10 K18 ["ZIndex"]
       93 CALL                             R8 2 -1
       94 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Graphing"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["SignalsReact"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["ViewportRectContext"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_3]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 RETURN                           R6 1
