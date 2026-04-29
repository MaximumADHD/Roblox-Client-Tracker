PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["plotToView"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Rect"]
        5 GETTABLEKS                       R2 R3 K2 ["Min"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K0 ["plotToView"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["Rect"]
       13 GETTABLEKS                       R3 R4 K3 ["Max"]
       15 CALL                             R2 1 1
       16 DUPTABLE                         R3 K6 [{"position", "size"}]
       17 GETIMPORT                        R4 K9 [UDim2.fromScale]
       19 GETTABLEKS                       R5 R1 K10 ["X"]
       21 GETTABLEKS                       R6 R1 K11 ["Y"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K4 ["position"]
       26 GETIMPORT                        R4 K9 [UDim2.fromScale]
       28 GETTABLEKS                       R6 R2 K10 ["X"]
       30 GETTABLEKS                       R7 R1 K10 ["X"]
       32 SUB                              R5 R6 R7
       33 GETTABLEKS                       R7 R2 K11 ["Y"]
       35 GETTABLEKS                       R8 R1 K11 ["Y"]
       37 SUB                              R6 R7 R8
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R3 K5 ["size"]
       41 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isRectInViewport"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Rect"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["position"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["position"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R3 0 1
        5 GETTABLEKS                       R4 R0 K0 ["Rect"]
        7 SETLIST                          R3 R4 1 [1]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 1
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 1
       15 GETTABLEKS                       R5 R0 K0 ["Rect"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 JUMPIF                           R2 ; [+2]
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 GETTABLEKS                       R3 R0 K1 ["Image"]
       25 JUMPIFNOT                        R3 ; [+50]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K2 ["createElement"]
       29 LOADK                            R4 K3 ["ImageLabel"]
       30 NEWTABLE                         R5 16 0
       32 DUPCLOSURE                       R8 K4 [PROTO_2]
       33 NAMECALL                         R6 R1 K5 ["map"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K6 ["Position"]
       38 DUPCLOSURE                       R8 K7 [PROTO_3]
       39 NAMECALL                         R6 R1 K5 ["map"]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K8 ["Size"]
       44 GETTABLEKS                       R6 R0 K1 ["Image"]
       46 SETTABLEKS                       R6 R5 K1 ["Image"]
       48 GETTABLEKS                       R6 R0 K9 ["ImageColor3"]
       50 SETTABLEKS                       R6 R5 K9 ["ImageColor3"]
       52 GETTABLEKS                       R6 R0 K10 ["ImageTransparency"]
       54 SETTABLEKS                       R6 R5 K10 ["ImageTransparency"]
       56 LOADN                            R6 0
       57 SETTABLEKS                       R6 R5 K11 ["BackgroundTransparency"]
       59 LOADN                            R6 0
       60 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       62 GETTABLEKS                       R6 R0 K13 ["ZIndex"]
       64 SETTABLEKS                       R6 R5 K13 ["ZIndex"]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R6 R7 K14 ["Tag"]
       69 GETTABLEKS                       R7 R0 K14 ["Tag"]
       71 SETTABLE                         R7 R5 R6
       72 GETTABLEKS                       R6 R0 K15 ["children"]
       74 CALL                             R3 3 -1
       75 RETURN                           R3 -1
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R3 R4 K2 ["createElement"]
       79 LOADK                            R4 K16 ["Frame"]
       80 NEWTABLE                         R5 8 0
       82 DUPCLOSURE                       R8 K17 [PROTO_4]
       83 NAMECALL                         R6 R1 K5 ["map"]
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R5 K6 ["Position"]
       88 DUPCLOSURE                       R8 K18 [PROTO_5]
       89 NAMECALL                         R6 R1 K5 ["map"]
       91 CALL                             R6 2 1
       92 SETTABLEKS                       R6 R5 K8 ["Size"]
       94 GETTABLEKS                       R6 R0 K19 ["BackgroundColor3"]
       96 JUMPIF                           R6 ; [+3]
       97 GETUPVAL                         R7 3
       98 GETTABLEKS                       R6 R7 K20 ["GRID_BOX_BACKGROUND_COLOR3"]
      100 SETTABLEKS                       R6 R5 K19 ["BackgroundColor3"]
      102 GETTABLEKS                       R6 R0 K11 ["BackgroundTransparency"]
      104 JUMPIF                           R6 ; [+3]
      105 GETUPVAL                         R7 3
      106 GETTABLEKS                       R6 R7 K21 ["GRID_BOX_BACKGROUND_TRANSPARENCY"]
      108 SETTABLEKS                       R6 R5 K11 ["BackgroundTransparency"]
      110 GETTABLEKS                       R6 R0 K22 ["BorderColor3"]
      112 JUMPIF                           R6 ; [+3]
      113 GETUPVAL                         R7 3
      114 GETTABLEKS                       R6 R7 K23 ["GRID_BOX_BORDER_COLOR3"]
      116 SETTABLEKS                       R6 R5 K22 ["BorderColor3"]
      118 GETTABLEKS                       R6 R0 K24 ["BorderThickness"]
      120 JUMPIF                           R6 ; [+3]
      121 GETUPVAL                         R7 3
      122 GETTABLEKS                       R6 R7 K25 ["GRID_BOX_BORDER_THICKNESS"]
      124 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
      126 GETTABLEKS                       R6 R0 K13 ["ZIndex"]
      128 SETTABLEKS                       R6 R5 K13 ["ZIndex"]
      130 GETUPVAL                         R7 2
      131 GETTABLEKS                       R6 R7 K14 ["Tag"]
      133 GETTABLEKS                       R7 R0 K14 ["Tag"]
      135 SETTABLE                         R7 R5 R6
      136 GETTABLEKS                       R6 R0 K15 ["children"]
      138 CALL                             R3 3 -1
      139 RETURN                           R3 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R5 K9 ["StyleUtil"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K8 ["Util"]
       30 GETTABLEKS                       R6 R7 K11 ["useViewportBinding"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R5 K11 ["useViewportBinding"]
       35 GETTABLEKS                       R7 R5 K12 ["useViewportVisibility"]
       37 DUPCLOSURE                       R8 K13 [PROTO_6]
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 SETGLOBAL                        R8 K14 ["Panel"]
       44 GETGLOBAL                        R8 K14 ["Panel"]
       46 RETURN                           R8 1
