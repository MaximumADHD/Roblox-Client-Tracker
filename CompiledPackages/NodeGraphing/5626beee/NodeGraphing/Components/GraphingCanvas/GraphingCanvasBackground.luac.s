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
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["SignalsReact"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["SignalsUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["ViewportRectContext"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_6]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 RETURN                           R6 1
