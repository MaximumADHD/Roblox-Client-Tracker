PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["isRectInViewport"]
        7 GETTABLEKS                       R3 R0 K2 ["Rect"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R1 K3 ["plotToView"]
       12 GETTABLEKS                       R5 R0 K2 ["Rect"]
       14 GETTABLEKS                       R4 R5 K4 ["Min"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R1 K3 ["plotToView"]
       19 GETTABLEKS                       R6 R0 K2 ["Rect"]
       21 GETTABLEKS                       R5 R6 K5 ["Max"]
       23 CALL                             R4 1 1
       24 JUMPIF                           R2 ; [+2]
       25 LOADNIL                          R5
       26 RETURN                           R5 1
       27 GETTABLEKS                       R5 R0 K6 ["Image"]
       29 JUMPIFNOT                        R5 ; [+62]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K7 ["createElement"]
       33 LOADK                            R6 K8 ["ImageLabel"]
       34 NEWTABLE                         R7 16 0
       36 GETIMPORT                        R8 K11 [UDim2.fromScale]
       38 GETTABLEKS                       R9 R3 K12 ["X"]
       40 GETTABLEKS                       R10 R3 K13 ["Y"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K14 ["Position"]
       45 GETIMPORT                        R8 K11 [UDim2.fromScale]
       47 GETTABLEKS                       R10 R4 K12 ["X"]
       49 GETTABLEKS                       R11 R3 K12 ["X"]
       51 SUB                              R9 R10 R11
       52 GETTABLEKS                       R11 R4 K13 ["Y"]
       54 GETTABLEKS                       R12 R3 K13 ["Y"]
       56 SUB                              R10 R11 R12
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K15 ["Size"]
       60 GETTABLEKS                       R8 R0 K6 ["Image"]
       62 SETTABLEKS                       R8 R7 K16 ["ImageContent"]
       64 GETTABLEKS                       R8 R0 K17 ["ImageColor3"]
       66 SETTABLEKS                       R8 R7 K17 ["ImageColor3"]
       68 GETTABLEKS                       R8 R0 K18 ["ImageTransparency"]
       70 SETTABLEKS                       R8 R7 K18 ["ImageTransparency"]
       72 LOADN                            R8 0
       73 SETTABLEKS                       R8 R7 K19 ["BackgroundTransparency"]
       75 LOADN                            R8 0
       76 SETTABLEKS                       R8 R7 K20 ["BorderSizePixel"]
       78 GETTABLEKS                       R8 R0 K21 ["ZIndex"]
       80 SETTABLEKS                       R8 R7 K21 ["ZIndex"]
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R8 R9 K22 ["Tag"]
       85 GETTABLEKS                       R9 R0 K22 ["Tag"]
       87 SETTABLE                         R9 R7 R8
       88 GETTABLEKS                       R8 R0 K23 ["children"]
       90 CALL                             R5 3 -1
       91 RETURN                           R5 -1
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R5 R6 K7 ["createElement"]
       95 LOADK                            R6 K24 ["Frame"]
       96 NEWTABLE                         R7 8 0
       98 GETIMPORT                        R8 K11 [UDim2.fromScale]
      100 GETTABLEKS                       R9 R3 K12 ["X"]
      102 GETTABLEKS                       R10 R3 K13 ["Y"]
      104 CALL                             R8 2 1
      105 SETTABLEKS                       R8 R7 K14 ["Position"]
      107 GETIMPORT                        R8 K11 [UDim2.fromScale]
      109 GETTABLEKS                       R10 R4 K12 ["X"]
      111 GETTABLEKS                       R11 R3 K12 ["X"]
      113 SUB                              R9 R10 R11
      114 GETTABLEKS                       R11 R4 K13 ["Y"]
      116 GETTABLEKS                       R12 R3 K13 ["Y"]
      118 SUB                              R10 R11 R12
      119 CALL                             R8 2 1
      120 SETTABLEKS                       R8 R7 K15 ["Size"]
      122 GETTABLEKS                       R8 R0 K25 ["BackgroundColor3"]
      124 JUMPIF                           R8 ; [+3]
      125 GETUPVAL                         R9 2
      126 GETTABLEKS                       R8 R9 K26 ["GRID_BOX_BACKGROUND_COLOR3"]
      128 SETTABLEKS                       R8 R7 K25 ["BackgroundColor3"]
      130 GETTABLEKS                       R8 R0 K19 ["BackgroundTransparency"]
      132 JUMPIF                           R8 ; [+3]
      133 GETUPVAL                         R9 2
      134 GETTABLEKS                       R8 R9 K27 ["GRID_BOX_BACKGROUND_TRANSPARENCY"]
      136 SETTABLEKS                       R8 R7 K19 ["BackgroundTransparency"]
      138 GETTABLEKS                       R8 R0 K28 ["BorderColor3"]
      140 JUMPIF                           R8 ; [+3]
      141 GETUPVAL                         R9 2
      142 GETTABLEKS                       R8 R9 K29 ["GRID_BOX_BORDER_COLOR3"]
      144 SETTABLEKS                       R8 R7 K28 ["BorderColor3"]
      146 GETTABLEKS                       R8 R0 K30 ["BorderThickness"]
      148 JUMPIF                           R8 ; [+3]
      149 GETUPVAL                         R9 2
      150 GETTABLEKS                       R8 R9 K31 ["GRID_BOX_BORDER_THICKNESS"]
      152 SETTABLEKS                       R8 R7 K20 ["BorderSizePixel"]
      154 GETTABLEKS                       R8 R0 K21 ["ZIndex"]
      156 SETTABLEKS                       R8 R7 K21 ["ZIndex"]
      158 GETUPVAL                         R9 0
      159 GETTABLEKS                       R8 R9 K22 ["Tag"]
      161 GETTABLEKS                       R9 R0 K22 ["Tag"]
      163 SETTABLE                         R9 R7 R8
      164 GETTABLEKS                       R8 R0 K23 ["children"]
      166 CALL                             R5 3 -1
      167 RETURN                           R5 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["CanvasContext"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R6 K10 ["StyleUtil"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Types"]
       30 CALL                             R5 1 1
       31 DUPCLOSURE                       R6 K12 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 SETGLOBAL                        R6 K13 ["Panel"]
       37 GETGLOBAL                        R6 K13 ["Panel"]
       39 RETURN                           R6 1
