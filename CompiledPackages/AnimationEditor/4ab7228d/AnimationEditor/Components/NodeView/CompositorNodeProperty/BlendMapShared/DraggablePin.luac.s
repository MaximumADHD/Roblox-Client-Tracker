PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getStepFromSpread"]
        3 SUB                              R4 R2 R1
        4 CALL                             R3 1 1
        5 DIV                              R6 R1 R3
        6 FASTCALL1                        MATH_CEIL R6 ; [+2]
        7 GETIMPORT                        R5 K3 [math.ceil]
        9 CALL                             R5 1 1
       10 MUL                              R4 R5 R3
       11 DIV                              R7 R2 R3
       12 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       13 GETIMPORT                        R6 K5 [math.floor]
       15 CALL                             R6 1 1
       16 MUL                              R5 R6 R3
       17 ADD                              R7 R1 R4
       18 DIVK                             R6 R7 K6 [2]
       19 JUMPIFNOTLT                      R0 R6 ; [+2]
       21 RETURN                           R1 1
       22 ADD                              R7 R2 R5
       23 DIVK                             R6 R7 K6 [2]
       24 JUMPIFNOTLT                      R6 R0 ; [+2]
       26 RETURN                           R2 1
       27 DIV                              R9 R0 R3
       28 FASTCALL1                        MATH_ROUND R9 ; [+2]
       29 GETIMPORT                        R8 K8 [math.round]
       31 CALL                             R8 1 1
       32 MUL                              R7 R8 R3
       33 FASTCALL3                        MATH_CLAMP R7 R1 R2
       35 MOVE                             R8 R1
       36 MOVE                             R9 R2
       37 GETIMPORT                        R6 K10 [math.clamp]
       39 CALL                             R6 3 1
       40 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Mode"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["DRAGGABLE_PIN_MODES"]
        6 GETTABLEKS                       R2 R3 K2 ["Blend1D"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+25]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R2 R0 K3 ["X"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K4 ["Extents"]
       16 GETTABLEKS                       R4 R5 K5 ["Min"]
       18 GETTABLEKS                       R3 R4 K3 ["X"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K4 ["Extents"]
       23 GETTABLEKS                       R5 R6 K6 ["Max"]
       25 GETTABLEKS                       R4 R5 K3 ["X"]
       27 CALL                             R1 3 1
       28 GETIMPORT                        R2 K9 [Vector2.new]
       30 MOVE                             R3 R1
       31 LOADN                            R4 0
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R1 R2 K0 ["Mode"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K1 ["DRAGGABLE_PIN_MODES"]
       40 GETTABLEKS                       R2 R3 K10 ["Blend2D"]
       42 JUMPIFNOTEQ                      R1 R2 ; [+73]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R1 R2 K11 ["InputMode"]
       47 GETIMPORT                        R2 K15 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       49 JUMPIFNOTEQ                      R1 R2 ; [+43]
       51 GETUPVAL                         R1 2
       52 GETTABLEKS                       R2 R0 K3 ["X"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K4 ["Extents"]
       57 GETTABLEKS                       R4 R5 K5 ["Min"]
       59 GETTABLEKS                       R3 R4 K3 ["X"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R6 R7 K4 ["Extents"]
       64 GETTABLEKS                       R5 R6 K6 ["Max"]
       66 GETTABLEKS                       R4 R5 K3 ["X"]
       68 CALL                             R1 3 1
       69 GETUPVAL                         R2 2
       70 GETTABLEKS                       R3 R0 K16 ["Y"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R6 R7 K4 ["Extents"]
       75 GETTABLEKS                       R5 R6 K5 ["Min"]
       77 GETTABLEKS                       R4 R5 K16 ["Y"]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R7 R8 K4 ["Extents"]
       82 GETTABLEKS                       R6 R7 K6 ["Max"]
       84 GETTABLEKS                       R5 R6 K16 ["Y"]
       86 CALL                             R2 3 1
       87 GETIMPORT                        R3 K9 [Vector2.new]
       89 MOVE                             R4 R1
       90 MOVE                             R5 R2
       91 CALL                             R3 2 -1
       92 RETURN                           R3 -1
       93 GETUPVAL                         R1 2
       94 GETTABLEKS                       R2 R0 K16 ["Y"]
       96 LOADN                            R3 0
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R5 R6 K18 ["MaxRadius"]
      100 ORK                              R4 R5 K17 [1]
      101 CALL                             R1 3 1
      102 GETTABLEKS                       R5 R0 K3 ["X"]
      104 DIVK                             R4 R5 K19 [0.785398163397448]
      105 FASTCALL1                        MATH_ROUND R4 ; [+2]
      106 GETIMPORT                        R3 K22 [math.round]
      108 CALL                             R3 1 1
      109 MULK                             R2 R3 K19 [0.785398163397448]
      110 GETIMPORT                        R3 K9 [Vector2.new]
      112 MOVE                             R4 R2
      113 MOVE                             R5 R1
      114 CALL                             R3 2 -1
      115 RETURN                           R3 -1
      116 GETIMPORT                        R1 K24 [error]
      118 LOADK                            R3 K25 ["Unknown DraggablePin mode: "]
      119 GETUPVAL                         R6 0
      120 GETTABLEKS                       R5 R6 K0 ["Mode"]
      122 FASTCALL1                        TOSTRING R5 ; [+2]
      123 GETIMPORT                        R4 K27 [tostring]
      125 CALL                             R4 1 1
      126 CONCAT                           R2 R3 R4
      127 CALL                             R1 1 0
      128 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Mode"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["DRAGGABLE_PIN_MODES"]
        6 GETTABLEKS                       R2 R3 K2 ["Blend1D"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+39]
       10 GETTABLEKS                       R3 R0 K3 ["X"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K4 ["AbsolutePositionRef"]
       15 GETTABLEKS                       R5 R6 K5 ["current"]
       17 GETTABLEKS                       R4 R5 K3 ["X"]
       19 SUB                              R2 R3 R4
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K6 ["AbsoluteSizeRef"]
       23 GETTABLEKS                       R4 R5 K5 ["current"]
       25 GETTABLEKS                       R3 R4 K3 ["X"]
       27 DIV                              R1 R2 R3
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K7 ["GraphRect"]
       31 GETTABLEKS                       R4 R5 K8 ["Min"]
       33 GETTABLEKS                       R3 R4 K3 ["X"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K7 ["GraphRect"]
       38 GETTABLEKS                       R5 R6 K9 ["Width"]
       40 MUL                              R4 R1 R5
       41 ADD                              R2 R3 R4
       42 GETIMPORT                        R3 K12 [Vector2.new]
       44 MOVE                             R4 R2
       45 LOADN                            R5 0
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K0 ["Mode"]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R3 R4 K1 ["DRAGGABLE_PIN_MODES"]
       54 GETTABLEKS                       R2 R3 K13 ["Blend2D"]
       56 JUMPIFNOTEQ                      R1 R2 ; [+100]
       58 GETIMPORT                        R1 K12 [Vector2.new]
       60 GETTABLEKS                       R4 R0 K3 ["X"]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R7 R8 K4 ["AbsolutePositionRef"]
       65 GETTABLEKS                       R6 R7 K5 ["current"]
       67 GETTABLEKS                       R5 R6 K3 ["X"]
       69 SUB                              R3 R4 R5
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R6 R7 K6 ["AbsoluteSizeRef"]
       73 GETTABLEKS                       R5 R6 K5 ["current"]
       75 GETTABLEKS                       R4 R5 K3 ["X"]
       77 DIV                              R2 R3 R4
       78 GETTABLEKS                       R5 R0 K14 ["Y"]
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R8 R9 K4 ["AbsolutePositionRef"]
       83 GETTABLEKS                       R7 R8 K5 ["current"]
       85 GETTABLEKS                       R6 R7 K14 ["Y"]
       87 SUB                              R4 R5 R6
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R7 R8 K6 ["AbsoluteSizeRef"]
       91 GETTABLEKS                       R6 R7 K5 ["current"]
       93 GETTABLEKS                       R5 R6 K14 ["Y"]
       95 DIV                              R3 R4 R5
       96 CALL                             R1 2 1
       97 GETIMPORT                        R2 K12 [Vector2.new]
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R6 R7 K7 ["GraphRect"]
      102 GETTABLEKS                       R5 R6 K8 ["Min"]
      104 GETTABLEKS                       R4 R5 K3 ["X"]
      106 GETTABLEKS                       R6 R1 K3 ["X"]
      108 GETUPVAL                         R9 0
      109 GETTABLEKS                       R8 R9 K7 ["GraphRect"]
      111 GETTABLEKS                       R7 R8 K9 ["Width"]
      113 MUL                              R5 R6 R7
      114 ADD                              R3 R4 R5
      115 GETUPVAL                         R8 0
      116 GETTABLEKS                       R7 R8 K7 ["GraphRect"]
      118 GETTABLEKS                       R6 R7 K15 ["Max"]
      120 GETTABLEKS                       R5 R6 K14 ["Y"]
      122 GETTABLEKS                       R7 R1 K14 ["Y"]
      124 GETUPVAL                         R10 0
      125 GETTABLEKS                       R9 R10 K7 ["GraphRect"]
      127 GETTABLEKS                       R8 R9 K16 ["Height"]
      129 MUL                              R6 R7 R8
      130 SUB                              R4 R5 R6
      131 CALL                             R2 2 1
      132 GETUPVAL                         R4 0
      133 GETTABLEKS                       R3 R4 K17 ["InputMode"]
      135 GETIMPORT                        R4 K21 [Enum.AnimationNodeBlend2DInputMode.Polar]
      137 JUMPIFNOTEQ                      R3 R4 ; [+18]
      139 GETTABLEKS                       R3 R2 K22 ["Magnitude"]
      141 GETTABLEKS                       R5 R2 K3 ["X"]
      143 GETTABLEKS                       R6 R2 K14 ["Y"]
      145 FASTCALL2                        MATH_ATAN2 R5 R6 ; [+3]
      147 GETIMPORT                        R4 K25 [math.atan2]
      149 CALL                             R4 2 1
      150 GETIMPORT                        R5 K12 [Vector2.new]
      152 MINUS                            R6 R4
      153 MOVE                             R7 R3
      154 CALL                             R5 2 1
      155 MOVE                             R2 R5
      156 RETURN                           R2 1
      157 GETIMPORT                        R1 K27 [error]
      159 LOADK                            R3 K28 ["Unknown DraggablePin mode: "]
      160 GETUPVAL                         R6 0
      161 GETTABLEKS                       R5 R6 K0 ["Mode"]
      163 FASTCALL1                        TOSTRING R5 ; [+2]
      164 GETIMPORT                        R4 K30 [tostring]
      166 CALL                             R4 1 1
      167 CONCAT                           R2 R3 R4
      168 CALL                             R1 1 0
      169 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Mode"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["DRAGGABLE_PIN_MODES"]
        6 GETTABLEKS                       R1 R2 K2 ["Blend1D"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+22]
       10 GETIMPORT                        R0 K5 [Vector2.new]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K7 ["Extents"]
       15 GETTABLEKS                       R4 R5 K8 ["Min"]
       17 GETTABLEKS                       R3 R4 K9 ["X"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["Extents"]
       22 GETTABLEKS                       R5 R6 K10 ["Max"]
       24 GETTABLEKS                       R4 R5 K9 ["X"]
       26 ADD                              R2 R3 R4
       27 DIVK                             R1 R2 K6 [2]
       28 LOADN                            R2 0
       29 CALL                             R0 2 -1
       30 RETURN                           R0 -1
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R0 R1 K0 ["Mode"]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R2 R3 K1 ["DRAGGABLE_PIN_MODES"]
       37 GETTABLEKS                       R1 R2 K11 ["Blend2D"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+26]
       41 GETUPVAL                         R0 2
       42 JUMPIFNOT                        R0 ; [+20]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R0 R1 K12 ["InputMode"]
       46 GETIMPORT                        R1 K16 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       48 JUMPIFNOTEQ                      R0 R1 ; [+14]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R3 R4 K7 ["Extents"]
       53 GETTABLEKS                       R2 R3 K8 ["Min"]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R4 R5 K7 ["Extents"]
       58 GETTABLEKS                       R3 R4 K10 ["Max"]
       60 ADD                              R1 R2 R3
       61 DIVK                             R0 R1 K6 [2]
       62 RETURN                           R0 1
       63 GETIMPORT                        R0 K18 [Vector2.zero]
       65 RETURN                           R0 1
       66 GETIMPORT                        R0 K20 [error]
       68 LOADK                            R2 K21 ["Unknown DraggablePin mode: "]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K0 ["Mode"]
       72 FASTCALL1                        TOSTRING R4 ; [+2]
       73 GETIMPORT                        R3 K23 [tostring]
       75 CALL                             R3 1 1
       76 CONCAT                           R1 R2 R3
       77 CALL                             R0 1 0
       78 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Snapping"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 MOVE                             R2 R3
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["OnPinDragged"]
       14 JUMPIFNOT                        R3 ; [+8]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K1 ["OnPinDragged"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K2 ["Index"]
       21 MOVE                             R5 R2
       22 CALL                             R3 2 0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K3 ["InputMode"]
       26 GETIMPORT                        R4 K7 [Enum.AnimationNodeBlend2DInputMode.Polar]
       28 JUMPIFNOTEQ                      R3 R4 ; [+7]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R3 R4 K8 ["toCartesian"]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 1
       35 MOVE                             R2 R3
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R3 R4 K9 ["LockExtents"]
       39 LOADB                            R4 1
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 4
       42 MOVE                             R4 R2
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["LockExtents"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 LOADNIL                          R3
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R5 0 5
       14 GETTABLEKS                       R6 R0 K2 ["Mode"]
       16 GETTABLEKS                       R7 R0 K3 ["InputMode"]
       18 GETTABLEKS                       R8 R0 K4 ["MaxRadius"]
       20 GETTABLEKS                       R10 R0 K5 ["Extents"]
       22 GETTABLEKS                       R9 R10 K6 ["Width"]
       24 GETTABLEKS                       R11 R0 K5 ["Extents"]
       26 GETTABLEKS                       R10 R11 K7 ["Height"]
       28 SETLIST                          R5 R6 5 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U1
       37 NEWTABLE                         R6 0 5
       39 GETTABLEKS                       R7 R0 K2 ["Mode"]
       41 GETTABLEKS                       R9 R0 K8 ["AbsoluteSizeRef"]
       43 GETTABLEKS                       R8 R9 K9 ["current"]
       45 GETTABLEKS                       R10 R0 K10 ["AbsolutePositionRef"]
       47 GETTABLEKS                       R9 R10 K9 ["current"]
       49 GETTABLEKS                       R10 R0 K11 ["GraphRect"]
       51 GETTABLEKS                       R11 R0 K3 ["InputMode"]
       53 SETLIST                          R6 R7 5 [1]
       55 CALL                             R4 2 1
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R5 R6 K12 ["useMemo"]
       59 NEWCLOSURE                       R6 P2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R1
       63 NEWTABLE                         R7 0 3
       65 GETTABLEKS                       R8 R0 K3 ["InputMode"]
       67 MOVE                             R9 R1
       68 GETTABLEKS                       R10 R0 K5 ["Extents"]
       70 SETLIST                          R7 R8 3 [1]
       72 CALL                             R5 2 1
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R6 R7 K1 ["useCallback"]
       76 NEWCLOSURE                       R7 P3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R3
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R2
       82 NEWTABLE                         R8 0 6
       84 MOVE                             R9 R4
       85 GETTABLEKS                       R10 R0 K13 ["Index"]
       87 GETTABLEKS                       R11 R0 K14 ["OnPinDragged"]
       89 GETTABLEKS                       R12 R0 K3 ["InputMode"]
       91 GETTABLEKS                       R13 R0 K15 ["LockExtents"]
       93 GETTABLEKS                       R14 R0 K16 ["Snapping"]
       95 SETLIST                          R8 R9 6 [1]
       97 CALL                             R6 2 1
       98 GETUPVAL                         R8 0
       99 GETTABLEKS                       R7 R8 K1 ["useCallback"]
      101 NEWCLOSURE                       R8 P4
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R2
      104 NEWTABLE                         R9 0 1
      106 GETTABLEKS                       R10 R0 K15 ["LockExtents"]
      108 SETLIST                          R9 R10 1 [1]
      110 CALL                             R7 2 1
      111 LOADK                            R9 K17 ["Point_"]
      112 GETTABLEKS                       R11 R0 K13 ["Index"]
      114 FASTCALL1                        TOSTRING R11 ; [+2]
      115 GETIMPORT                        R10 K19 [tostring]
      117 CALL                             R10 1 1
      118 CONCAT                           R8 R9 R10
      119 GETUPVAL                         R10 0
      120 GETTABLEKS                       R9 R10 K20 ["createElement"]
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R10 R11 K21 ["Fragment"]
      125 NEWTABLE                         R11 0 0
      127 NEWTABLE                         R12 2 0
      129 GETTABLEKS                       R14 R0 K22 ["Position"]
      131 JUMPIFNOT                        R14 ; [+67]
      132 GETUPVAL                         R14 0
      133 GETTABLEKS                       R13 R14 K20 ["createElement"]
      135 GETUPVAL                         R15 4
      136 GETTABLEKS                       R14 R15 K23 ["Point"]
      138 DUPTABLE                         R15 K29 [{"Position", "Size", "ZIndex", "Color3", "Transparency", "Tag"}]
      139 JUMPIFNOT                        R1 ; [+2]
      140 MOVE                             R16 R5
      141 JUMP                             ; [+2]
      142 GETTABLEKS                       R16 R0 K22 ["Position"]
      144 SETTABLEKS                       R16 R15 K22 ["Position"]
      146 LOADN                            R16 12
      147 SETTABLEKS                       R16 R15 K24 ["Size"]
      149 GETTABLEKS                       R16 R0 K25 ["ZIndex"]
      151 SETTABLEKS                       R16 R15 K25 ["ZIndex"]
      153 GETTABLEKS                       R16 R0 K26 ["Color3"]
      155 SETTABLEKS                       R16 R15 K26 ["Color3"]
      157 JUMPIFNOT                        R1 ; [+2]
      158 LOADN                            R16 1
      159 JUMP                             ; [+1]
      160 LOADN                            R16 0
      161 SETTABLEKS                       R16 R15 K27 ["Transparency"]
      163 LOADK                            R17 K30 ["data-testid=%*"]
      164 MOVE                             R19 R8
      165 NAMECALL                         R17 R17 K31 ["format"]
      167 CALL                             R17 2 1
      168 MOVE                             R16 R17
      169 SETTABLEKS                       R16 R15 K28 ["Tag"]
      171 DUPTABLE                         R16 K33 [{"DragDetector"}]
      172 GETUPVAL                         R18 0
      173 GETTABLEKS                       R17 R18 K20 ["createElement"]
      175 LOADK                            R18 K34 ["UIDragDetector"]
      176 NEWTABLE                         R19 4 0
      178 GETIMPORT                        R20 K38 [Enum.UIDragDetectorDragStyle.Scriptable]
      180 SETTABLEKS                       R20 R19 K39 ["DragStyle"]
      182 GETUPVAL                         R22 0
      183 GETTABLEKS                       R21 R22 K40 ["Event"]
      185 GETTABLEKS                       R20 R21 K41 ["DragContinue"]
      187 SETTABLE                         R6 R19 R20
      188 GETUPVAL                         R22 0
      189 GETTABLEKS                       R21 R22 K40 ["Event"]
      191 GETTABLEKS                       R20 R21 K42 ["DragEnd"]
      193 SETTABLE                         R7 R19 R20
      194 CALL                             R17 2 1
      195 SETTABLEKS                       R17 R16 K32 ["DragDetector"]
      197 CALL                             R13 3 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R13
      200 SETTABLE                         R13 R12 R8
      201 LOADK                            R14 K43 ["PreviewPoint_"]
      202 GETTABLEKS                       R16 R0 K13 ["Index"]
      204 FASTCALL1                        TOSTRING R16 ; [+2]
      205 GETIMPORT                        R15 K19 [tostring]
      207 CALL                             R15 1 1
      208 CONCAT                           R13 R14 R15
      209 JUMPIFNOT                        R1 ; [+22]
      210 GETUPVAL                         R15 0
      211 GETTABLEKS                       R14 R15 K20 ["createElement"]
      213 GETUPVAL                         R16 4
      214 GETTABLEKS                       R15 R16 K23 ["Point"]
      216 DUPTABLE                         R16 K44 [{"Position", "Size", "ZIndex", "Color3"}]
      217 SETTABLEKS                       R1 R16 K22 ["Position"]
      219 LOADN                            R17 12
      220 SETTABLEKS                       R17 R16 K24 ["Size"]
      222 GETTABLEKS                       R17 R0 K25 ["ZIndex"]
      224 SETTABLEKS                       R17 R16 K25 ["ZIndex"]
      226 GETTABLEKS                       R17 R0 K26 ["Color3"]
      228 SETTABLEKS                       R17 R16 K26 ["Color3"]
      230 CALL                             R14 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R14
      233 SETTABLE                         R14 R12 R13
      234 CALL                             R9 3 -1
      235 RETURN                           R9 -1

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
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K12 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R5 K13 ["PropertyUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Parent"]
       36 GETTABLEKS                       R5 R6 K14 ["React"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K15 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 DUPCLOSURE                       R6 K16 [PROTO_6]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
