PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["observeZoomRatio"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFEQKNIL                     R1 ; [+4]
       12 LOADN                            R3 0
       13 JUMPIFNOTLE                      R2 R3 ; [+3]
       15 LOADN                            R3 0
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R1 K2 ["X"]
       19 DIV                              R3 R4 R2
       20 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 LOADB                            R2 0
       11 JUMPIFEQKNIL                     R1 ; [+14]
       13 LOADB                            R2 0
       14 GETTABLEKS                       R3 R1 K1 ["X"]
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R3 ; [+8]
       19 GETTABLEKS                       R3 R1 K2 ["Y"]
       21 LOADN                            R4 0
       22 JUMPIFLT                         R4 R3 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeZoomRatio"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADN                            R2 0
        6 JUMPIFNOTLE                      R1 R2 ; [+3]
        8 LOADN                            R2 1
        9 RETURN                           R2 1
       10 DIVRK                            R2 K1 [1] R1
       11 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeZoomRatio"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 SUBRK                            R3 K2 [0.6] R1
        6 DIVK                             R2 R3 K1 [0.4]
        7 LOADN                            R5 0
        8 LOADN                            R6 1
        9 FASTCALL3                        MATH_CLAMP R2 R5 R6
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K5 [math.clamp]
       14 CALL                             R3 3 1
       15 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputMode"]
        3 GETIMPORT                        R1 K4 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
        5 JUMPIFNOTEQ                      R0 R1 ; [+8]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K5 ["Position"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K6 ["Pins"]
       13 RETURN                           R0 2
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K7 ["toCartesian"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K5 ["Position"]
       20 JUMPIF                           R1 ; [+5]
       21 GETIMPORT                        R1 K10 [Vector2.new]
       23 LOADN                            R2 0
       24 LOADN                            R3 0
       25 CALL                             R1 2 1
       26 CALL                             R0 1 1
       27 NEWTABLE                         R1 0 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K6 ["Pins"]
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K7 ["toCartesian"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 1
       40 SETTABLE                         R7 R1 R5
       41 FORGLOOP                         R2 2 ; [-7]
       43 RETURN                           R0 2

PROTO_9:
        0 GETTABLEKS                       R5 R1 K0 ["Y"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 FASTCALL2                        MATH_MAX R0 R4 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K5 [math.max]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["MaxRadius"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["InputMode"]
        9 GETIMPORT                        R1 K5 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       11 JUMPIFNOTEQ                      R0 R1 ; [+3]
       13 LOADN                            R0 0
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K6 ["reduce"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K7 ["Pins"]
       21 DUPCLOSURE                       R2 K8 [PROTO_9]
       22 LOADN                            R3 0
       23 CALL                             R0 3 1
       24 JUMPIFNOTEQKN                    R0 K9 [0] ; [+2]
       26 LOADN                            R0 1
       27 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Extents"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["GraphRect"]
        8 RETURN                           R0 2
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+14]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K2 ["current"]
       16 GETTABLEKS                       R0 R0 K3 ["X"]
       18 JUMPIFEQKN                       R0 K4 [0] ; [+8]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K2 ["current"]
       23 GETTABLEKS                       R0 R0 K5 ["Y"]
       25 JUMPIFNOTEQKN                    R0 K4 [0] ; [+4]
       27 GETUPVAL                         R0 2
       28 GETUPVAL                         R1 2
       29 RETURN                           R0 2
       30 LOADNIL                          R0
       31 LOADNIL                          R1
       32 GETIMPORT                        R2 K8 [Vector2.new]
       34 LOADN                            R3 -1
       35 LOADN                            R4 -1
       36 CALL                             R2 2 1
       37 MOVE                             R0 R2
       38 GETIMPORT                        R2 K8 [Vector2.new]
       40 LOADN                            R3 1
       41 LOADN                            R4 1
       42 CALL                             R2 2 1
       43 MOVE                             R1 R2
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K9 ["InputMode"]
       47 GETIMPORT                        R3 K13 [Enum.AnimationNodeBlend2DInputMode.Polar]
       49 JUMPIFNOTEQ                      R2 R3 ; [+16]
       51 GETIMPORT                        R2 K8 [Vector2.new]
       53 GETUPVAL                         R4 4
       54 MINUS                            R3 R4
       55 GETUPVAL                         R5 4
       56 MINUS                            R4 R5
       57 CALL                             R2 2 1
       58 MOVE                             R0 R2
       59 GETIMPORT                        R2 K8 [Vector2.new]
       61 GETUPVAL                         R3 4
       62 GETUPVAL                         R4 4
       63 CALL                             R2 2 1
       64 MOVE                             R1 R2
       65 JUMP                             ; [+131]
       66 GETUPVAL                         R3 5
       67 LENGTH                           R2 R3
       68 LOADN                            R3 0
       69 JUMPIFNOTLT                      R3 R2 ; [+127]
       71 GETIMPORT                        R2 K8 [Vector2.new]
       73 LOADK                            R3 K14 [∞]
       74 LOADK                            R4 K14 [∞]
       75 CALL                             R2 2 1
       76 MOVE                             R0 R2
       77 GETIMPORT                        R2 K8 [Vector2.new]
       79 LOADK                            R3 K15 [-∞]
       80 LOADK                            R4 K15 [-∞]
       81 CALL                             R2 2 1
       82 MOVE                             R1 R2
       83 GETUPVAL                         R2 5
       84 LOADNIL                          R3
       85 LOADNIL                          R4
       86 FORGPREP                         R2
       87 GETIMPORT                        R7 K8 [Vector2.new]
       89 GETTABLEKS                       R9 R0 K3 ["X"]
       91 GETTABLEKS                       R10 R6 K3 ["X"]
       93 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       95 GETIMPORT                        R8 K18 [math.min]
       97 CALL                             R8 2 1
       98 GETTABLEKS                       R10 R0 K5 ["Y"]
      100 GETTABLEKS                       R11 R6 K5 ["Y"]
      102 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
      104 GETIMPORT                        R9 K18 [math.min]
      106 CALL                             R9 2 1
      107 CALL                             R7 2 1
      108 MOVE                             R0 R7
      109 GETIMPORT                        R7 K8 [Vector2.new]
      111 GETTABLEKS                       R9 R1 K3 ["X"]
      113 GETTABLEKS                       R10 R6 K3 ["X"]
      115 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      117 GETIMPORT                        R8 K20 [math.max]
      119 CALL                             R8 2 1
      120 GETTABLEKS                       R10 R1 K5 ["Y"]
      122 GETTABLEKS                       R11 R6 K5 ["Y"]
      124 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
      126 GETIMPORT                        R9 K20 [math.max]
      128 CALL                             R9 2 1
      129 CALL                             R7 2 1
      130 MOVE                             R1 R7
      131 FORGLOOP                         R2 2 ; [-45]
      133 GETTABLEKS                       R2 R0 K3 ["X"]
      135 GETTABLEKS                       R3 R1 K3 ["X"]
      137 JUMPIFNOTEQ                      R2 R3 ; [+27]
      139 GETIMPORT                        R2 K8 [Vector2.new]
      141 GETTABLEKS                       R4 R0 K3 ["X"]
      143 GETUPVAL                         R6 2
      144 GETTABLEKS                       R6 R6 K22 ["Width"]
      146 DIVK                             R5 R6 K21 [2]
      147 SUB                              R3 R4 R5
      148 GETTABLEKS                       R4 R0 K5 ["Y"]
      150 CALL                             R2 2 1
      151 MOVE                             R0 R2
      152 GETIMPORT                        R2 K8 [Vector2.new]
      154 GETTABLEKS                       R4 R1 K3 ["X"]
      156 GETUPVAL                         R6 2
      157 GETTABLEKS                       R6 R6 K22 ["Width"]
      159 DIVK                             R5 R6 K21 [2]
      160 ADD                              R3 R4 R5
      161 GETTABLEKS                       R4 R1 K5 ["Y"]
      163 CALL                             R2 2 1
      164 MOVE                             R1 R2
      165 GETTABLEKS                       R2 R0 K5 ["Y"]
      167 GETTABLEKS                       R3 R1 K5 ["Y"]
      169 JUMPIFNOTEQ                      R2 R3 ; [+27]
      171 GETIMPORT                        R2 K8 [Vector2.new]
      173 GETTABLEKS                       R3 R0 K3 ["X"]
      175 GETTABLEKS                       R5 R0 K5 ["Y"]
      177 GETUPVAL                         R7 2
      178 GETTABLEKS                       R7 R7 K23 ["Height"]
      180 DIVK                             R6 R7 K21 [2]
      181 SUB                              R4 R5 R6
      182 CALL                             R2 2 1
      183 MOVE                             R0 R2
      184 GETIMPORT                        R2 K8 [Vector2.new]
      186 GETTABLEKS                       R3 R1 K3 ["X"]
      188 GETTABLEKS                       R5 R1 K5 ["Y"]
      190 GETUPVAL                         R7 2
      191 GETTABLEKS                       R7 R7 K23 ["Height"]
      193 DIVK                             R6 R7 K21 [2]
      194 ADD                              R4 R5 R6
      195 CALL                             R2 2 1
      196 MOVE                             R1 R2
      197 ADD                              R3 R0 R1
      198 DIVK                             R2 R3 K21 [2]
      199 SUB                              R5 R1 R0
      200 GETUPVAL                         R7 1
      201 GETTABLEKS                       R7 R7 K2 ["current"]
      203 GETTABLEKS                       R7 R7 K3 ["X"]
      205 LOADN                            R9 2
      206 GETUPVAL                         R10 6
      207 MUL                              R8 R9 R10
      208 ADD                              R6 R7 R8
      209 MUL                              R4 R5 R6
      210 GETUPVAL                         R5 1
      211 GETTABLEKS                       R5 R5 K2 ["current"]
      213 GETTABLEKS                       R5 R5 K3 ["X"]
      215 DIV                              R3 R4 R5
      216 GETIMPORT                        R4 K25 [Rect.new]
      218 MOVE                             R5 R0
      219 MOVE                             R6 R1
      220 CALL                             R4 2 1
      221 GETIMPORT                        R5 K25 [Rect.new]
      223 DIVK                             R7 R3 K21 [2]
      224 SUB                              R6 R2 R7
      225 DIVK                             R8 R3 K21 [2]
      226 ADD                              R7 R2 R8
      227 CALL                             R5 2 -1
      228 RETURN                           R4 -1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K3 [{"Extents", "GraphRect", "MaxRadius"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["Extents"]
        6 GETUPVAL                         R3 2
        7 SETTABLEKS                       R3 R2 K1 ["GraphRect"]
        9 GETUPVAL                         R3 3
       10 SETTABLEKS                       R3 R2 K2 ["MaxRadius"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 LOADNIL                          R2
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 JUMPIF                           R2 ; [+3]
        8 GETIMPORT                        R2 K3 [Vector2.zero]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R4 R0 K4 ["X"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K0 ["current"]
       16 GETTABLEKS                       R5 R5 K4 ["X"]
       18 SUB                              R3 R4 R5
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["current"]
       22 GETTABLEKS                       R4 R4 K4 ["X"]
       24 DIV                              R2 R3 R4
       25 GETTABLEKS                       R5 R0 K5 ["Y"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K0 ["current"]
       30 GETTABLEKS                       R6 R6 K5 ["Y"]
       32 SUB                              R4 R5 R6
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["current"]
       36 GETTABLEKS                       R5 R5 K5 ["Y"]
       38 DIV                              R3 R4 R5
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K6 ["Min"]
       42 GETTABLEKS                       R5 R5 K4 ["X"]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K7 ["Width"]
       47 MUL                              R6 R2 R7
       48 ADD                              R4 R5 R6
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K8 ["Max"]
       52 GETTABLEKS                       R6 R6 K5 ["Y"]
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R8 R8 K9 ["Height"]
       57 MUL                              R7 R3 R8
       58 SUB                              R5 R6 R7
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R6 R6 K10 ["InputMode"]
       62 GETIMPORT                        R7 K14 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       64 JUMPIFNOTEQ                      R6 R7 ; [+79]
       66 GETUPVAL                         R6 4
       67 GETTABLEKS                       R6 R6 K15 ["isShiftPressed"]
       69 CALL                             R6 0 1
       70 JUMPIFNOT                        R6 ; [+32]
       71 GETUPVAL                         R6 5
       72 GETTABLEKS                       R6 R6 K16 ["roundStep"]
       74 MOVE                             R7 R4
       75 GETUPVAL                         R8 6
       76 GETTABLEKS                       R8 R8 K6 ["Min"]
       78 GETTABLEKS                       R8 R8 K4 ["X"]
       80 GETUPVAL                         R9 6
       81 GETTABLEKS                       R9 R9 K8 ["Max"]
       83 GETTABLEKS                       R9 R9 K4 ["X"]
       85 CALL                             R6 3 1
       86 MOVE                             R4 R6
       87 GETUPVAL                         R6 5
       88 GETTABLEKS                       R6 R6 K16 ["roundStep"]
       90 MOVE                             R7 R5
       91 GETUPVAL                         R8 6
       92 GETTABLEKS                       R8 R8 K6 ["Min"]
       94 GETTABLEKS                       R8 R8 K5 ["Y"]
       96 GETUPVAL                         R9 6
       97 GETTABLEKS                       R9 R9 K8 ["Max"]
       99 GETTABLEKS                       R9 R9 K5 ["Y"]
      101 CALL                             R6 3 1
      102 MOVE                             R5 R6
      103 JUMPIFNOT                        R1 ; [+34]
      104 GETUPVAL                         R8 6
      105 GETTABLEKS                       R8 R8 K6 ["Min"]
      107 GETTABLEKS                       R8 R8 K4 ["X"]
      109 GETUPVAL                         R9 6
      110 GETTABLEKS                       R9 R9 K8 ["Max"]
      112 GETTABLEKS                       R9 R9 K4 ["X"]
      114 FASTCALL3                        MATH_CLAMP R4 R8 R9
      116 MOVE                             R7 R4
      117 GETIMPORT                        R6 K19 [math.clamp]
      119 CALL                             R6 3 1
      120 MOVE                             R4 R6
      121 GETUPVAL                         R8 6
      122 GETTABLEKS                       R8 R8 K6 ["Min"]
      124 GETTABLEKS                       R8 R8 K5 ["Y"]
      126 GETUPVAL                         R9 6
      127 GETTABLEKS                       R9 R9 K8 ["Max"]
      129 GETTABLEKS                       R9 R9 K5 ["Y"]
      131 FASTCALL3                        MATH_CLAMP R5 R8 R9
      133 MOVE                             R7 R5
      134 GETIMPORT                        R6 K19 [math.clamp]
      136 CALL                             R6 3 1
      137 MOVE                             R5 R6
      138 GETIMPORT                        R6 K21 [Vector2.new]
      140 MOVE                             R7 R4
      141 MOVE                             R8 R5
      142 CALL                             R6 2 -1
      143 RETURN                           R6 -1
      144 GETUPVAL                         R6 3
      145 GETTABLEKS                       R6 R6 K10 ["InputMode"]
      147 GETIMPORT                        R7 K23 [Enum.AnimationNodeBlend2DInputMode.Polar]
      149 JUMPIFNOTEQ                      R6 R7 ; [+51]
      151 GETIMPORT                        R6 K21 [Vector2.new]
      153 MOVE                             R7 R4
      154 MOVE                             R8 R5
      155 CALL                             R6 2 1
      156 GETTABLEKS                       R6 R6 K24 ["Magnitude"]
      158 FASTCALL2                        MATH_ATAN2 R4 R5 ; [+5]
      160 MOVE                             R9 R4
      161 MOVE                             R10 R5
      162 GETIMPORT                        R8 K26 [math.atan2]
      164 CALL                             R8 2 1
      165 MINUS                            R7 R8
      166 GETUPVAL                         R8 4
      167 GETTABLEKS                       R8 R8 K15 ["isShiftPressed"]
      169 CALL                             R8 0 1
      170 JUMPIFNOT                        R8 ; [+14]
      171 GETUPVAL                         R8 5
      172 GETTABLEKS                       R8 R8 K16 ["roundStep"]
      174 MOVE                             R9 R6
      175 LOADN                            R10 0
      176 GETUPVAL                         R11 7
      177 CALL                             R8 3 1
      178 MOVE                             R6 R8
      179 DIVK                             R9 R7 K27 [0.785398163397448]
      180 FASTCALL1                        MATH_ROUND R9 ; [+2]
      181 GETIMPORT                        R8 K29 [math.round]
      183 CALL                             R8 1 1
      184 MULK                             R7 R8 K27 [0.785398163397448]
      185 JUMPIFNOT                        R1 ; [+9]
      186 LOADN                            R10 0
      187 GETUPVAL                         R11 7
      188 FASTCALL3                        MATH_CLAMP R6 R10 R11
      190 MOVE                             R9 R6
      191 GETIMPORT                        R8 K19 [math.clamp]
      193 CALL                             R8 3 1
      194 MOVE                             R6 R8
      195 GETIMPORT                        R8 K21 [Vector2.new]
      197 MOVE                             R9 R7
      198 MOVE                             R10 R6
      199 CALL                             R8 2 -1
      200 RETURN                           R8 -1
      201 GETIMPORT                        R6 K31 [error]
      203 LOADK                            R8 K32 ["Unknown input mode: "]
      204 GETUPVAL                         R10 3
      205 GETTABLEKS                       R10 R10 K10 ["InputMode"]
      207 FASTCALL1                        TOSTRING R10 ; [+2]
      208 GETIMPORT                        R9 K34 [tostring]
      210 CALL                             R9 1 1
      211 CONCAT                           R7 R8 R9
      212 CALL                             R6 1 0
      213 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+52]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K20 [{["AbsToMap"], ["Clamp"] = True, ["Color3"], ["Extents"], ["Image"] = "rbxasset://textures/AnimLibrary/BlendMapCursor.png", ["Index"] = 0, ["InputMode"], ["LockExtents"], ["MaxRadius"], ["Mode"], ["OnPinDragged"], ["Position"], ["ZIndex"] = 4, ["Size"] = 12}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["AbsToMap"]
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R4 R4 K21 ["Color"]
       16 GETTABLEKS                       R4 R4 K22 ["System"]
       18 GETTABLEKS                       R4 R4 K23 ["Warning"]
       20 GETTABLEKS                       R4 R4 K4 ["Color3"]
       22 SETTABLEKS                       R4 R3 K4 ["Color3"]
       24 GETUPVAL                         R4 5
       25 SETTABLEKS                       R4 R3 K5 ["Extents"]
       27 GETUPVAL                         R4 6
       28 GETTABLEKS                       R4 R4 K10 ["InputMode"]
       30 SETTABLEKS                       R4 R3 K10 ["InputMode"]
       32 GETUPVAL                         R4 7
       33 SETTABLEKS                       R4 R3 K11 ["LockExtents"]
       35 GETUPVAL                         R4 8
       36 SETTABLEKS                       R4 R3 K12 ["MaxRadius"]
       38 GETUPVAL                         R4 9
       39 GETTABLEKS                       R4 R4 K24 ["DRAGGABLE_PIN_MODES"]
       41 GETTABLEKS                       R4 R4 K25 ["Blend2D"]
       43 SETTABLEKS                       R4 R3 K13 ["Mode"]
       45 GETUPVAL                         R4 6
       46 GETTABLEKS                       R4 R4 K14 ["OnPinDragged"]
       48 SETTABLEKS                       R4 R3 K14 ["OnPinDragged"]
       50 GETUPVAL                         R4 0
       51 SETTABLEKS                       R4 R3 K15 ["Position"]
       53 CALL                             R1 2 1
       54 SETTABLEKS                       R1 R0 K26 ["current"]
       56 GETUPVAL                         R1 10
       57 LOADNIL                          R2
       58 LOADNIL                          R3
       59 FORGPREP                         R1
       60 LOADK                            R7 K27 ["point-"]
       61 FASTCALL1                        TOSTRING R4 ; [+3]
       62 MOVE                             R9 R4
       63 GETIMPORT                        R8 K29 [tostring]
       65 CALL                             R8 1 1
       66 CONCAT                           R6 R7 R8
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K0 ["createElement"]
       70 GETUPVAL                         R8 2
       71 DUPTABLE                         R9 K34 [{["AbsToMap"], ["Clamp"] = False, ["Color3"], ["Extents"], ["Index"], ["InputMode"], ["Label"], ["LockExtents"], ["MaxRadius"], ["Mode"], ["OnPinDragged"], ["Position"], ["ZIndex"] = 3, ["Size"] = 8}]
       72 GETUPVAL                         R10 3
       73 SETTABLEKS                       R10 R9 K1 ["AbsToMap"]
       75 GETUPVAL                         R10 11
       76 SETTABLEKS                       R10 R9 K4 ["Color3"]
       78 GETUPVAL                         R10 5
       79 SETTABLEKS                       R10 R9 K5 ["Extents"]
       81 SETTABLEKS                       R4 R9 K8 ["Index"]
       83 GETUPVAL                         R10 6
       84 GETTABLEKS                       R10 R10 K10 ["InputMode"]
       86 SETTABLEKS                       R10 R9 K10 ["InputMode"]
       88 GETUPVAL                         R11 12
       89 CALL                             R11 0 1
       90 JUMPIFNOT                        R11 ; [+11]
       91 GETUPVAL                         R11 6
       92 GETTABLEKS                       R11 R11 K35 ["PinLabels"]
       94 JUMPIFNOT                        R11 ; [+5]
       95 GETUPVAL                         R11 6
       96 GETTABLEKS                       R11 R11 K35 ["PinLabels"]
       98 GETTABLE                         R10 R11 R4
       99 JUMP                             ; [+3]
      100 LOADNIL                          R10
      101 JUMP                             ; [+1]
      102 LOADNIL                          R10
      103 SETTABLEKS                       R10 R9 K31 ["Label"]
      105 GETUPVAL                         R10 7
      106 SETTABLEKS                       R10 R9 K11 ["LockExtents"]
      108 GETUPVAL                         R10 8
      109 SETTABLEKS                       R10 R9 K12 ["MaxRadius"]
      111 GETUPVAL                         R10 9
      112 GETTABLEKS                       R10 R10 K24 ["DRAGGABLE_PIN_MODES"]
      114 GETTABLEKS                       R10 R10 K25 ["Blend2D"]
      116 SETTABLEKS                       R10 R9 K13 ["Mode"]
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R10 R10 K14 ["OnPinDragged"]
      121 SETTABLEKS                       R10 R9 K14 ["OnPinDragged"]
      123 SETTABLEKS                       R5 R9 K15 ["Position"]
      125 CALL                             R7 2 1
      126 SETTABLE                         R7 R0 R6
      127 FORGLOOP                         R1 2 ; [-68]
      129 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["Blend2DMap Drag"]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 LOADB                            R4 1
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["OnPinDragged"]
       12 JUMPIFNOT                        R3 ; [+6]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["OnPinDragged"]
       16 LOADN                            R4 0
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 LOADB                            R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["OnPinDragged"]
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["OnPinDragged"]
       11 LOADN                            R4 0
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R2 K2 ["observeAbsoluteSize"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R2 K3 ["observeAbsolutePosition"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K4 ["useContext"]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K5 ["Context"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K4 ["useContext"]
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R7 R7 K6 ["ModifierKeysContext"]
       29 GETTABLEKS                       R7 R7 K5 ["Context"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K4 ["useContext"]
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R8 R8 K7 ["ViewportRectContext"]
       38 GETTABLEKS                       R8 R8 K5 ["Context"]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R7
       48 NEWTABLE                         R10 0 2
       50 GETTABLEKS                       R11 R2 K2 ["observeAbsoluteSize"]
       52 GETTABLEKS                       R12 R7 K9 ["observeZoomRatio"]
       54 SETLIST                          R10 R11 2 [1]
       56 CALL                             R8 2 1
       57 GETUPVAL                         R9 7
       58 GETTABLEKS                       R9 R9 K10 ["useSignalBinding"]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       65 NEWCLOSURE                       R11 P1
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R2
       69 NEWTABLE                         R12 0 1
       71 GETTABLEKS                       R13 R2 K2 ["observeAbsoluteSize"]
       73 SETLIST                          R12 R13 1 [1]
       75 CALL                             R10 2 1
       76 GETUPVAL                         R11 7
       77 GETTABLEKS                       R11 R11 K11 ["useSignalState"]
       79 MOVE                             R12 R10
       80 CALL                             R11 1 1
       81 GETUPVAL                         R12 3
       82 GETTABLEKS                       R12 R12 K8 ["useMemo"]
       84 NEWCLOSURE                       R13 P2
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          VAL R7
       87 NEWTABLE                         R14 0 1
       89 GETTABLEKS                       R15 R7 K9 ["observeZoomRatio"]
       91 SETLIST                          R14 R15 1 [1]
       93 CALL                             R12 2 1
       94 GETUPVAL                         R13 3
       95 GETTABLEKS                       R13 R13 K8 ["useMemo"]
       97 NEWCLOSURE                       R14 P3
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R7
      100 NEWTABLE                         R15 0 1
      102 GETTABLEKS                       R16 R7 K9 ["observeZoomRatio"]
      104 SETLIST                          R15 R16 1 [1]
      106 CALL                             R13 2 1
      107 GETUPVAL                         R14 7
      108 GETTABLEKS                       R14 R14 K10 ["useSignalBinding"]
      110 MOVE                             R15 R13
      111 CALL                             R14 1 1
      112 GETTABLEKS                       R15 R1 K12 ["Color"]
      114 GETTABLEKS                       R15 R15 K13 ["Stroke"]
      116 GETTABLEKS                       R15 R15 K14 ["Default"]
      118 GETTABLEKS                       R15 R15 K15 ["Color3"]
      120 GETTABLEKS                       R17 R1 K12 ["Color"]
      122 GETTABLEKS                       R17 R17 K16 ["Surface"]
      124 GETTABLEKS                       R17 R17 K17 ["Surface_0"]
      126 GETTABLEKS                       R17 R17 K15 ["Color3"]
      128 LOADK                            R18 K18 [0.75]
      129 NAMECALL                         R15 R15 K19 ["Lerp"]
      131 CALL                             R15 3 1
      132 GETTABLEKS                       R16 R1 K12 ["Color"]
      134 GETTABLEKS                       R16 R16 K13 ["Stroke"]
      136 GETTABLEKS                       R16 R16 K14 ["Default"]
      138 GETTABLEKS                       R16 R16 K15 ["Color3"]
      140 GETTABLEKS                       R18 R1 K12 ["Color"]
      142 GETTABLEKS                       R18 R18 K16 ["Surface"]
      144 GETTABLEKS                       R18 R18 K17 ["Surface_0"]
      146 GETTABLEKS                       R18 R18 K15 ["Color3"]
      148 LOADK                            R19 K20 [0.25]
      149 NAMECALL                         R16 R16 K19 ["Lerp"]
      151 CALL                             R16 3 1
      152 GETTABLEKS                       R17 R1 K12 ["Color"]
      154 GETTABLEKS                       R17 R17 K13 ["Stroke"]
      156 GETTABLEKS                       R17 R17 K14 ["Default"]
      158 GETTABLEKS                       R17 R17 K15 ["Color3"]
      160 GETTABLEKS                       R19 R1 K12 ["Color"]
      162 GETTABLEKS                       R19 R19 K16 ["Surface"]
      164 GETTABLEKS                       R19 R19 K17 ["Surface_0"]
      166 GETTABLEKS                       R19 R19 K15 ["Color3"]
      168 LOADK                            R20 K21 [0.6]
      169 NAMECALL                         R17 R17 K19 ["Lerp"]
      171 CALL                             R17 3 1
      172 GETUPVAL                         R18 3
      173 GETTABLEKS                       R18 R18 K22 ["useState"]
      175 LOADNIL                          R19
      176 CALL                             R18 1 2
      177 GETTABLEKS                       R21 R0 K24 ["Padding"]
      179 ORK                              R20 R21 K23 [15]
      180 GETUPVAL                         R21 3
      181 GETTABLEKS                       R21 R21 K8 ["useMemo"]
      183 NEWCLOSURE                       R22 P4
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U9
      186 NEWTABLE                         R23 0 3
      188 GETTABLEKS                       R24 R0 K25 ["Position"]
      190 GETTABLEKS                       R25 R0 K26 ["Pins"]
      192 GETTABLEKS                       R26 R0 K27 ["InputMode"]
      194 SETLIST                          R23 R24 3 [1]
      196 CALL                             R21 2 2
      197 GETUPVAL                         R23 3
      198 GETTABLEKS                       R23 R23 K8 ["useMemo"]
      200 NEWCLOSURE                       R24 P5
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U10
      204 NEWTABLE                         R25 0 3
      206 MOVE                             R26 R18
      207 JUMPIFNOT                        R26 ; [+2]
      208 GETTABLEKS                       R26 R18 K28 ["MaxRadius"]
      210 GETTABLEKS                       R27 R0 K27 ["InputMode"]
      212 GETTABLEKS                       R28 R0 K26 ["Pins"]
      214 SETLIST                          R25 R26 3 [1]
      216 CALL                             R23 2 1
      217 GETUPVAL                         R24 3
      218 GETTABLEKS                       R24 R24 K8 ["useMemo"]
      220 NEWCLOSURE                       R25 P6
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R3
      223 CAPTURE                          UPVAL U11
      224 CAPTURE                          VAL R0
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R20
      228 NEWTABLE                         R26 0 8
      230 MOVE                             R27 R18
      231 JUMPIFNOT                        R27 ; [+2]
      232 GETTABLEKS                       R27 R18 K29 ["Extents"]
      234 MOVE                             R28 R18
      235 JUMPIFNOT                        R28 ; [+2]
      236 GETTABLEKS                       R28 R18 K30 ["GraphRect"]
      238 MOVE                             R29 R22
      239 GETTABLEKS                       R30 R0 K27 ["InputMode"]
      241 MOVE                             R31 R23
      242 MOVE                             R32 R20
      243 GETTABLEKS                       R33 R3 K31 ["current"]
      245 MOVE                             R34 R11
      246 SETLIST                          R26 R27 8 [1]
      248 CALL                             R24 2 2
      249 GETUPVAL                         R26 3
      250 GETTABLEKS                       R26 R26 K32 ["useCallback"]
      252 NEWCLOSURE                       R27 P7
      253 CAPTURE                          VAL R19
      254 CAPTURE                          VAL R24
      255 CAPTURE                          VAL R25
      256 CAPTURE                          VAL R23
      257 NEWTABLE                         R28 0 3
      259 MOVE                             R29 R24
      260 MOVE                             R30 R25
      261 MOVE                             R31 R23
      262 SETLIST                          R28 R29 3 [1]
      264 CALL                             R26 2 1
      265 GETUPVAL                         R27 3
      266 GETTABLEKS                       R27 R27 K32 ["useCallback"]
      268 NEWCLOSURE                       R28 P8
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R4
      271 CAPTURE                          VAL R25
      272 CAPTURE                          VAL R0
      273 CAPTURE                          VAL R6
      274 CAPTURE                          UPVAL U9
      275 CAPTURE                          VAL R24
      276 CAPTURE                          VAL R23
      277 NEWTABLE                         R29 0 6
      279 MOVE                             R30 R24
      280 GETTABLEKS                       R31 R3 K31 ["current"]
      282 GETTABLEKS                       R32 R4 K31 ["current"]
      284 MOVE                             R33 R25
      285 GETTABLEKS                       R34 R0 K27 ["InputMode"]
      287 GETTABLEKS                       R35 R6 K33 ["isShiftPressed"]
      289 CALL                             R35 0 -1
      290 SETLIST                          R29 R30 -1 [1]
      292 CALL                             R27 2 1
      293 GETUPVAL                         R28 3
      294 GETTABLEKS                       R28 R28 K8 ["useMemo"]
      296 NEWCLOSURE                       R29 P9
      297 CAPTURE                          VAL R21
      298 CAPTURE                          UPVAL U3
      299 CAPTURE                          UPVAL U12
      300 CAPTURE                          VAL R27
      301 CAPTURE                          VAL R1
      302 CAPTURE                          VAL R24
      303 CAPTURE                          VAL R0
      304 CAPTURE                          VAL R26
      305 CAPTURE                          VAL R23
      306 CAPTURE                          UPVAL U13
      307 CAPTURE                          VAL R22
      308 CAPTURE                          VAL R17
      309 CAPTURE                          UPVAL U14
      310 NEWTABLE                         R30 0 8
      312 MOVE                             R31 R24
      313 MOVE                             R32 R26
      314 MOVE                             R33 R23
      315 MOVE                             R34 R21
      316 MOVE                             R35 R22
      317 GETTABLEKS                       R36 R0 K27 ["InputMode"]
      319 GETTABLEKS                       R37 R0 K34 ["OnPinDragged"]
      321 MOVE                             R38 R27
      322 SETLIST                          R30 R31 8 [1]
      324 CALL                             R28 2 1
      325 GETUPVAL                         R29 3
      326 GETTABLEKS                       R29 R29 K32 ["useCallback"]
      328 NEWCLOSURE                       R30 P10
      329 CAPTURE                          VAL R5
      330 CAPTURE                          VAL R27
      331 CAPTURE                          VAL R0
      332 NEWTABLE                         R31 0 3
      334 GETTABLEKS                       R32 R0 K34 ["OnPinDragged"]
      336 MOVE                             R33 R27
      337 MOVE                             R34 R5
      338 SETLIST                          R31 R32 3 [1]
      340 CALL                             R29 2 1
      341 GETUPVAL                         R30 3
      342 GETTABLEKS                       R30 R30 K32 ["useCallback"]
      344 NEWCLOSURE                       R31 P11
      345 CAPTURE                          VAL R27
      346 CAPTURE                          VAL R0
      347 NEWTABLE                         R32 0 2
      349 GETTABLEKS                       R33 R0 K34 ["OnPinDragged"]
      351 MOVE                             R34 R27
      352 SETLIST                          R32 R33 2 [1]
      354 CALL                             R30 2 1
      355 GETUPVAL                         R31 3
      356 GETTABLEKS                       R31 R31 K32 ["useCallback"]
      358 NEWCLOSURE                       R32 P12
      359 CAPTURE                          VAL R5
      360 NEWTABLE                         R33 0 3
      362 GETTABLEKS                       R34 R0 K34 ["OnPinDragged"]
      364 MOVE                             R35 R27
      365 MOVE                             R36 R5
      366 SETLIST                          R33 R34 3 [1]
      368 CALL                             R31 2 1
      369 GETTABLEKS                       R33 R0 K27 ["InputMode"]
      371 GETIMPORT                        R34 K38 [Enum.AnimationNodeBlend2DInputMode.Polar]
      373 JUMPIFNOTEQ                      R33 R34 ; [+30]
      375 GETUPVAL                         R32 3
      376 GETTABLEKS                       R32 R32 K39 ["createElement"]
      378 GETUPVAL                         R33 15
      379 DUPTABLE                         R34 K44 [{"MaxRadius", "GridColor", "AxisColor", "Thickness", "ObserveThickness"}]
      380 SETTABLEKS                       R23 R34 K28 ["MaxRadius"]
      382 SETTABLEKS                       R15 R34 K40 ["GridColor"]
      384 SETTABLEKS                       R15 R34 K41 ["AxisColor"]
      386 GETUPVAL                         R36 16
      387 CALL                             R36 0 1
      388 JUMPIFNOT                        R36 ; [+2]
      389 LOADNIL                          R35
      390 JUMP                             ; [+1]
      391 LOADK                            R35 K45 [0.1]
      392 SETTABLEKS                       R35 R34 K42 ["Thickness"]
      394 GETUPVAL                         R36 16
      395 CALL                             R36 0 1
      396 JUMPIFNOT                        R36 ; [+2]
      397 MOVE                             R35 R12
      398 JUMP                             ; [+1]
      399 LOADNIL                          R35
      400 SETTABLEKS                       R35 R34 K43 ["ObserveThickness"]
      402 CALL                             R32 2 1
      403 JUMP                             ; [+28]
      404 GETUPVAL                         R32 3
      405 GETTABLEKS                       R32 R32 K39 ["createElement"]
      407 GETUPVAL                         R33 17
      408 DUPTABLE                         R34 K46 [{"Extents", "GridColor", "AxisColor", "Thickness", "ObserveThickness"}]
      409 SETTABLEKS                       R24 R34 K29 ["Extents"]
      411 SETTABLEKS                       R15 R34 K40 ["GridColor"]
      413 SETTABLEKS                       R16 R34 K41 ["AxisColor"]
      415 GETUPVAL                         R36 16
      416 CALL                             R36 0 1
      417 JUMPIFNOT                        R36 ; [+2]
      418 LOADNIL                          R35
      419 JUMP                             ; [+1]
      420 LOADK                            R35 K45 [0.1]
      421 SETTABLEKS                       R35 R34 K42 ["Thickness"]
      423 GETUPVAL                         R36 16
      424 CALL                             R36 0 1
      425 JUMPIFNOT                        R36 ; [+2]
      426 MOVE                             R35 R12
      427 JUMP                             ; [+1]
      428 LOADNIL                          R35
      429 SETTABLEKS                       R35 R34 K43 ["ObserveThickness"]
      431 CALL                             R32 2 1
      432 GETUPVAL                         R33 3
      433 GETTABLEKS                       R33 R33 K39 ["createElement"]
      435 GETUPVAL                         R34 0
      436 GETTABLEKS                       R34 R34 K47 ["View"]
      438 DUPTABLE                         R35 K53 [{"Size", "tag", "LayoutOrder", "backgroundStyle", "ref"}]
      439 GETUPVAL                         R37 18
      440 JUMPIFNOT                        R37 ; [+5]
      441 DUPCLOSURE                       R38 K54 [PROTO_18]
      442 NAMECALL                         R36 R9 K55 ["map"]
      444 CALL                             R36 2 1
      445 JUMP                             ; [+1]
      446 LOADNIL                          R36
      447 SETTABLEKS                       R36 R35 K48 ["Size"]
      449 GETUPVAL                         R37 18
      450 JUMPIFNOT                        R37 ; [+2]
      451 LOADNIL                          R36
      452 JUMP                             ; [+1]
      453 LOADK                            R36 K56 ["size-full-full aspect-1-1"]
      454 SETTABLEKS                       R36 R35 K49 ["tag"]
      456 GETTABLEKS                       R36 R0 K50 ["LayoutOrder"]
      458 SETTABLEKS                       R36 R35 K50 ["LayoutOrder"]
      460 GETTABLEKS                       R36 R1 K12 ["Color"]
      462 GETTABLEKS                       R36 R36 K16 ["Surface"]
      464 GETTABLEKS                       R36 R36 K17 ["Surface_0"]
      466 SETTABLEKS                       R36 R35 K51 ["backgroundStyle"]
      468 GETTABLEKS                       R36 R2 K57 ["setFrame"]
      470 SETTABLEKS                       R36 R35 K52 ["ref"]
      472 DUPTABLE                         R36 K59 [{"Canvas"}]
      473 GETUPVAL                         R37 3
      474 GETTABLEKS                       R37 R37 K39 ["createElement"]
      476 GETUPVAL                         R38 19
      477 GETTABLEKS                       R38 R38 K58 ["Canvas"]
      479 DUPTABLE                         R39 K67 [{["Size"], ["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingBottom"], ["ViewportPaddingTop"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1}]
      480 GETIMPORT                        R40 K70 [UDim2.fromScale]
      482 LOADN                            R41 1
      483 LOADN                            R42 1
      484 CALL                             R40 2 1
      485 SETTABLEKS                       R40 R39 K48 ["Size"]
      487 SETTABLEKS                       R25 R39 K30 ["GraphRect"]
      489 GETIMPORT                        R40 K73 [UDim.new]
      491 LOADN                            R41 0
      492 LOADN                            R42 0
      493 CALL                             R40 2 1
      494 SETTABLEKS                       R40 R39 K60 ["ViewportPaddingLeft"]
      496 GETIMPORT                        R40 K73 [UDim.new]
      498 LOADN                            R41 0
      499 LOADN                            R42 0
      500 CALL                             R40 2 1
      501 SETTABLEKS                       R40 R39 K61 ["ViewportPaddingRight"]
      503 GETIMPORT                        R40 K73 [UDim.new]
      505 LOADN                            R41 0
      506 LOADN                            R42 0
      507 CALL                             R40 2 1
      508 SETTABLEKS                       R40 R39 K62 ["ViewportPaddingBottom"]
      510 GETIMPORT                        R40 K73 [UDim.new]
      512 LOADN                            R41 0
      513 LOADN                            R42 0
      514 CALL                             R40 2 1
      515 SETTABLEKS                       R40 R39 K63 ["ViewportPaddingTop"]
      517 DUPTABLE                         R40 K77 [{"Guides", "Points", "DragDetector"}]
      518 GETUPVAL                         R42 16
      519 CALL                             R42 0 1
      520 JUMPIFNOT                        R42 ; [+19]
      521 GETUPVAL                         R41 3
      522 GETTABLEKS                       R41 R41 K39 ["createElement"]
      524 LOADK                            R42 K78 ["CanvasGroup"]
      525 DUPTABLE                         R43 K84 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["GroupTransparency"], ["ZIndex"] = 1}]
      526 GETIMPORT                        R44 K70 [UDim2.fromScale]
      528 LOADN                            R45 1
      529 LOADN                            R46 1
      530 CALL                             R44 2 1
      531 SETTABLEKS                       R44 R43 K48 ["Size"]
      533 SETTABLEKS                       R14 R43 K82 ["GroupTransparency"]
      535 DUPTABLE                         R44 K85 [{"Guides"}]
      536 SETTABLEKS                       R32 R44 K74 ["Guides"]
      538 CALL                             R41 3 1
      539 JUMP                             ; [+1]
      540 MOVE                             R41 R32
      541 SETTABLEKS                       R41 R40 K74 ["Guides"]
      543 GETUPVAL                         R41 3
      544 GETTABLEKS                       R41 R41 K39 ["createElement"]
      546 GETUPVAL                         R42 3
      547 GETTABLEKS                       R42 R42 K86 ["Fragment"]
      549 NEWTABLE                         R43 0 0
      551 MOVE                             R44 R28
      552 CALL                             R41 3 1
      553 SETTABLEKS                       R41 R40 K75 ["Points"]
      555 GETUPVAL                         R41 3
      556 GETTABLEKS                       R41 R41 K39 ["createElement"]
      558 LOADK                            R42 K87 ["UIDragDetector"]
      559 NEWTABLE                         R43 4 0
      561 GETIMPORT                        R44 K90 [Enum.UIDragDetectorDragStyle.Scriptable]
      563 SETTABLEKS                       R44 R43 K91 ["DragStyle"]
      565 GETUPVAL                         R44 3
      566 GETTABLEKS                       R44 R44 K92 ["Event"]
      568 GETTABLEKS                       R44 R44 K93 ["DragStart"]
      570 SETTABLE                         R29 R43 R44
      571 GETUPVAL                         R44 3
      572 GETTABLEKS                       R44 R44 K92 ["Event"]
      574 GETTABLEKS                       R44 R44 K94 ["DragContinue"]
      576 SETTABLE                         R30 R43 R44
      577 GETUPVAL                         R44 3
      578 GETTABLEKS                       R44 R44 K92 ["Event"]
      580 GETTABLEKS                       R44 R44 K95 ["DragEnd"]
      582 SETTABLE                         R31 R43 R44
      583 CALL                             R41 2 1
      584 SETTABLEKS                       R41 R40 K76 ["DragDetector"]
      586 CALL                             R37 3 1
      587 SETTABLEKS                       R37 R36 K58 ["Canvas"]
      589 CALL                             R33 3 -1
      590 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeProperty"]
       15 GETTABLEKS                       R2 R2 K9 ["Blend2DMap"]
       17 GETTABLEKS                       R2 R2 K10 ["Blend2DCartesianGuides"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Components"]
       24 GETTABLEKS                       R3 R3 K7 ["NodeView"]
       26 GETTABLEKS                       R3 R3 K8 ["CompositorNodeProperty"]
       28 GETTABLEKS                       R3 R3 K9 ["Blend2DMap"]
       30 GETTABLEKS                       R3 R3 K11 ["Blend2DPolarGuides"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K12 ["Util"]
       37 GETTABLEKS                       R4 R4 K13 ["Constants"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K14 ["Parent"]
       44 GETTABLEKS                       R5 R5 K15 ["Dash"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Components"]
       51 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       53 GETTABLEKS                       R6 R6 K8 ["CompositorNodeProperty"]
       55 GETTABLEKS                       R6 R6 K16 ["BlendMapShared"]
       57 GETTABLEKS                       R6 R6 K17 ["DraggablePin"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R7 R0 K14 ["Parent"]
       64 GETTABLEKS                       R7 R7 K18 ["Foundation"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K14 ["Parent"]
       71 GETTABLEKS                       R8 R8 K19 ["Graphing"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K20 ["Contexts"]
       78 GETTABLEKS                       R9 R9 K21 ["NativeGraphContext"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K14 ["Parent"]
       85 GETTABLEKS                       R10 R10 K22 ["NodeGraphing"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K6 ["Components"]
       92 GETTABLEKS                       R11 R11 K7 ["NodeView"]
       94 GETTABLEKS                       R11 R11 K8 ["CompositorNodeProperty"]
       96 GETTABLEKS                       R11 R11 K23 ["PropertyUtils"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K14 ["Parent"]
      103 GETTABLEKS                       R12 R12 K24 ["React"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K14 ["Parent"]
      110 GETTABLEKS                       R13 R13 K25 ["Signals"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K14 ["Parent"]
      117 GETTABLEKS                       R14 R14 K26 ["SignalsReact"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      124 GETTABLEKS                       R15 R15 K28 ["useAbsoluteSize"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K5 [require]
      129 GETTABLEKS                       R16 R0 K27 ["Hooks"]
      131 GETTABLEKS                       R16 R16 K29 ["useSignalRef"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K30 ["Flags"]
      138 GETTABLEKS                       R17 R17 K31 ["FFlagAnimGraphUIBlend2DCollapsedSize"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K5 [require]
      143 GETTABLEKS                       R18 R0 K30 ["Flags"]
      145 GETTABLEKS                       R18 R18 K32 ["getFFlagAnimGraphUIBlendMapCrispLines"]
      147 CALL                             R17 1 1
      148 GETIMPORT                        R18 K5 [require]
      150 GETTABLEKS                       R19 R0 K30 ["Flags"]
      152 GETTABLEKS                       R19 R19 K33 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      154 CALL                             R18 1 1
      155 GETIMPORT                        R19 K5 [require]
      157 GETTABLEKS                       R20 R0 K30 ["Flags"]
      159 GETTABLEKS                       R20 R20 K34 ["getFFlagAnimGraphUI_FixBlendMapInitialRender"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K37 [Rect.new]
      164 LOADN                            R21 -1
      165 LOADN                            R22 -1
      166 LOADN                            R23 1
      167 LOADN                            R24 1
      168 CALL                             R20 4 1
      169 DUPCLOSURE                       R21 K38 [PROTO_19]
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R7
      190 RETURN                           R21 1
