PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeZoomRatio"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["observeViewportRect"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["ORIGINAL_TILE_SIZE"]
       13 MUL                              R4 R1 R5
       14 FASTCALL1                        MATH_ROUND R4 ; [+2]
       15 GETIMPORT                        R3 K5 [math.round]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R5 R2 K6 ["Min"]
       20 GETTABLEKS                       R5 R5 K7 ["X"]
       22 MUL                              R4 R5 R1
       23 GETTABLEKS                       R7 R2 K8 ["Max"]
       25 GETTABLEKS                       R7 R7 K9 ["Y"]
       27 MINUS                            R6 R7
       28 MUL                              R5 R6 R1
       29 MOD                              R7 R4 R3
       30 MINUS                            R6 R7
       31 MOD                              R8 R5 R3
       32 MINUS                            R7 R8
       33 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       35 FASTCALL1                        MATH_ROUND R6 ; [+3]
       36 MOVE                             R10 R6
       37 GETIMPORT                        R9 K5 [math.round]
       39 CALL                             R9 1 1
       40 FASTCALL1                        MATH_ROUND R7 ; [+3]
       41 MOVE                             R11 R7
       42 GETIMPORT                        R10 K5 [math.round]
       44 CALL                             R10 1 1
       45 CALL                             R8 2 -1
       46 RETURN                           R8 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ORIGINAL_TILE_SIZE"]
        3 MUL                              R1 R0 R2
        4 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 FASTCALL1                        MATH_ROUND R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K5 [math.round]
        6 CALL                             R2 1 1
        7 FASTCALL1                        MATH_ROUND R0 ; [+3]
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K5 [math.round]
       11 CALL                             R3 1 1
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 FASTCALL1                        MATH_ROUND R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K5 [math.round]
        7 CALL                             R3 1 1
        8 LOADN                            R4 1
        9 FASTCALL1                        MATH_ROUND R0 ; [+3]
       10 MOVE                             R6 R0
       11 GETIMPORT                        R5 K5 [math.round]
       13 CALL                             R5 1 1
       14 CALL                             R1 4 -1
       15 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K1 ["map"]
        5 CALL                             R0 2 1
        6 DUPCLOSURE                       R3 K2 [PROTO_3]
        7 NAMECALL                         R1 R0 K1 ["map"]
        9 CALL                             R1 2 1
       10 DUPCLOSURE                       R4 K3 [PROTO_4]
       11 NAMECALL                         R2 R0 K1 ["map"]
       13 CALL                             R2 2 1
       14 MOVE                             R3 R2
       15 MOVE                             R4 R1
       16 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalBinding"]
       10 GETTABLEKS                       R3 R1 K3 ["observeZoomRatio"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R5 0 2
       22 GETTABLEKS                       R6 R1 K3 ["observeZoomRatio"]
       24 GETTABLEKS                       R7 R1 K5 ["observeViewportRect"]
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K2 ["useSignalBinding"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U4
       40 NEWTABLE                         R7 0 1
       42 MOVE                             R8 R2
       43 SETLIST                          R7 R8 1 [1]
       45 CALL                             R5 2 2
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K6 ["createElement"]
       49 LOADK                            R8 K7 ["ImageLabel"]
       50 DUPTABLE                         R9 K19 [{["Image"] = "rbxassetid://104114449621514", ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ScaleType"], ["TileSize"], ["ZIndex"]}]
       51 SETTABLEKS                       R5 R9 K10 ["Size"]
       53 SETTABLEKS                       R4 R9 K11 ["Position"]
       55 GETIMPORT                        R10 K22 [Enum.ScaleType.Tile]
       57 SETTABLEKS                       R10 R9 K16 ["ScaleType"]
       59 SETTABLEKS                       R6 R9 K17 ["TileSize"]
       61 GETTABLEKS                       R10 R0 K18 ["ZIndex"]
       63 SETTABLEKS                       R10 R9 K18 ["ZIndex"]
       65 CALL                             R7 2 -1
       66 RETURN                           R7 -1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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
       69 DUPTABLE                         R10 K22 [{["Image"] = "rbxassetid://104114449621514", ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ScaleType"], ["TileSize"], ["ZIndex"]}]
       70 SETTABLEKS                       R7 R10 K13 ["Size"]
       72 SETTABLEKS                       R5 R10 K14 ["Position"]
       74 GETIMPORT                        R11 K25 [Enum.ScaleType.Tile]
       76 SETTABLEKS                       R11 R10 K19 ["ScaleType"]
       78 SETTABLEKS                       R6 R10 K20 ["TileSize"]
       80 GETTABLEKS                       R11 R0 K21 ["ZIndex"]
       82 SETTABLEKS                       R11 R10 K21 ["ZIndex"]
       84 CALL                             R8 2 -1
       85 RETURN                           R8 -1

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
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["FFlagAnimGraphUI_PerfFixes_7123"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Graphing"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["SignalsReact"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["SignalsUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Components"]
       51 GETTABLEKS                       R8 R8 K15 ["ViewportRectContext"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K16 [PROTO_6]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R1
       60 DUPCLOSURE                       R9 K17 [PROTO_10]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 JUMPIFNOT                        R2 ; [+2]
       67 MOVE                             R10 R8
       68 RETURN                           R10 1
       69 MOVE                             R10 R9
       70 RETURN                           R10 1
