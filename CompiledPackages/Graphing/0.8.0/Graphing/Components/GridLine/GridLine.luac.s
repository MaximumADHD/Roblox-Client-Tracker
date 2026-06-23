PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Orientation"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["ORIENTATION_VERTICAL"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+8]
        8 GETTABLEKS                       R1 R0 K2 ["plotToViewX"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["Position"]
       13 CALL                             R1 1 1
       14 JUMP                             ; [+6]
       15 GETTABLEKS                       R1 R0 K4 ["plotToViewY"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K3 ["Position"]
       20 CALL                             R1 1 1
       21 LOADN                            R2 0
       22 LOADN                            R3 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K5 ["OppositeAxisBounds"]
       26 JUMPIFNOT                        R4 ; [+45]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["Orientation"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K1 ["ORIENTATION_VERTICAL"]
       33 JUMPIFNOTEQ                      R4 R5 ; [+20]
       35 GETTABLEKS                       R4 R0 K4 ["plotToViewY"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K5 ["OppositeAxisBounds"]
       40 GETTABLEKS                       R5 R5 K6 ["Min"]
       42 CALL                             R4 1 1
       43 MOVE                             R2 R4
       44 GETTABLEKS                       R4 R0 K4 ["plotToViewY"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K5 ["OppositeAxisBounds"]
       49 GETTABLEKS                       R5 R5 K7 ["Max"]
       51 CALL                             R4 1 1
       52 MOVE                             R3 R4
       53 JUMP                             ; [+18]
       54 GETTABLEKS                       R4 R0 K2 ["plotToViewX"]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K5 ["OppositeAxisBounds"]
       59 GETTABLEKS                       R5 R5 K6 ["Min"]
       61 CALL                             R4 1 1
       62 MOVE                             R2 R4
       63 GETTABLEKS                       R4 R0 K2 ["plotToViewX"]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R5 R5 K5 ["OppositeAxisBounds"]
       68 GETTABLEKS                       R5 R5 K7 ["Max"]
       70 CALL                             R4 1 1
       71 MOVE                             R3 R4
       72 LOADNIL                          R4
       73 LOADNIL                          R5
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K0 ["Orientation"]
       77 GETUPVAL                         R7 1
       78 GETTABLEKS                       R7 R7 K1 ["ORIENTATION_VERTICAL"]
       80 JUMPIFNOTEQ                      R6 R7 ; [+17]
       82 GETIMPORT                        R6 K10 [UDim2.fromScale]
       84 MOVE                             R7 R1
       85 ADD                              R9 R2 R3
       86 DIVK                             R8 R9 K11 [2]
       87 CALL                             R6 2 1
       88 MOVE                             R4 R6
       89 GETIMPORT                        R6 K13 [UDim2.new]
       91 LOADN                            R7 0
       92 GETUPVAL                         R8 2
       93 SUB                              R9 R3 R2
       94 LOADN                            R10 0
       95 CALL                             R6 4 1
       96 MOVE                             R5 R6
       97 JUMP                             ; [+15]
       98 GETIMPORT                        R6 K10 [UDim2.fromScale]
      100 ADD                              R8 R2 R3
      101 DIVK                             R7 R8 K11 [2]
      102 MOVE                             R8 R1
      103 CALL                             R6 2 1
      104 MOVE                             R4 R6
      105 GETIMPORT                        R6 K13 [UDim2.new]
      107 SUB                              R7 R3 R2
      108 LOADN                            R8 0
      109 LOADN                            R9 0
      110 GETUPVAL                         R10 2
      111 CALL                             R6 4 1
      112 MOVE                             R5 R6
      113 DUPTABLE                         R6 K16 [{"position", "size"}]
      114 SETTABLEKS                       R4 R6 K14 ["position"]
      116 SETTABLEKS                       R5 R6 K15 ["size"]
      118 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OppositeAxisBounds"]
        3 JUMPIFNOT                        R1 ; [+54]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Orientation"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["ORIENTATION_VERTICAL"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+24]
       12 GETTABLEKS                       R1 R0 K3 ["isRectInViewport"]
       14 GETIMPORT                        R2 K6 [Rect.new]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["Position"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["OppositeAxisBounds"]
       22 GETTABLEKS                       R4 R4 K8 ["Min"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K7 ["Position"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K0 ["OppositeAxisBounds"]
       30 GETTABLEKS                       R6 R6 K9 ["Max"]
       32 CALL                             R2 4 -1
       33 CALL                             R1 -1 1
       34 RETURN                           R1 1
       35 GETTABLEKS                       R1 R0 K3 ["isRectInViewport"]
       37 GETIMPORT                        R2 K6 [Rect.new]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K0 ["OppositeAxisBounds"]
       42 GETTABLEKS                       R3 R3 K8 ["Min"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K7 ["Position"]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["OppositeAxisBounds"]
       50 GETTABLEKS                       R5 R5 K9 ["Max"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K7 ["Position"]
       55 CALL                             R2 4 -1
       56 CALL                             R1 -1 1
       57 RETURN                           R1 1
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K1 ["Orientation"]
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K2 ["ORIENTATION_VERTICAL"]
       64 JUMPIFNOTEQ                      R2 R3 ; [+8]
       66 GETTABLEKS                       R1 R0 K10 ["isPointInViewportX"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K7 ["Position"]
       71 CALL                             R1 1 1
       72 RETURN                           R1 1
       73 GETTABLEKS                       R1 R0 K11 ["isPointInViewportY"]
       75 GETUPVAL                         R2 0
       76 GETTABLEKS                       R2 R2 K7 ["Position"]
       78 CALL                             R1 1 1
       79 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["position"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["Orientation"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["ORIENTATION_VERTICAL"]
        6 JUMPIFEQ                         R3 R4 ; [+10]
        8 GETTABLEKS                       R3 R0 K0 ["Orientation"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["ORIENTATION_HORIZONTAL"]
       13 JUMPIFEQ                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 LOADK                            R4 K3 ["Invalid orientation %*"]
       18 GETTABLEKS                       R6 R0 K0 ["Orientation"]
       20 NAMECALL                         R4 R4 K4 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 FASTCALL2                        ASSERT R2 R3 ; [+3]
       26 GETIMPORT                        R1 K6 [assert]
       28 CALL                             R1 2 0
       29 GETTABLEKS                       R1 R0 K7 ["Color3"]
       31 JUMPIF                           R1 ; [+3]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K8 ["GRID_LINE_COLOR3"]
       35 GETTABLEKS                       R2 R0 K9 ["Transparency"]
       37 JUMPIF                           R2 ; [+3]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K10 ["GRID_LINE_TRANSPARENCY"]
       41 GETTABLEKS                       R3 R0 K11 ["Thickness"]
       43 JUMPIF                           R3 ; [+3]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K12 ["GRID_LINE_THICKNESS"]
       47 GETUPVAL                         R4 2
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R3
       52 NEWTABLE                         R6 0 4
       54 GETTABLEKS                       R7 R0 K0 ["Orientation"]
       56 GETTABLEKS                       R8 R0 K13 ["Position"]
       58 GETTABLEKS                       R9 R0 K14 ["OppositeAxisBounds"]
       60 MOVE                             R10 R3
       61 SETLIST                          R6 R7 4 [1]
       63 CALL                             R4 2 1
       64 GETUPVAL                         R5 3
       65 NEWCLOSURE                       R6 P1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U0
       68 NEWTABLE                         R7 0 3
       70 GETTABLEKS                       R8 R0 K0 ["Orientation"]
       72 GETTABLEKS                       R9 R0 K13 ["Position"]
       74 GETTABLEKS                       R10 R0 K14 ["OppositeAxisBounds"]
       76 SETLIST                          R7 R8 3 [1]
       78 CALL                             R5 2 1
       79 JUMPIF                           R5 ; [+2]
       80 LOADNIL                          R6
       81 RETURN                           R6 1
       82 GETUPVAL                         R6 4
       83 GETTABLEKS                       R6 R6 K15 ["createElement"]
       85 LOADK                            R7 K16 ["Frame"]
       86 DUPTABLE                         R8 K23 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "ZIndex"}]
       87 GETIMPORT                        R9 K26 [Vector2.new]
       89 LOADK                            R10 K27 [0.5]
       90 LOADK                            R11 K27 [0.5]
       91 CALL                             R9 2 1
       92 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       94 DUPCLOSURE                       R11 K28 [PROTO_2]
       95 NAMECALL                         R9 R4 K29 ["map"]
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K13 ["Position"]
      100 DUPCLOSURE                       R11 K30 [PROTO_3]
      101 NAMECALL                         R9 R4 K29 ["map"]
      103 CALL                             R9 2 1
      104 SETTABLEKS                       R9 R8 K18 ["Size"]
      106 LOADN                            R9 0
      107 SETTABLEKS                       R9 R8 K19 ["BorderSizePixel"]
      109 SETTABLEKS                       R1 R8 K20 ["BackgroundColor3"]
      111 SETTABLEKS                       R2 R8 K21 ["BackgroundTransparency"]
      113 GETTABLEKS                       R9 R0 K22 ["ZIndex"]
      115 SETTABLEKS                       R9 R8 K22 ["ZIndex"]
      117 GETTABLEKS                       R9 R0 K31 ["children"]
      119 CALL                             R6 3 -1
      120 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["StyleUtil"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Util"]
       30 GETTABLEKS                       R6 R6 K11 ["useViewportBinding"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R5 K11 ["useViewportBinding"]
       35 GETTABLEKS                       R7 R5 K12 ["useViewportVisibility"]
       37 DUPCLOSURE                       R8 K13 [PROTO_4]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R2
       43 SETGLOBAL                        R8 K14 ["GridLine"]
       45 GETGLOBAL                        R8 K14 ["GridLine"]
       47 RETURN                           R8 1
