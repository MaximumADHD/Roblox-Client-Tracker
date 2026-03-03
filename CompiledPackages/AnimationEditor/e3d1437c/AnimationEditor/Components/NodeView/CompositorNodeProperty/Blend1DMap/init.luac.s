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
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Extents"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["GraphRect"]
        8 RETURN                           R0 2
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["current"]
       12 GETTABLEKS                       R0 R1 K3 ["X"]
       14 JUMPIFNOTEQKN                    R0 K4 [0] ; [+4]
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R1 2
       18 RETURN                           R0 2
       19 LOADN                            R0 0
       20 LOADN                            R1 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K5 ["Pins"]
       24 LENGTH                           R2 R3
       25 LOADN                            R3 0
       26 JUMPIFNOTLT                      R3 R2 ; [+39]
       28 LOADK                            R0 K6 [∞]
       29 LOADK                            R1 K7 [-∞]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R2 R5 K5 ["Pins"]
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 FASTCALL2                        MATH_MIN R0 R6 ; [+5]
       38 MOVE                             R8 R0
       39 MOVE                             R9 R6
       40 GETIMPORT                        R7 K10 [math.min]
       42 CALL                             R7 2 1
       43 MOVE                             R0 R7
       44 FASTCALL2                        MATH_MAX R1 R6 ; [+5]
       46 MOVE                             R8 R1
       47 MOVE                             R9 R6
       48 GETIMPORT                        R7 K12 [math.max]
       50 CALL                             R7 2 1
       51 MOVE                             R1 R7
       52 FORGLOOP                         R2 2 ; [-17]
       54 JUMPIFNOTEQ                      R0 R1 ; [+11]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R3 R4 K14 ["Width"]
       59 DIVK                             R2 R3 K13 [2]
       60 SUB                              R0 R0 R2
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R3 R4 K14 ["Width"]
       64 DIVK                             R2 R3 K13 [2]
       65 ADD                              R1 R1 R2
       66 ADD                              R3 R0 R1
       67 DIVK                             R2 R3 K13 [2]
       68 SUB                              R5 R1 R0
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R8 R9 K2 ["current"]
       72 GETTABLEKS                       R7 R8 K3 ["X"]
       74 LOADN                            R9 2
       75 GETUPVAL                         R10 4
       76 MUL                              R8 R9 R10
       77 ADD                              R6 R7 R8
       78 MUL                              R4 R5 R6
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R6 R7 K2 ["current"]
       82 GETTABLEKS                       R5 R6 K3 ["X"]
       84 DIV                              R3 R4 R5
       85 GETIMPORT                        R4 K17 [Rect.new]
       87 GETIMPORT                        R5 K19 [Vector2.new]
       89 MOVE                             R6 R0
       90 LOADK                            R7 K20 [-0.5]
       91 CALL                             R5 2 1
       92 GETIMPORT                        R6 K19 [Vector2.new]
       94 MOVE                             R7 R1
       95 LOADK                            R8 K21 [0.5]
       96 CALL                             R6 2 -1
       97 CALL                             R4 -1 1
       98 GETIMPORT                        R5 K17 [Rect.new]
      100 GETIMPORT                        R6 K19 [Vector2.new]
      102 DIVK                             R8 R3 K13 [2]
      103 SUB                              R7 R2 R8
      104 LOADK                            R8 K20 [-0.5]
      105 CALL                             R6 2 1
      106 GETIMPORT                        R7 K19 [Vector2.new]
      108 DIVK                             R9 R3 K13 [2]
      109 ADD                              R8 R2 R9
      110 LOADK                            R9 K21 [0.5]
      111 CALL                             R7 2 -1
      112 CALL                             R5 -1 -1
      113 RETURN                           R4 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K2 [{"Extents", "GraphRect"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["Extents"]
        6 GETUPVAL                         R3 2
        7 SETTABLEKS                       R3 R2 K1 ["GraphRect"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 LOADNIL                          R2
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["current"]
        5 GETTABLEKS                       R4 R5 K0 ["X"]
        7 SUB                              R2 R3 R4
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K1 ["current"]
       11 GETTABLEKS                       R3 R4 K0 ["X"]
       13 DIV                              R1 R2 R3
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K2 ["Min"]
       17 GETTABLEKS                       R3 R4 K0 ["X"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K3 ["Width"]
       22 MUL                              R4 R1 R5
       23 ADD                              R2 R3 R4
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R3 R4 K4 ["enabled"]
       27 JUMPIFNOT                        R3 ; [+16]
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R3 R4 K5 ["roundStep"]
       31 MOVE                             R4 R2
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R6 R7 K2 ["Min"]
       35 GETTABLEKS                       R5 R6 K0 ["X"]
       37 GETUPVAL                         R8 5
       38 GETTABLEKS                       R7 R8 K6 ["Max"]
       40 GETTABLEKS                       R6 R7 K0 ["X"]
       42 CALL                             R3 3 1
       43 MOVE                             R2 R3
       44 GETIMPORT                        R3 K9 [Vector2.new]
       46 MOVE                             R4 R2
       47 LOADN                            R5 0
       48 CALL                             R3 2 -1
       49 RETURN                           R3 -1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["Position"]
        5 JUMPIFEQKNIL                     R1 ; [+61]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K11 [{"AbsToMap", "Color3", "Extents", "Image", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex"}]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K2 ["AbsToMap"]
       15 GETUPVAL                         R9 4
       16 GETTABLEKS                       R8 R9 K12 ["Color"]
       18 GETTABLEKS                       R7 R8 K13 ["Extended"]
       20 GETTABLEKS                       R6 R7 K14 ["Yellow"]
       22 GETTABLEKS                       R5 R6 K15 ["Yellow_800"]
       24 GETTABLEKS                       R4 R5 K3 ["Color3"]
       26 SETTABLEKS                       R4 R3 K3 ["Color3"]
       28 GETUPVAL                         R4 5
       29 SETTABLEKS                       R4 R3 K4 ["Extents"]
       31 LOADK                            R4 K16 ["rbxasset://textures/AnimLibrary/BlendMapCursor.png"]
       32 SETTABLEKS                       R4 R3 K5 ["Image"]
       34 LOADN                            R4 0
       35 SETTABLEKS                       R4 R3 K6 ["Index"]
       37 GETUPVAL                         R4 6
       38 SETTABLEKS                       R4 R3 K7 ["LockExtents"]
       40 GETUPVAL                         R6 7
       41 GETTABLEKS                       R5 R6 K17 ["DRAGGABLE_PIN_MODES"]
       43 GETTABLEKS                       R4 R5 K18 ["Blend1D"]
       45 SETTABLEKS                       R4 R3 K8 ["Mode"]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K9 ["OnPinDragged"]
       50 SETTABLEKS                       R4 R3 K9 ["OnPinDragged"]
       52 GETIMPORT                        R4 K21 [Vector2.new]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K0 ["Position"]
       57 LOADN                            R6 0
       58 CALL                             R4 2 1
       59 SETTABLEKS                       R4 R3 K0 ["Position"]
       61 LOADN                            R4 3
       62 SETTABLEKS                       R4 R3 K10 ["ZIndex"]
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K22 ["current"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R1 R4 K23 ["Pins"]
       70 LOADNIL                          R2
       71 LOADNIL                          R3
       72 FORGPREP                         R1
       73 LOADK                            R7 K24 ["point-"]
       74 FASTCALL1                        TOSTRING R4 ; [+3]
       75 MOVE                             R9 R4
       76 GETIMPORT                        R8 K26 [tostring]
       78 CALL                             R8 1 1
       79 CONCAT                           R6 R7 R8
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R7 R8 K1 ["createElement"]
       83 GETUPVAL                         R8 2
       84 DUPTABLE                         R9 K27 [{"AbsToMap", "Color3", "Extents", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex"}]
       85 GETUPVAL                         R10 3
       86 SETTABLEKS                       R10 R9 K2 ["AbsToMap"]
       88 GETUPVAL                         R15 4
       89 GETTABLEKS                       R14 R15 K12 ["Color"]
       91 GETTABLEKS                       R13 R14 K13 ["Extended"]
       93 GETTABLEKS                       R12 R13 K28 ["Gray"]
       95 GETTABLEKS                       R11 R12 K29 ["Gray_600"]
       97 GETTABLEKS                       R10 R11 K3 ["Color3"]
       99 SETTABLEKS                       R10 R9 K3 ["Color3"]
      101 GETUPVAL                         R10 5
      102 SETTABLEKS                       R10 R9 K4 ["Extents"]
      104 SETTABLEKS                       R4 R9 K6 ["Index"]
      106 GETUPVAL                         R10 6
      107 SETTABLEKS                       R10 R9 K7 ["LockExtents"]
      109 GETUPVAL                         R12 7
      110 GETTABLEKS                       R11 R12 K17 ["DRAGGABLE_PIN_MODES"]
      112 GETTABLEKS                       R10 R11 K18 ["Blend1D"]
      114 SETTABLEKS                       R10 R9 K8 ["Mode"]
      116 GETUPVAL                         R11 0
      117 GETTABLEKS                       R10 R11 K9 ["OnPinDragged"]
      119 SETTABLEKS                       R10 R9 K9 ["OnPinDragged"]
      121 GETIMPORT                        R10 K21 [Vector2.new]
      123 MOVE                             R11 R5
      124 LOADN                            R12 0
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K0 ["Position"]
      128 LOADN                            R10 3
      129 SETTABLEKS                       R10 R9 K10 ["ZIndex"]
      131 CALL                             R7 2 1
      132 SETTABLE                         R7 R0 R6
      133 FORGLOOP                         R1 2 ; [-61]
      135 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["Blend1DMap Drag"]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["OnPinDragged"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K2 ["OnPinDragged"]
       15 LOADN                            R4 0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["OnPinDragged"]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["OnPinDragged"]
       10 LOADN                            R4 0
       11 MOVE                             R5 R2
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_10:
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
       34 GETTABLEKS                       R6 R7 K7 ["useContext"]
       36 GETUPVAL                         R8 5
       37 GETTABLEKS                       R7 R8 K8 ["Context"]
       39 CALL                             R6 1 1
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R7 R8 K9 ["useState"]
       43 LOADNIL                          R8
       44 CALL                             R7 1 2
       45 GETTABLEKS                       R10 R0 K11 ["Padding"]
       47 ORK                              R9 R10 K10 [15]
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R10 R11 K12 ["useMemo"]
       51 NEWCLOSURE                       R11 P0
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R3
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R9
       57 NEWTABLE                         R12 0 4
       59 MOVE                             R13 R7
       60 JUMPIFNOT                        R13 ; [+2]
       61 GETTABLEKS                       R13 R7 K13 ["Extents"]
       63 MOVE                             R14 R7
       64 JUMPIFNOT                        R14 ; [+2]
       65 GETTABLEKS                       R14 R7 K14 ["GraphRect"]
       67 GETTABLEKS                       R15 R0 K15 ["Pins"]
       69 GETTABLEKS                       R16 R3 K4 ["current"]
       71 SETLIST                          R12 R13 4 [1]
       73 CALL                             R10 2 2
       74 GETUPVAL                         R13 2
       75 GETTABLEKS                       R12 R13 K16 ["useCallback"]
       77 NEWCLOSURE                       R13 P1
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R11
       81 NEWTABLE                         R14 0 2
       83 MOVE                             R15 R10
       84 MOVE                             R16 R11
       85 SETLIST                          R14 R15 2 [1]
       87 CALL                             R12 2 1
       88 GETUPVAL                         R14 2
       89 GETTABLEKS                       R13 R14 K16 ["useCallback"]
       91 NEWCLOSURE                       R14 P2
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R5
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R10
       98 NEWTABLE                         R15 0 5
      100 MOVE                             R16 R10
      101 GETTABLEKS                       R17 R3 K4 ["current"]
      103 GETTABLEKS                       R18 R4 K4 ["current"]
      105 MOVE                             R19 R11
      106 GETTABLEKS                       R20 R5 K17 ["enabled"]
      108 SETLIST                          R15 R16 5 [1]
      110 CALL                             R13 2 1
      111 GETUPVAL                         R15 2
      112 GETTABLEKS                       R14 R15 K12 ["useMemo"]
      114 NEWCLOSURE                       R15 P3
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U2
      117 CAPTURE                          UPVAL U8
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R12
      122 CAPTURE                          UPVAL U9
      123 NEWTABLE                         R16 0 4
      125 MOVE                             R17 R10
      126 MOVE                             R18 R12
      127 GETTABLEKS                       R19 R0 K18 ["Position"]
      129 GETTABLEKS                       R20 R0 K15 ["Pins"]
      131 SETLIST                          R16 R17 4 [1]
      133 CALL                             R14 2 1
      134 GETUPVAL                         R16 2
      135 GETTABLEKS                       R15 R16 K16 ["useCallback"]
      137 NEWCLOSURE                       R16 P4
      138 CAPTURE                          VAL R5
      139 NEWTABLE                         R17 0 1
      141 GETTABLEKS                       R18 R5 K19 ["enable"]
      143 SETLIST                          R17 R18 1 [1]
      145 CALL                             R15 2 1
      146 GETUPVAL                         R17 2
      147 GETTABLEKS                       R16 R17 K16 ["useCallback"]
      149 NEWCLOSURE                       R17 P5
      150 CAPTURE                          VAL R5
      151 NEWTABLE                         R18 0 1
      153 GETTABLEKS                       R19 R5 K20 ["disable"]
      155 SETLIST                          R18 R19 1 [1]
      157 CALL                             R16 2 1
      158 GETUPVAL                         R18 2
      159 GETTABLEKS                       R17 R18 K16 ["useCallback"]
      161 NEWCLOSURE                       R18 P6
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R0
      165 NEWTABLE                         R19 0 3
      167 GETTABLEKS                       R20 R0 K21 ["OnPinDragged"]
      169 MOVE                             R21 R13
      170 MOVE                             R22 R6
      171 SETLIST                          R19 R20 3 [1]
      173 CALL                             R17 2 1
      174 GETUPVAL                         R19 2
      175 GETTABLEKS                       R18 R19 K16 ["useCallback"]
      177 NEWCLOSURE                       R19 P7
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R0
      180 NEWTABLE                         R20 0 2
      182 GETTABLEKS                       R21 R0 K21 ["OnPinDragged"]
      184 MOVE                             R22 R13
      185 SETLIST                          R20 R21 2 [1]
      187 CALL                             R18 2 1
      188 GETUPVAL                         R20 2
      189 GETTABLEKS                       R19 R20 K16 ["useCallback"]
      191 NEWCLOSURE                       R20 P8
      192 CAPTURE                          VAL R6
      193 NEWTABLE                         R21 0 1
      195 MOVE                             R22 R6
      196 SETLIST                          R21 R22 1 [1]
      198 CALL                             R19 2 1
      199 GETUPVAL                         R21 2
      200 GETTABLEKS                       R20 R21 K22 ["createElement"]
      202 GETUPVAL                         R22 0
      203 GETTABLEKS                       R21 R22 K23 ["View"]
      205 DUPTABLE                         R22 K27 [{"tag", "LayoutOrder", "ref"}]
      206 LOADK                            R23 K28 ["size-full-700"]
      207 SETTABLEKS                       R23 R22 K24 ["tag"]
      209 GETTABLEKS                       R23 R0 K25 ["LayoutOrder"]
      211 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      213 GETTABLEKS                       R23 R2 K29 ["setFrame"]
      215 SETTABLEKS                       R23 R22 K26 ["ref"]
      217 DUPTABLE                         R23 K31 [{"ShiftListener"}]
      218 GETUPVAL                         R25 2
      219 GETTABLEKS                       R24 R25 K22 ["createElement"]
      221 LOADK                            R25 K32 ["Frame"]
      222 NEWTABLE                         R26 4 0
      224 GETIMPORT                        R27 K35 [UDim2.fromScale]
      226 LOADN                            R28 1
      227 LOADN                            R29 1
      228 CALL                             R27 2 1
      229 SETTABLEKS                       R27 R26 K36 ["Size"]
      231 LOADN                            R27 1
      232 SETTABLEKS                       R27 R26 K37 ["BackgroundTransparency"]
      234 GETUPVAL                         R29 2
      235 GETTABLEKS                       R28 R29 K38 ["Event"]
      237 GETTABLEKS                       R27 R28 K39 ["InputBegan"]
      239 SETTABLE                         R15 R26 R27
      240 GETUPVAL                         R29 2
      241 GETTABLEKS                       R28 R29 K38 ["Event"]
      243 GETTABLEKS                       R27 R28 K40 ["InputEnded"]
      245 SETTABLE                         R16 R26 R27
      246 DUPTABLE                         R27 K42 [{"Canvas"}]
      247 GETUPVAL                         R29 2
      248 GETTABLEKS                       R28 R29 K22 ["createElement"]
      250 GETUPVAL                         R30 10
      251 GETTABLEKS                       R29 R30 K41 ["Canvas"]
      253 DUPTABLE                         R30 K47 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop"}]
      254 GETIMPORT                        R31 K35 [UDim2.fromScale]
      256 LOADN                            R32 1
      257 LOADN                            R33 1
      258 CALL                             R31 2 1
      259 SETTABLEKS                       R31 R30 K36 ["Size"]
      261 SETTABLEKS                       R11 R30 K14 ["GraphRect"]
      263 GETIMPORT                        R31 K50 [UDim.new]
      265 LOADN                            R32 0
      266 LOADN                            R33 0
      267 CALL                             R31 2 1
      268 SETTABLEKS                       R31 R30 K43 ["ViewportPaddingLeft"]
      270 GETIMPORT                        R31 K50 [UDim.new]
      272 LOADN                            R32 0
      273 LOADN                            R33 0
      274 CALL                             R31 2 1
      275 SETTABLEKS                       R31 R30 K44 ["ViewportPaddingRight"]
      277 GETIMPORT                        R31 K50 [UDim.new]
      279 LOADN                            R32 0
      280 LOADN                            R33 0
      281 CALL                             R31 2 1
      282 SETTABLEKS                       R31 R30 K45 ["ViewportPaddingBottom"]
      284 GETIMPORT                        R31 K50 [UDim.new]
      286 LOADN                            R32 0
      287 LOADN                            R33 0
      288 CALL                             R31 2 1
      289 SETTABLEKS                       R31 R30 K46 ["ViewportPaddingTop"]
      291 DUPTABLE                         R31 K54 [{"Guides", "Points", "DragDetector"}]
      292 GETUPVAL                         R33 2
      293 GETTABLEKS                       R32 R33 K22 ["createElement"]
      295 GETUPVAL                         R33 11
      296 DUPTABLE                         R34 K57 [{"Extents", "GridColor", "AxisColor"}]
      297 SETTABLEKS                       R10 R34 K13 ["Extents"]
      299 GETTABLEKS                       R39 R1 K58 ["Color"]
      301 GETTABLEKS                       R38 R39 K59 ["Extended"]
      303 GETTABLEKS                       R37 R38 K60 ["Gray"]
      305 GETTABLEKS                       R36 R37 K61 ["Gray_600"]
      307 GETTABLEKS                       R35 R36 K62 ["Color3"]
      309 SETTABLEKS                       R35 R34 K55 ["GridColor"]
      311 GETTABLEKS                       R39 R1 K58 ["Color"]
      313 GETTABLEKS                       R38 R39 K59 ["Extended"]
      315 GETTABLEKS                       R37 R38 K60 ["Gray"]
      317 GETTABLEKS                       R36 R37 K63 ["Gray_300"]
      319 GETTABLEKS                       R35 R36 K62 ["Color3"]
      321 SETTABLEKS                       R35 R34 K56 ["AxisColor"]
      323 CALL                             R32 2 1
      324 SETTABLEKS                       R32 R31 K51 ["Guides"]
      326 GETUPVAL                         R33 2
      327 GETTABLEKS                       R32 R33 K22 ["createElement"]
      329 GETUPVAL                         R34 2
      330 GETTABLEKS                       R33 R34 K64 ["Fragment"]
      332 NEWTABLE                         R34 0 0
      334 MOVE                             R35 R14
      335 CALL                             R32 3 1
      336 SETTABLEKS                       R32 R31 K52 ["Points"]
      338 GETUPVAL                         R33 2
      339 GETTABLEKS                       R32 R33 K22 ["createElement"]
      341 LOADK                            R33 K65 ["UIDragDetector"]
      342 NEWTABLE                         R34 4 0
      344 GETIMPORT                        R35 K69 [Enum.UIDragDetectorDragStyle.Scriptable]
      346 SETTABLEKS                       R35 R34 K70 ["DragStyle"]
      348 GETUPVAL                         R37 2
      349 GETTABLEKS                       R36 R37 K38 ["Event"]
      351 GETTABLEKS                       R35 R36 K71 ["DragStart"]
      353 SETTABLE                         R17 R34 R35
      354 GETUPVAL                         R37 2
      355 GETTABLEKS                       R36 R37 K38 ["Event"]
      357 GETTABLEKS                       R35 R36 K72 ["DragContinue"]
      359 SETTABLE                         R18 R34 R35
      360 GETUPVAL                         R37 2
      361 GETTABLEKS                       R36 R37 K38 ["Event"]
      363 GETTABLEKS                       R35 R36 K73 ["DragEnd"]
      365 SETTABLE                         R19 R34 R35
      366 CALL                             R32 2 1
      367 SETTABLEKS                       R32 R31 K53 ["DragDetector"]
      369 CALL                             R28 3 1
      370 SETTABLEKS                       R28 R27 K41 ["Canvas"]
      372 CALL                             R24 3 1
      373 SETTABLEKS                       R24 R23 K30 ["ShiftListener"]
      375 CALL                             R20 3 -1
      376 RETURN                           R20 -1

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
       21 GETTABLEKS                       R4 R5 K13 ["Blend1DMap"]
       23 GETTABLEKS                       R3 R4 K14 ["Blend1DGuides"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R5 R0 K15 ["Util"]
       30 GETTABLEKS                       R4 R5 K16 ["Constants"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R9 R0 K10 ["Components"]
       37 GETTABLEKS                       R8 R9 K11 ["NodeView"]
       39 GETTABLEKS                       R7 R8 K12 ["CompositorNodeProperty"]
       41 GETTABLEKS                       R6 R7 K17 ["BlendMapShared"]
       43 GETTABLEKS                       R5 R6 K18 ["DraggablePin"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R7 R0 K19 ["Parent"]
       50 GETTABLEKS                       R6 R7 K20 ["Foundation"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R8 R0 K19 ["Parent"]
       57 GETTABLEKS                       R7 R8 K21 ["Graphing"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R9 R0 K22 ["Contexts"]
       64 GETTABLEKS                       R8 R9 K23 ["NativeGraphContext"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R12 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R12 K11 ["NodeView"]
       73 GETTABLEKS                       R10 R11 K12 ["CompositorNodeProperty"]
       75 GETTABLEKS                       R9 R10 K24 ["PropertyUtils"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K9 [require]
       80 GETTABLEKS                       R11 R0 K19 ["Parent"]
       82 GETTABLEKS                       R10 R11 K25 ["React"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R12 R0 K19 ["Parent"]
       89 GETTABLEKS                       R11 R12 K26 ["ReactUtils"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K9 [require]
       94 GETTABLEKS                       R13 R0 K27 ["Hooks"]
       96 GETTABLEKS                       R12 R13 K28 ["useAbsoluteSize"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K31 [Rect.new]
      101 LOADN                            R13 0
      102 LOADN                            R14 0
      103 LOADN                            R15 1
      104 LOADN                            R16 0
      105 CALL                             R12 4 1
      106 DUPCLOSURE                       R13 K32 [PROTO_0]
      107 CAPTURE                          VAL R1
      108 DUPCLOSURE                       R14 K33 [PROTO_10]
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R2
      121 RETURN                           R14 1
