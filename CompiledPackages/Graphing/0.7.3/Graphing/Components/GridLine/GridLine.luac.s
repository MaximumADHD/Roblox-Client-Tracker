PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OppositeAxisBounds"]
        3 JUMPIFNOT                        R0 ; [+56]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["Orientation"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["ORIENTATION_VERTICAL"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+25]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K3 ["isRectInViewport"]
       15 GETIMPORT                        R1 K6 [Rect.new]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K7 ["Position"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       23 GETTABLEKS                       R3 R4 K8 ["Min"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K7 ["Position"]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K0 ["OppositeAxisBounds"]
       31 GETTABLEKS                       R5 R6 K9 ["Max"]
       33 CALL                             R1 4 -1
       34 CALL                             R0 -1 1
       35 RETURN                           R0 1
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R0 R1 K3 ["isRectInViewport"]
       39 GETIMPORT                        R1 K6 [Rect.new]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K0 ["OppositeAxisBounds"]
       44 GETTABLEKS                       R2 R3 K8 ["Min"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K7 ["Position"]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K0 ["OppositeAxisBounds"]
       52 GETTABLEKS                       R4 R5 K9 ["Max"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K7 ["Position"]
       57 CALL                             R1 4 -1
       58 CALL                             R0 -1 1
       59 RETURN                           R0 1
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R1 R2 K1 ["Orientation"]
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R2 R3 K2 ["ORIENTATION_VERTICAL"]
       66 JUMPIFNOTEQ                      R1 R2 ; [+9]
       68 GETUPVAL                         R1 2
       69 GETTABLEKS                       R0 R1 K10 ["isPointInViewportX"]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R1 R2 K7 ["Position"]
       74 CALL                             R0 1 1
       75 RETURN                           R0 1
       76 GETUPVAL                         R1 2
       77 GETTABLEKS                       R0 R1 K11 ["isPointInViewportY"]
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R1 R2 K7 ["Position"]
       82 CALL                             R0 1 1
       83 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Orientation"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["ORIENTATION_VERTICAL"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+9]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["plotToViewX"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K3 ["Position"]
       14 CALL                             R0 1 1
       15 RETURN                           R0 1
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R0 R1 K4 ["plotToViewY"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K3 ["Position"]
       22 CALL                             R0 1 1
       23 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OppositeAxisBounds"]
        3 JUMPIF                           R0 ; [+3]
        4 LOADN                            R0 0
        5 LOADN                            R1 1
        6 RETURN                           R0 2
        7 LOADN                            R0 0
        8 LOADN                            R1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K1 ["Orientation"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["ORIENTATION_VERTICAL"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+22]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K3 ["plotToViewY"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       23 GETTABLEKS                       R3 R4 K4 ["Min"]
       25 CALL                             R2 1 1
       26 MOVE                             R0 R2
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R2 R3 K3 ["plotToViewY"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       33 GETTABLEKS                       R3 R4 K5 ["Max"]
       35 CALL                             R2 1 1
       36 MOVE                             R1 R2
       37 RETURN                           R0 2
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R2 R3 K1 ["Orientation"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K6 ["ORIENTATION_HORIZONTAL"]
       44 JUMPIFNOTEQ                      R2 R3 ; [+21]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K7 ["plotToViewX"]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       52 GETTABLEKS                       R3 R4 K4 ["Min"]
       54 CALL                             R2 1 1
       55 MOVE                             R0 R2
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R2 R3 K7 ["plotToViewX"]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       62 GETTABLEKS                       R3 R4 K5 ["Max"]
       64 CALL                             R2 1 1
       65 MOVE                             R1 R2
       66 RETURN                           R0 2

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 LOADB                            R3 1
        6 GETTABLEKS                       R4 R0 K1 ["Orientation"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K2 ["ORIENTATION_VERTICAL"]
       11 JUMPIFEQ                         R4 R5 ; [+10]
       13 GETTABLEKS                       R4 R0 K1 ["Orientation"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K3 ["ORIENTATION_HORIZONTAL"]
       18 JUMPIFEQ                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 LOADK                            R5 K4 ["Invalid orientation %*"]
       23 GETTABLEKS                       R7 R0 K1 ["Orientation"]
       25 NAMECALL                         R5 R5 K5 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 FASTCALL2                        ASSERT R3 R4 ; [+3]
       31 GETIMPORT                        R2 K7 [assert]
       33 CALL                             R2 2 0
       34 GETTABLEKS                       R2 R0 K8 ["Color3"]
       36 JUMPIF                           R2 ; [+3]
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R2 R3 K9 ["GRID_LINE_COLOR3"]
       40 GETTABLEKS                       R3 R0 K10 ["Transparency"]
       42 JUMPIF                           R3 ; [+3]
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R3 R4 K11 ["GRID_LINE_TRANSPARENCY"]
       46 GETTABLEKS                       R4 R0 K12 ["Thickness"]
       48 JUMPIF                           R4 ; [+3]
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R4 R5 K13 ["GRID_LINE_THICKNESS"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R5 R6 K14 ["useMemo"]
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R1
       59 NEWTABLE                         R7 0 4
       61 MOVE                             R8 R1
       62 GETTABLEKS                       R9 R0 K1 ["Orientation"]
       64 GETTABLEKS                       R10 R0 K15 ["Position"]
       66 GETTABLEKS                       R11 R0 K16 ["OppositeAxisBounds"]
       68 SETLIST                          R7 R8 4 [1]
       70 CALL                             R5 2 1
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R6 R7 K14 ["useMemo"]
       74 NEWCLOSURE                       R7 P1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R1
       78 NEWTABLE                         R8 0 3
       80 MOVE                             R9 R1
       81 GETTABLEKS                       R10 R0 K1 ["Orientation"]
       83 GETTABLEKS                       R11 R0 K15 ["Position"]
       85 SETLIST                          R8 R9 3 [1]
       87 CALL                             R6 2 1
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R7 R8 K14 ["useMemo"]
       91 NEWCLOSURE                       R8 P2
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R1
       95 NEWTABLE                         R9 0 3
       97 MOVE                             R10 R1
       98 GETTABLEKS                       R11 R0 K1 ["Orientation"]
      100 GETTABLEKS                       R12 R0 K16 ["OppositeAxisBounds"]
      102 SETLIST                          R9 R10 3 [1]
      104 CALL                             R7 2 2
      105 GETTABLEKS                       R10 R0 K1 ["Orientation"]
      107 GETUPVAL                         R12 2
      108 GETTABLEKS                       R11 R12 K2 ["ORIENTATION_VERTICAL"]
      110 JUMPIFNOTEQ                      R10 R11 ; [+8]
      112 GETIMPORT                        R9 K19 [UDim2.fromScale]
      114 MOVE                             R10 R6
      115 ADD                              R12 R7 R8
      116 DIVK                             R11 R12 K20 [2]
      117 CALL                             R9 2 1
      118 JUMP                             ; [+6]
      119 GETIMPORT                        R9 K19 [UDim2.fromScale]
      121 ADD                              R11 R7 R8
      122 DIVK                             R10 R11 K20 [2]
      123 MOVE                             R11 R6
      124 CALL                             R9 2 1
      125 GETTABLEKS                       R11 R0 K1 ["Orientation"]
      127 GETUPVAL                         R13 2
      128 GETTABLEKS                       R12 R13 K2 ["ORIENTATION_VERTICAL"]
      130 JUMPIFNOTEQ                      R11 R12 ; [+9]
      132 GETIMPORT                        R10 K22 [UDim2.new]
      134 LOADN                            R11 0
      135 MOVE                             R12 R4
      136 SUB                              R13 R8 R7
      137 LOADN                            R14 0
      138 CALL                             R10 4 1
      139 JUMP                             ; [+7]
      140 GETIMPORT                        R10 K22 [UDim2.new]
      142 SUB                              R11 R8 R7
      143 LOADN                            R12 0
      144 LOADN                            R13 0
      145 MOVE                             R14 R4
      146 CALL                             R10 4 1
      147 MOVE                             R11 R5
      148 JUMPIFNOT                        R11 ; [+30]
      149 GETUPVAL                         R12 0
      150 GETTABLEKS                       R11 R12 K23 ["createElement"]
      152 LOADK                            R12 K24 ["Frame"]
      153 DUPTABLE                         R13 K31 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "ZIndex"}]
      154 GETIMPORT                        R14 K33 [Vector2.new]
      156 LOADK                            R15 K34 [0.5]
      157 LOADK                            R16 K34 [0.5]
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K25 ["AnchorPoint"]
      161 SETTABLEKS                       R9 R13 K15 ["Position"]
      163 SETTABLEKS                       R10 R13 K26 ["Size"]
      165 LOADN                            R14 0
      166 SETTABLEKS                       R14 R13 K27 ["BorderSizePixel"]
      168 SETTABLEKS                       R2 R13 K28 ["BackgroundColor3"]
      170 SETTABLEKS                       R3 R13 K29 ["BackgroundTransparency"]
      172 GETTABLEKS                       R14 R0 K30 ["ZIndex"]
      174 SETTABLEKS                       R14 R13 K30 ["ZIndex"]
      176 GETTABLEKS                       R14 R0 K35 ["children"]
      178 CALL                             R11 3 1
      179 RETURN                           R11 1

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
       31 DUPCLOSURE                       R6 K12 [PROTO_3]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 SETGLOBAL                        R6 K13 ["GridLine"]
       38 GETGLOBAL                        R6 K13 ["GridLine"]
       40 RETURN                           R6 1
