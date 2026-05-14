PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["isRectInViewport"]
        7 GETTABLEKS                       R3 R0 K2 ["Rect"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R1 K3 ["plotToView"]
       12 GETTABLEKS                       R4 R0 K2 ["Rect"]
       14 GETTABLEKS                       R4 R4 K4 ["Min"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R1 K3 ["plotToView"]
       19 GETTABLEKS                       R5 R0 K2 ["Rect"]
       21 GETTABLEKS                       R5 R5 K5 ["Max"]
       23 CALL                             R4 1 1
       24 JUMPIF                           R2 ; [+2]
       25 LOADNIL                          R5
       26 RETURN                           R5 1
       27 GETTABLEKS                       R5 R0 K6 ["Image"]
       29 JUMPIFNOT                        R5 ; [+58]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K7 ["createElement"]
       33 LOADK                            R6 K8 ["ImageLabel"]
       34 NEWTABLE                         R7 8 0
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
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K21 ["Tag"]
       81 GETTABLEKS                       R9 R0 K21 ["Tag"]
       83 SETTABLE                         R9 R7 R8
       84 GETTABLEKS                       R8 R0 K22 ["children"]
       86 CALL                             R5 3 -1
       87 RETURN                           R5 -1
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K7 ["createElement"]
       91 LOADK                            R6 K23 ["Frame"]
       92 NEWTABLE                         R7 8 0
       94 GETIMPORT                        R8 K11 [UDim2.fromScale]
       96 GETTABLEKS                       R9 R3 K12 ["X"]
       98 GETTABLEKS                       R10 R3 K13 ["Y"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K14 ["Position"]
      103 GETIMPORT                        R8 K11 [UDim2.fromScale]
      105 GETTABLEKS                       R10 R4 K12 ["X"]
      107 GETTABLEKS                       R11 R3 K12 ["X"]
      109 SUB                              R9 R10 R11
      110 GETTABLEKS                       R11 R4 K13 ["Y"]
      112 GETTABLEKS                       R12 R3 K13 ["Y"]
      114 SUB                              R10 R11 R12
      115 CALL                             R8 2 1
      116 SETTABLEKS                       R8 R7 K15 ["Size"]
      118 GETTABLEKS                       R8 R0 K24 ["BackgroundColor3"]
      120 JUMPIF                           R8 ; [+3]
      121 GETUPVAL                         R8 2
      122 GETTABLEKS                       R8 R8 K25 ["GRID_BOX_BACKGROUND_COLOR3"]
      124 SETTABLEKS                       R8 R7 K24 ["BackgroundColor3"]
      126 GETTABLEKS                       R8 R0 K19 ["BackgroundTransparency"]
      128 JUMPIF                           R8 ; [+3]
      129 GETUPVAL                         R8 2
      130 GETTABLEKS                       R8 R8 K26 ["GRID_BOX_BACKGROUND_TRANSPARENCY"]
      132 SETTABLEKS                       R8 R7 K19 ["BackgroundTransparency"]
      134 GETTABLEKS                       R8 R0 K27 ["BorderColor3"]
      136 JUMPIF                           R8 ; [+3]
      137 GETUPVAL                         R8 2
      138 GETTABLEKS                       R8 R8 K28 ["GRID_BOX_BORDER_COLOR3"]
      140 SETTABLEKS                       R8 R7 K27 ["BorderColor3"]
      142 GETTABLEKS                       R8 R0 K29 ["BorderThickness"]
      144 JUMPIF                           R8 ; [+3]
      145 GETUPVAL                         R8 2
      146 GETTABLEKS                       R8 R8 K30 ["GRID_BOX_BORDER_THICKNESS"]
      148 SETTABLEKS                       R8 R7 K20 ["BorderSizePixel"]
      150 GETUPVAL                         R8 0
      151 GETTABLEKS                       R8 R8 K21 ["Tag"]
      153 GETTABLEKS                       R9 R0 K21 ["Tag"]
      155 SETTABLE                         R9 R7 R8
      156 GETTABLEKS                       R8 R0 K22 ["children"]
      158 CALL                             R5 3 -1
      159 RETURN                           R5 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["StyleUtil"]
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
