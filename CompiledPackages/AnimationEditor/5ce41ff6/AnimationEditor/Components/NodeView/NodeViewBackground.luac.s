PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getViewportRect"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["getGraphRect"]
        7 CALL                             R1 0 1
        8 GETIMPORT                        R2 K4 [Vector2.new]
       10 GETTABLEKS                       R4 R0 K5 ["Min"]
       12 GETTABLEKS                       R3 R4 K6 ["X"]
       14 GETTABLEKS                       R6 R1 K7 ["Max"]
       16 GETTABLEKS                       R5 R6 K8 ["Y"]
       18 GETTABLEKS                       R7 R0 K7 ["Max"]
       20 GETTABLEKS                       R6 R7 K8 ["Y"]
       22 SUB                              R4 R5 R6
       23 CALL                             R2 2 1
       24 GETTABLEKS                       R6 R2 K6 ["X"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K9 ["ORIGINAL_TILE_SIZE"]
       29 MOD                              R5 R6 R7
       30 MINUS                            R4 R5
       31 GETUPVAL                         R5 2
       32 MUL                              R3 R4 R5
       33 GETTABLEKS                       R8 R2 K8 ["Y"]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R9 R10 K9 ["ORIGINAL_TILE_SIZE"]
       38 MOD                              R7 R8 R9
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K9 ["ORIGINAL_TILE_SIZE"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["CanvasContext"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K2 ["ORIGINAL_TILE_SIZE"]
       12 MUL                              R3 R2 R4
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R6 0 4
       22 MOVE                             R7 R1
       23 MOVE                             R8 R2
       24 GETTABLEKS                       R9 R1 K4 ["getViewportRect"]
       26 GETTABLEKS                       R10 R1 K5 ["getGraphRect"]
       28 SETLIST                          R6 R7 4 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R7 0 2
       38 MOVE                             R8 R2
       39 MOVE                             R9 R3
       40 SETLIST                          R7 R8 2 [1]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       46 NEWCLOSURE                       R7 P2
       47 CAPTURE                          VAL R3
       48 NEWTABLE                         R8 0 1
       50 MOVE                             R9 R3
       51 SETLIST                          R8 R9 1 [1]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R7 R8 K6 ["createElement"]
       57 LOADK                            R8 K7 ["ImageLabel"]
       58 DUPTABLE                         R9 K16 [{"Image", "Size", "Position", "BackgroundTransparency", "BorderSizePixel", "ScaleType", "TileSize", "ZIndex"}]
       59 LOADK                            R10 K17 ["rbxassetid://72892776565420"]
       60 SETTABLEKS                       R10 R9 K8 ["Image"]
       62 SETTABLEKS                       R6 R9 K9 ["Size"]
       64 SETTABLEKS                       R4 R9 K10 ["Position"]
       66 LOADN                            R10 1
       67 SETTABLEKS                       R10 R9 K11 ["BackgroundTransparency"]
       69 LOADN                            R10 0
       70 SETTABLEKS                       R10 R9 K12 ["BorderSizePixel"]
       72 GETIMPORT                        R10 K20 [Enum.ScaleType.Tile]
       74 SETTABLEKS                       R10 R9 K13 ["ScaleType"]
       76 SETTABLEKS                       R5 R9 K14 ["TileSize"]
       78 GETTABLEKS                       R10 R0 K15 ["ZIndex"]
       80 SETTABLEKS                       R10 R9 K15 ["ZIndex"]
       82 CALL                             R7 2 -1
       83 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       32 GETTABLEKS                       R5 R6 K12 ["useNodeScale"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K13 [PROTO_3]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
