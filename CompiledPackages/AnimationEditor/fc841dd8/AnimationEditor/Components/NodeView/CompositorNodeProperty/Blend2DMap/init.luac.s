PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R0 0
        8 GETIMPORT                        R2 K6 [Enum.KeyCode.RightShift]
       10 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["InputMode"]
        3 GETIMPORT                        R1 K4 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
        5 JUMPIFNOTEQ                      R0 R1 ; [+8]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K5 ["Position"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K6 ["Pins"]
       13 RETURN                           R0 2
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K7 ["toCartesian"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K5 ["Position"]
       20 JUMPIF                           R1 ; [+5]
       21 GETIMPORT                        R1 K10 [Vector2.new]
       23 LOADN                            R2 0
       24 LOADN                            R3 0
       25 CALL                             R1 2 1
       26 CALL                             R0 1 1
       27 NEWTABLE                         R1 0 0
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R2 R5 K6 ["Pins"]
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R7 R8 K7 ["toCartesian"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 1
       40 SETTABLE                         R7 R1 R5
       41 FORGLOOP                         R2 2 ; [-7]
       43 RETURN                           R0 2

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["Y"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 FASTCALL2                        MATH_MAX R0 R4 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K5 [math.max]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["MaxRadius"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["InputMode"]
        9 GETIMPORT                        R1 K5 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       11 JUMPIFNOTEQ                      R0 R1 ; [+3]
       13 LOADN                            R0 0
       14 RETURN                           R0 1
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R0 R1 K6 ["reduce"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K7 ["Pins"]
       21 DUPCLOSURE                       R2 K8 [PROTO_2]
       22 LOADN                            R3 0
       23 CALL                             R0 3 1
       24 JUMPIFNOTEQKN                    R0 K9 [0] ; [+2]
       26 LOADN                            R0 1
       27 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Extents"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["GraphRect"]
        8 RETURN                           R0 2
        9 LOADNIL                          R0
       10 LOADNIL                          R1
       11 GETIMPORT                        R2 K4 [Vector2.new]
       13 LOADN                            R3 255
       14 LOADN                            R4 255
       15 CALL                             R2 2 1
       16 MOVE                             R0 R2
       17 GETIMPORT                        R2 K4 [Vector2.new]
       19 LOADN                            R3 1
       20 LOADN                            R4 1
       21 CALL                             R2 2 1
       22 MOVE                             R1 R2
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K5 ["InputMode"]
       26 GETIMPORT                        R3 K9 [Enum.AnimationNodeBlend2DInputMode.Polar]
       28 JUMPIFNOTEQ                      R2 R3 ; [+16]
       30 GETIMPORT                        R2 K4 [Vector2.new]
       32 GETUPVAL                         R4 2
       33 MINUS                            R3 R4
       34 GETUPVAL                         R5 2
       35 MINUS                            R4 R5
       36 CALL                             R2 2 1
       37 MOVE                             R0 R2
       38 GETIMPORT                        R2 K4 [Vector2.new]
       40 GETUPVAL                         R3 2
       41 GETUPVAL                         R4 2
       42 CALL                             R2 2 1
       43 MOVE                             R1 R2
       44 JUMP                             ; [+131]
       45 GETUPVAL                         R3 3
       46 LENGTH                           R2 R3
       47 LOADN                            R3 0
       48 JUMPIFNOTLT                      R3 R2 ; [+127]
       50 GETIMPORT                        R2 K4 [Vector2.new]
       52 LOADK                            R3 K10 [∞]
       53 LOADK                            R4 K10 [∞]
       54 CALL                             R2 2 1
       55 MOVE                             R0 R2
       56 GETIMPORT                        R2 K4 [Vector2.new]
       58 LOADK                            R3 K11 [-∞]
       59 LOADK                            R4 K11 [-∞]
       60 CALL                             R2 2 1
       61 MOVE                             R1 R2
       62 GETUPVAL                         R2 3
       63 LOADNIL                          R3
       64 LOADNIL                          R4
       65 FORGPREP                         R2
       66 GETIMPORT                        R7 K4 [Vector2.new]
       68 GETTABLEKS                       R9 R0 K12 ["X"]
       70 GETTABLEKS                       R10 R6 K12 ["X"]
       72 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       74 GETIMPORT                        R8 K15 [math.min]
       76 CALL                             R8 2 1
       77 GETTABLEKS                       R10 R0 K16 ["Y"]
       79 GETTABLEKS                       R11 R6 K16 ["Y"]
       81 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       83 GETIMPORT                        R9 K15 [math.min]
       85 CALL                             R9 2 1
       86 CALL                             R7 2 1
       87 MOVE                             R0 R7
       88 GETIMPORT                        R7 K4 [Vector2.new]
       90 GETTABLEKS                       R9 R1 K12 ["X"]
       92 GETTABLEKS                       R10 R6 K12 ["X"]
       94 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       96 GETIMPORT                        R8 K18 [math.max]
       98 CALL                             R8 2 1
       99 GETTABLEKS                       R10 R1 K16 ["Y"]
      101 GETTABLEKS                       R11 R6 K16 ["Y"]
      103 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
      105 GETIMPORT                        R9 K18 [math.max]
      107 CALL                             R9 2 1
      108 CALL                             R7 2 1
      109 MOVE                             R1 R7
      110 FORGLOOP                         R2 2 ; [-45]
      112 GETTABLEKS                       R2 R0 K12 ["X"]
      114 GETTABLEKS                       R3 R1 K12 ["X"]
      116 JUMPIFNOTEQ                      R2 R3 ; [+27]
      118 GETIMPORT                        R2 K4 [Vector2.new]
      120 GETTABLEKS                       R4 R0 K12 ["X"]
      122 GETUPVAL                         R7 4
      123 GETTABLEKS                       R6 R7 K20 ["Width"]
      125 DIVK                             R5 R6 K19 [2]
      126 SUB                              R3 R4 R5
      127 GETTABLEKS                       R4 R0 K16 ["Y"]
      129 CALL                             R2 2 1
      130 MOVE                             R0 R2
      131 GETIMPORT                        R2 K4 [Vector2.new]
      133 GETTABLEKS                       R4 R1 K12 ["X"]
      135 GETUPVAL                         R7 4
      136 GETTABLEKS                       R6 R7 K20 ["Width"]
      138 DIVK                             R5 R6 K19 [2]
      139 ADD                              R3 R4 R5
      140 GETTABLEKS                       R4 R1 K16 ["Y"]
      142 CALL                             R2 2 1
      143 MOVE                             R1 R2
      144 GETTABLEKS                       R2 R0 K16 ["Y"]
      146 GETTABLEKS                       R3 R1 K16 ["Y"]
      148 JUMPIFNOTEQ                      R2 R3 ; [+27]
      150 GETIMPORT                        R2 K4 [Vector2.new]
      152 GETTABLEKS                       R3 R0 K12 ["X"]
      154 GETTABLEKS                       R5 R0 K16 ["Y"]
      156 GETUPVAL                         R8 4
      157 GETTABLEKS                       R7 R8 K21 ["Height"]
      159 DIVK                             R6 R7 K19 [2]
      160 SUB                              R4 R5 R6
      161 CALL                             R2 2 1
      162 MOVE                             R0 R2
      163 GETIMPORT                        R2 K4 [Vector2.new]
      165 GETTABLEKS                       R3 R1 K12 ["X"]
      167 GETTABLEKS                       R5 R1 K16 ["Y"]
      169 GETUPVAL                         R8 4
      170 GETTABLEKS                       R7 R8 K21 ["Height"]
      172 DIVK                             R6 R7 K19 [2]
      173 ADD                              R4 R5 R6
      174 CALL                             R2 2 1
      175 MOVE                             R1 R2
      176 ADD                              R3 R0 R1
      177 DIVK                             R2 R3 K19 [2]
      178 SUB                              R5 R1 R0
      179 GETUPVAL                         R9 5
      180 GETTABLEKS                       R8 R9 K22 ["current"]
      182 GETTABLEKS                       R7 R8 K12 ["X"]
      184 LOADN                            R9 2
      185 GETUPVAL                         R10 6
      186 MUL                              R8 R9 R10
      187 ADD                              R6 R7 R8
      188 MUL                              R4 R5 R6
      189 GETUPVAL                         R7 5
      190 GETTABLEKS                       R6 R7 K22 ["current"]
      192 GETTABLEKS                       R5 R6 K12 ["X"]
      194 DIV                              R3 R4 R5
      195 GETIMPORT                        R4 K24 [Rect.new]
      197 MOVE                             R5 R0
      198 MOVE                             R6 R1
      199 CALL                             R4 2 1
      200 GETIMPORT                        R5 K24 [Rect.new]
      202 DIVK                             R7 R3 K19 [2]
      203 SUB                              R6 R2 R7
      204 DIVK                             R8 R3 K19 [2]
      205 ADD                              R7 R2 R8
      206 CALL                             R5 2 -1
      207 RETURN                           R4 -1

PROTO_5:
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

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+71]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K15 [{"AbsolutePositionRef", "AbsoluteSizeRef", "Color3", "Extents", "GraphRect", "Index", "InputMode", "LockExtents", "MaxRadius", "Mode", "OnPinDragged", "Position", "Snapping", "ZIndex"}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["AbsolutePositionRef"]
       13 GETUPVAL                         R4 4
       14 SETTABLEKS                       R4 R3 K2 ["AbsoluteSizeRef"]
       16 GETUPVAL                         R9 5
       17 GETTABLEKS                       R8 R9 K16 ["Color"]
       19 GETTABLEKS                       R7 R8 K17 ["Extended"]
       21 GETTABLEKS                       R6 R7 K18 ["Yellow"]
       23 GETTABLEKS                       R5 R6 K19 ["Yellow_800"]
       25 GETTABLEKS                       R4 R5 K3 ["Color3"]
       27 SETTABLEKS                       R4 R3 K3 ["Color3"]
       29 GETUPVAL                         R4 6
       30 SETTABLEKS                       R4 R3 K4 ["Extents"]
       32 GETUPVAL                         R4 7
       33 SETTABLEKS                       R4 R3 K5 ["GraphRect"]
       35 LOADN                            R4 0
       36 SETTABLEKS                       R4 R3 K6 ["Index"]
       38 GETUPVAL                         R5 8
       39 GETTABLEKS                       R4 R5 K7 ["InputMode"]
       41 SETTABLEKS                       R4 R3 K7 ["InputMode"]
       43 GETUPVAL                         R4 9
       44 SETTABLEKS                       R4 R3 K8 ["LockExtents"]
       46 GETUPVAL                         R4 10
       47 SETTABLEKS                       R4 R3 K9 ["MaxRadius"]
       49 GETUPVAL                         R6 11
       50 GETTABLEKS                       R5 R6 K20 ["DRAGGABLE_PIN_MODES"]
       52 GETTABLEKS                       R4 R5 K21 ["Blend2D"]
       54 SETTABLEKS                       R4 R3 K10 ["Mode"]
       56 GETUPVAL                         R5 8
       57 GETTABLEKS                       R4 R5 K11 ["OnPinDragged"]
       59 SETTABLEKS                       R4 R3 K11 ["OnPinDragged"]
       61 GETUPVAL                         R4 0
       62 SETTABLEKS                       R4 R3 K12 ["Position"]
       64 GETUPVAL                         R5 12
       65 GETTABLEKS                       R4 R5 K22 ["enabled"]
       67 SETTABLEKS                       R4 R3 K13 ["Snapping"]
       69 LOADN                            R4 3
       70 SETTABLEKS                       R4 R3 K14 ["ZIndex"]
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K23 ["current"]
       75 GETUPVAL                         R1 13
       76 LOADNIL                          R2
       77 LOADNIL                          R3
       78 FORGPREP                         R1
       79 LOADK                            R7 K24 ["point-"]
       80 FASTCALL1                        TOSTRING R4 ; [+3]
       81 MOVE                             R9 R4
       82 GETIMPORT                        R8 K26 [tostring]
       84 CALL                             R8 1 1
       85 CONCAT                           R6 R7 R8
       86 GETUPVAL                         R8 1
       87 GETTABLEKS                       R7 R8 K0 ["createElement"]
       89 GETUPVAL                         R8 2
       90 DUPTABLE                         R9 K15 [{"AbsolutePositionRef", "AbsoluteSizeRef", "Color3", "Extents", "GraphRect", "Index", "InputMode", "LockExtents", "MaxRadius", "Mode", "OnPinDragged", "Position", "Snapping", "ZIndex"}]
       91 GETUPVAL                         R10 3
       92 SETTABLEKS                       R10 R9 K1 ["AbsolutePositionRef"]
       94 GETUPVAL                         R10 4
       95 SETTABLEKS                       R10 R9 K2 ["AbsoluteSizeRef"]
       97 GETUPVAL                         R15 5
       98 GETTABLEKS                       R14 R15 K16 ["Color"]
      100 GETTABLEKS                       R13 R14 K17 ["Extended"]
      102 GETTABLEKS                       R12 R13 K27 ["Gray"]
      104 GETTABLEKS                       R11 R12 K28 ["Gray_600"]
      106 GETTABLEKS                       R10 R11 K3 ["Color3"]
      108 SETTABLEKS                       R10 R9 K3 ["Color3"]
      110 GETUPVAL                         R10 6
      111 SETTABLEKS                       R10 R9 K4 ["Extents"]
      113 GETUPVAL                         R10 7
      114 SETTABLEKS                       R10 R9 K5 ["GraphRect"]
      116 SETTABLEKS                       R4 R9 K6 ["Index"]
      118 GETUPVAL                         R11 8
      119 GETTABLEKS                       R10 R11 K7 ["InputMode"]
      121 SETTABLEKS                       R10 R9 K7 ["InputMode"]
      123 GETUPVAL                         R10 9
      124 SETTABLEKS                       R10 R9 K8 ["LockExtents"]
      126 GETUPVAL                         R10 10
      127 SETTABLEKS                       R10 R9 K9 ["MaxRadius"]
      129 GETUPVAL                         R12 11
      130 GETTABLEKS                       R11 R12 K20 ["DRAGGABLE_PIN_MODES"]
      132 GETTABLEKS                       R10 R11 K21 ["Blend2D"]
      134 SETTABLEKS                       R10 R9 K10 ["Mode"]
      136 GETUPVAL                         R11 8
      137 GETTABLEKS                       R10 R11 K11 ["OnPinDragged"]
      139 SETTABLEKS                       R10 R9 K11 ["OnPinDragged"]
      141 SETTABLEKS                       R5 R9 K12 ["Position"]
      143 GETUPVAL                         R11 12
      144 GETTABLEKS                       R10 R11 K22 ["enabled"]
      146 SETTABLEKS                       R10 R9 K13 ["Snapping"]
      148 LOADN                            R10 2
      149 SETTABLEKS                       R10 R9 K14 ["ZIndex"]
      151 CALL                             R7 2 1
      152 SETTABLE                         R7 R0 R6
      153 FORGLOOP                         R1 2 ; [-75]
      155 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        8 GETIMPORT                        R3 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K6 ["enable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        8 GETIMPORT                        R3 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K6 ["disable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["useRef"]
       11 GETTABLEKS                       R4 R2 K3 ["absoluteSize"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R2 K3 ["absoluteSize"]
       16 SETTABLEKS                       R4 R3 K4 ["current"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K2 ["useRef"]
       21 GETTABLEKS                       R5 R2 K5 ["absolutePosition"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K5 ["absolutePosition"]
       26 SETTABLEKS                       R5 R4 K4 ["current"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R5 R6 K6 ["useToggleState"]
       31 GETUPVAL                         R6 4
       32 CALL                             R5 1 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K7 ["useState"]
       36 LOADNIL                          R7
       37 CALL                             R6 1 2
       38 GETTABLEKS                       R9 R0 K9 ["Padding"]
       40 ORK                              R8 R9 K8 [15]
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R9 R10 K10 ["useMemo"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U5
       47 NEWTABLE                         R11 0 3
       49 GETTABLEKS                       R12 R0 K11 ["Position"]
       51 GETTABLEKS                       R13 R0 K12 ["Pins"]
       53 GETTABLEKS                       R14 R0 K13 ["InputMode"]
       55 SETLIST                          R11 R12 3 [1]
       57 CALL                             R9 2 2
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R11 R12 K10 ["useMemo"]
       61 NEWCLOSURE                       R12 P1
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U6
       65 NEWTABLE                         R13 0 3
       67 MOVE                             R14 R6
       68 JUMPIFNOT                        R14 ; [+2]
       69 GETTABLEKS                       R14 R6 K14 ["MaxRadius"]
       71 GETTABLEKS                       R15 R0 K13 ["InputMode"]
       73 GETTABLEKS                       R16 R0 K12 ["Pins"]
       75 SETLIST                          R13 R14 3 [1]
       77 CALL                             R11 2 1
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R12 R13 K10 ["useMemo"]
       81 NEWCLOSURE                       R13 P2
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R10
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R8
       89 NEWTABLE                         R14 0 6
       91 MOVE                             R15 R6
       92 JUMPIFNOT                        R15 ; [+2]
       93 GETTABLEKS                       R15 R6 K15 ["Extents"]
       95 MOVE                             R16 R6
       96 JUMPIFNOT                        R16 ; [+2]
       97 GETTABLEKS                       R16 R6 K16 ["GraphRect"]
       99 MOVE                             R17 R10
      100 GETTABLEKS                       R18 R0 K13 ["InputMode"]
      102 MOVE                             R19 R11
      103 GETTABLEKS                       R20 R3 K4 ["current"]
      105 SETLIST                          R14 R15 6 [1]
      107 CALL                             R12 2 2
      108 GETUPVAL                         R15 2
      109 GETTABLEKS                       R14 R15 K17 ["useCallback"]
      111 NEWCLOSURE                       R15 P3
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R11
      116 NEWTABLE                         R16 0 3
      118 MOVE                             R17 R12
      119 MOVE                             R18 R13
      120 MOVE                             R19 R11
      121 SETLIST                          R16 R17 3 [1]
      123 CALL                             R14 2 1
      124 GETUPVAL                         R16 2
      125 GETTABLEKS                       R15 R16 K10 ["useMemo"]
      127 NEWCLOSURE                       R16 P4
      128 CAPTURE                          VAL R9
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          UPVAL U8
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R11
      139 CAPTURE                          UPVAL U9
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R10
      142 NEWTABLE                         R17 0 10
      144 GETTABLEKS                       R18 R3 K4 ["current"]
      146 GETTABLEKS                       R19 R4 K4 ["current"]
      148 MOVE                             R20 R12
      149 MOVE                             R21 R13
      150 MOVE                             R22 R14
      151 MOVE                             R23 R11
      152 MOVE                             R24 R9
      153 MOVE                             R25 R10
      154 GETTABLEKS                       R26 R0 K13 ["InputMode"]
      156 GETTABLEKS                       R27 R0 K18 ["OnPinDragged"]
      158 SETLIST                          R17 R18 10 [1]
      160 CALL                             R15 2 1
      161 GETUPVAL                         R17 2
      162 GETTABLEKS                       R16 R17 K17 ["useCallback"]
      164 NEWCLOSURE                       R17 P5
      165 CAPTURE                          VAL R5
      166 NEWTABLE                         R18 0 1
      168 GETTABLEKS                       R19 R5 K19 ["enable"]
      170 SETLIST                          R18 R19 1 [1]
      172 CALL                             R16 2 1
      173 GETUPVAL                         R18 2
      174 GETTABLEKS                       R17 R18 K17 ["useCallback"]
      176 NEWCLOSURE                       R18 P6
      177 CAPTURE                          VAL R5
      178 NEWTABLE                         R19 0 1
      180 GETTABLEKS                       R20 R5 K20 ["disable"]
      182 SETLIST                          R19 R20 1 [1]
      184 CALL                             R17 2 1
      185 GETUPVAL                         R19 2
      186 GETTABLEKS                       R18 R19 K21 ["createElement"]
      188 GETUPVAL                         R20 0
      189 GETTABLEKS                       R19 R20 K22 ["View"]
      191 DUPTABLE                         R20 K26 [{"tag", "LayoutOrder", "ref"}]
      192 LOADK                            R21 K27 ["aspect-1-1 size-full-full"]
      193 SETTABLEKS                       R21 R20 K23 ["tag"]
      195 GETTABLEKS                       R21 R0 K24 ["LayoutOrder"]
      197 SETTABLEKS                       R21 R20 K24 ["LayoutOrder"]
      199 GETTABLEKS                       R21 R2 K28 ["setFrame"]
      201 SETTABLEKS                       R21 R20 K25 ["ref"]
      203 DUPTABLE                         R21 K30 [{"ShiftListener"}]
      204 GETUPVAL                         R23 2
      205 GETTABLEKS                       R22 R23 K21 ["createElement"]
      207 LOADK                            R23 K31 ["Frame"]
      208 NEWTABLE                         R24 4 0
      210 GETIMPORT                        R25 K34 [UDim2.fromScale]
      212 LOADN                            R26 1
      213 LOADN                            R27 1
      214 CALL                             R25 2 1
      215 SETTABLEKS                       R25 R24 K35 ["Size"]
      217 LOADN                            R25 1
      218 SETTABLEKS                       R25 R24 K36 ["BackgroundTransparency"]
      220 GETUPVAL                         R27 2
      221 GETTABLEKS                       R26 R27 K37 ["Event"]
      223 GETTABLEKS                       R25 R26 K38 ["InputBegan"]
      225 SETTABLE                         R16 R24 R25
      226 GETUPVAL                         R27 2
      227 GETTABLEKS                       R26 R27 K37 ["Event"]
      229 GETTABLEKS                       R25 R26 K39 ["InputEnded"]
      231 SETTABLE                         R17 R24 R25
      232 DUPTABLE                         R25 K41 [{"Canvas"}]
      233 GETUPVAL                         R27 2
      234 GETTABLEKS                       R26 R27 K21 ["createElement"]
      236 GETUPVAL                         R28 10
      237 GETTABLEKS                       R27 R28 K40 ["Canvas"]
      239 DUPTABLE                         R28 K46 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop"}]
      240 GETIMPORT                        R29 K34 [UDim2.fromScale]
      242 LOADN                            R30 1
      243 LOADN                            R31 1
      244 CALL                             R29 2 1
      245 SETTABLEKS                       R29 R28 K35 ["Size"]
      247 SETTABLEKS                       R13 R28 K16 ["GraphRect"]
      249 GETIMPORT                        R29 K49 [UDim.new]
      251 LOADN                            R30 0
      252 LOADN                            R31 0
      253 CALL                             R29 2 1
      254 SETTABLEKS                       R29 R28 K42 ["ViewportPaddingLeft"]
      256 GETIMPORT                        R29 K49 [UDim.new]
      258 LOADN                            R30 0
      259 LOADN                            R31 0
      260 CALL                             R29 2 1
      261 SETTABLEKS                       R29 R28 K43 ["ViewportPaddingRight"]
      263 GETIMPORT                        R29 K49 [UDim.new]
      265 LOADN                            R30 0
      266 LOADN                            R31 0
      267 CALL                             R29 2 1
      268 SETTABLEKS                       R29 R28 K44 ["ViewportPaddingBottom"]
      270 GETIMPORT                        R29 K49 [UDim.new]
      272 LOADN                            R30 0
      273 LOADN                            R31 0
      274 CALL                             R29 2 1
      275 SETTABLEKS                       R29 R28 K45 ["ViewportPaddingTop"]
      277 DUPTABLE                         R29 K52 [{"Guides", "Points"}]
      278 GETTABLEKS                       R31 R0 K13 ["InputMode"]
      280 GETIMPORT                        R32 K56 [Enum.AnimationNodeBlend2DInputMode.Polar]
      282 JUMPIFNOTEQ                      R31 R32 ; [+22]
      284 GETUPVAL                         R31 2
      285 GETTABLEKS                       R30 R31 K21 ["createElement"]
      287 GETUPVAL                         R31 11
      288 DUPTABLE                         R32 K58 [{"MaxRadius", "Color3"}]
      289 SETTABLEKS                       R11 R32 K14 ["MaxRadius"]
      291 GETTABLEKS                       R37 R1 K59 ["Color"]
      293 GETTABLEKS                       R36 R37 K60 ["Extended"]
      295 GETTABLEKS                       R35 R36 K61 ["Gray"]
      297 GETTABLEKS                       R34 R35 K62 ["Gray_600"]
      299 GETTABLEKS                       R33 R34 K57 ["Color3"]
      301 SETTABLEKS                       R33 R32 K57 ["Color3"]
      303 CALL                             R30 2 1
      304 JUMP                             ; [+32]
      305 GETUPVAL                         R31 2
      306 GETTABLEKS                       R30 R31 K21 ["createElement"]
      308 GETUPVAL                         R31 12
      309 DUPTABLE                         R32 K65 [{"Extents", "GridColor", "AxisColor"}]
      310 SETTABLEKS                       R12 R32 K15 ["Extents"]
      312 GETTABLEKS                       R37 R1 K59 ["Color"]
      314 GETTABLEKS                       R36 R37 K60 ["Extended"]
      316 GETTABLEKS                       R35 R36 K61 ["Gray"]
      318 GETTABLEKS                       R34 R35 K62 ["Gray_600"]
      320 GETTABLEKS                       R33 R34 K57 ["Color3"]
      322 SETTABLEKS                       R33 R32 K63 ["GridColor"]
      324 GETTABLEKS                       R37 R1 K59 ["Color"]
      326 GETTABLEKS                       R36 R37 K60 ["Extended"]
      328 GETTABLEKS                       R35 R36 K61 ["Gray"]
      330 GETTABLEKS                       R34 R35 K66 ["Gray_300"]
      332 GETTABLEKS                       R33 R34 K57 ["Color3"]
      334 SETTABLEKS                       R33 R32 K64 ["AxisColor"]
      336 CALL                             R30 2 1
      337 SETTABLEKS                       R30 R29 K50 ["Guides"]
      339 GETUPVAL                         R31 2
      340 GETTABLEKS                       R30 R31 K21 ["createElement"]
      342 GETUPVAL                         R32 2
      343 GETTABLEKS                       R31 R32 K67 ["Fragment"]
      345 NEWTABLE                         R32 0 0
      347 MOVE                             R33 R15
      348 CALL                             R30 3 1
      349 SETTABLEKS                       R30 R29 K51 ["Points"]
      351 CALL                             R26 3 1
      352 SETTABLEKS                       R26 R25 K40 ["Canvas"]
      354 CALL                             R22 3 1
      355 SETTABLEKS                       R22 R21 K29 ["ShiftListener"]
      357 CALL                             R18 3 -1
      358 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["UserInputService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R7 R0 K10 ["Components"]
       17 GETTABLEKS                       R6 R7 K11 ["NodeView"]
       19 GETTABLEKS                       R5 R6 K12 ["CompositorNodeProperty"]
       21 GETTABLEKS                       R4 R5 K13 ["Blend2DMap"]
       23 GETTABLEKS                       R3 R4 K14 ["Blend2DCartesianGuides"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R8 R0 K10 ["Components"]
       30 GETTABLEKS                       R7 R8 K11 ["NodeView"]
       32 GETTABLEKS                       R6 R7 K12 ["CompositorNodeProperty"]
       34 GETTABLEKS                       R5 R6 K13 ["Blend2DMap"]
       36 GETTABLEKS                       R4 R5 K15 ["Blend2DPolarGuides"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K9 [require]
       41 GETTABLEKS                       R6 R0 K16 ["Util"]
       43 GETTABLEKS                       R5 R6 K17 ["Constants"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R7 R0 K18 ["Parent"]
       50 GETTABLEKS                       R6 R7 K19 ["Dash"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R11 R0 K10 ["Components"]
       57 GETTABLEKS                       R10 R11 K11 ["NodeView"]
       59 GETTABLEKS                       R9 R10 K12 ["CompositorNodeProperty"]
       61 GETTABLEKS                       R8 R9 K20 ["BlendMapShared"]
       63 GETTABLEKS                       R7 R8 K21 ["DraggablePin"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K9 [require]
       68 GETTABLEKS                       R9 R0 K18 ["Parent"]
       70 GETTABLEKS                       R8 R9 K22 ["Foundation"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K9 [require]
       75 GETTABLEKS                       R10 R0 K18 ["Parent"]
       77 GETTABLEKS                       R9 R10 K23 ["Graphing"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K9 [require]
       82 GETTABLEKS                       R13 R0 K10 ["Components"]
       84 GETTABLEKS                       R12 R13 K11 ["NodeView"]
       86 GETTABLEKS                       R11 R12 K12 ["CompositorNodeProperty"]
       88 GETTABLEKS                       R10 R11 K24 ["PropertyUtils"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K9 [require]
       93 GETTABLEKS                       R12 R0 K18 ["Parent"]
       95 GETTABLEKS                       R11 R12 K25 ["React"]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K9 [require]
      100 GETTABLEKS                       R13 R0 K18 ["Parent"]
      102 GETTABLEKS                       R12 R13 K26 ["ReactUtils"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K9 [require]
      107 GETTABLEKS                       R14 R0 K27 ["Hooks"]
      109 GETTABLEKS                       R13 R14 K28 ["useAbsoluteSize"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K31 [Rect.new]
      114 LOADN                            R14 255
      115 LOADN                            R15 255
      116 LOADN                            R16 1
      117 LOADN                            R17 1
      118 CALL                             R13 4 1
      119 DUPCLOSURE                       R14 K32 [PROTO_0]
      120 CAPTURE                          VAL R1
      121 DUPCLOSURE                       R15 K33 [PROTO_9]
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R2
      135 RETURN                           R15 1
