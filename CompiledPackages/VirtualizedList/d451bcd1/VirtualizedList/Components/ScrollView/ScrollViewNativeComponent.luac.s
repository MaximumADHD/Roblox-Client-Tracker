PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_nativeRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 GETIMPORT                        R2 K4 [Vector2.new]
        7 GETTABLEKS                       R3 R0 K5 ["x"]
        9 GETTABLEKS                       R4 R0 K6 ["y"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K7 ["CanvasPosition"]
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["_startAnimatedScroll"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createRef"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R0 K2 ["_nativeRef"]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R0 K3 ["lastScrollEventTime"]
       11 GETTABLEKS                       R4 R0 K0 ["props"]
       13 GETTABLEKS                       R3 R4 K4 ["animationConfig"]
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETTABLEKS                       R3 R0 K0 ["props"]
       18 GETTABLEKS                       R2 R3 K4 ["animationConfig"]
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R2 1
       22 SETTABLEKS                       R2 R0 K4 ["animationConfig"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K5 ["createGroupMotor"]
       27 DUPTABLE                         R3 K8 [{"x", "y"}]
       28 LOADN                            R4 0
       29 SETTABLEKS                       R4 R3 K6 ["x"]
       31 LOADN                            R4 0
       32 SETTABLEKS                       R4 R3 K7 ["y"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R0 K9 ["motor"]
       37 GETTABLEKS                       R2 R0 K9 ["motor"]
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R2 R2 K10 ["onStep"]
       43 CALL                             R2 2 1
       44 SETTABLEKS                       R2 R0 K11 ["motorStepDisconnect"]
       46 GETTABLEKS                       R2 R0 K2 ["_nativeRef"]
       48 NEWCLOSURE                       R3 P1
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R3 R2 K12 ["animateScrollTo"]
       52 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_nativeRef"]
        2 GETTABLEKS                       R3 R4 K1 ["current"]
        4 JUMPIF                           R3 ; [+5]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["error"]
        8 LOADK                            R4 K3 ["scrollTo animation failed: ScrollViewNativeComponent._nativeRef instance is undefined"]
        9 CALL                             R3 1 0
       10 GETTABLEKS                       R5 R0 K0 ["_nativeRef"]
       12 GETTABLEKS                       R4 R5 K1 ["current"]
       14 GETTABLEKS                       R3 R4 K4 ["ScrollingDirection"]
       16 GETIMPORT                        R4 K7 [Enum.ScrollingDirection.X]
       18 JUMPIFNOTEQ                      R3 R4 ; [+48]
       20 GETTABLEKS                       R6 R0 K0 ["_nativeRef"]
       22 GETTABLEKS                       R5 R6 K1 ["current"]
       24 GETTABLEKS                       R4 R5 K8 ["AbsoluteCanvasSize"]
       26 GETTABLEKS                       R3 R4 K6 ["X"]
       28 JUMPIFNOTLT                      R3 R1 ; [+29]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K9 ["warn"]
       33 LOADK                            R5 K10 ["scrollTo animation goal out of bounds, setting X goal to: "]
       34 GETTABLEKS                       R11 R0 K0 ["_nativeRef"]
       36 GETTABLEKS                       R10 R11 K1 ["current"]
       38 GETTABLEKS                       R9 R10 K8 ["AbsoluteCanvasSize"]
       40 GETTABLEKS                       R8 R9 K6 ["X"]
       42 GETTABLEKS                       R12 R0 K0 ["_nativeRef"]
       44 GETTABLEKS                       R11 R12 K1 ["current"]
       46 GETTABLEKS                       R10 R11 K11 ["AbsoluteWindowSize"]
       48 GETTABLEKS                       R9 R10 K6 ["X"]
       50 SUB                              R7 R8 R9
       51 FASTCALL1                        TOSTRING R7 ; [+2]
       52 GETIMPORT                        R6 K13 [tostring]
       54 CALL                             R6 1 1
       55 CONCAT                           R4 R5 R6
       56 CALL                             R3 1 0
       57 RETURN                           R0 0
       58 LOADN                            R3 0
       59 JUMPIFNOTLT                      R1 R3 ; [+53]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R3 R4 K9 ["warn"]
       64 LOADK                            R4 K14 ["scrollTo animation goal out of bounds, setting X goal to: 0"]
       65 CALL                             R3 1 0
       66 RETURN                           R0 0
       67 GETTABLEKS                       R6 R0 K0 ["_nativeRef"]
       69 GETTABLEKS                       R5 R6 K1 ["current"]
       71 GETTABLEKS                       R4 R5 K8 ["AbsoluteCanvasSize"]
       73 GETTABLEKS                       R3 R4 K15 ["Y"]
       75 JUMPIFNOTLT                      R3 R2 ; [+29]
       77 GETUPVAL                         R4 0
       78 GETTABLEKS                       R3 R4 K9 ["warn"]
       80 LOADK                            R5 K16 ["scrollTo animation goal out of bounds, setting Y goal to: "]
       81 GETTABLEKS                       R11 R0 K0 ["_nativeRef"]
       83 GETTABLEKS                       R10 R11 K1 ["current"]
       85 GETTABLEKS                       R9 R10 K8 ["AbsoluteCanvasSize"]
       87 GETTABLEKS                       R8 R9 K15 ["Y"]
       89 GETTABLEKS                       R12 R0 K0 ["_nativeRef"]
       91 GETTABLEKS                       R11 R12 K1 ["current"]
       93 GETTABLEKS                       R10 R11 K11 ["AbsoluteWindowSize"]
       95 GETTABLEKS                       R9 R10 K15 ["Y"]
       97 SUB                              R7 R8 R9
       98 FASTCALL1                        TOSTRING R7 ; [+2]
       99 GETIMPORT                        R6 K13 [tostring]
      101 CALL                             R6 1 1
      102 CONCAT                           R4 R5 R6
      103 CALL                             R3 1 0
      104 RETURN                           R0 0
      105 LOADN                            R3 0
      106 JUMPIFNOTLT                      R2 R3 ; [+6]
      108 GETUPVAL                         R4 0
      109 GETTABLEKS                       R3 R4 K9 ["warn"]
      111 LOADK                            R4 K17 ["scrollTo animation goal out of bounds, setting Y goal to: 0"]
      112 CALL                             R3 1 0
      113 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R0 K3 ["_validateAnimatedScrollInputs"]
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R5 R0 K4 ["_nativeRef"]
       12 GETTABLEKS                       R4 R5 K5 ["current"]
       14 GETTABLEKS                       R3 R4 K6 ["CanvasPosition"]
       16 GETTABLEKS                       R4 R0 K7 ["motor"]
       18 DUPTABLE                         R6 K10 [{"x", "y"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K11 ["instant"]
       22 GETTABLEKS                       R8 R3 K12 ["X"]
       24 CALL                             R7 1 1
       25 SETTABLEKS                       R7 R6 K8 ["x"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K11 ["instant"]
       30 GETTABLEKS                       R8 R3 K13 ["Y"]
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K9 ["y"]
       35 NAMECALL                         R4 R4 K14 ["setGoal"]
       37 CALL                             R4 2 0
       38 GETTABLEKS                       R4 R0 K7 ["motor"]
       40 LOADN                            R6 0
       41 NAMECALL                         R4 R4 K15 ["step"]
       43 CALL                             R4 2 0
       44 GETTABLEKS                       R4 R0 K7 ["motor"]
       46 DUPTABLE                         R6 K10 [{"x", "y"}]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K16 ["spring"]
       50 MOVE                             R8 R1
       51 GETTABLEKS                       R9 R0 K17 ["animationConfig"]
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K8 ["x"]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R7 R8 K16 ["spring"]
       59 MOVE                             R8 R2
       60 GETTABLEKS                       R9 R0 K17 ["animationConfig"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K9 ["y"]
       65 NAMECALL                         R4 R4 K14 ["setGoal"]
       67 CALL                             R4 2 0
       68 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["assign"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_6:
        0 GETIMPORT                        R2 K3 [os.clock]
        2 CALL                             R2 0 1
        3 MULK                             R1 R2 K0 [1000]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K5 ["props"]
        7 GETTABLEKS                       R3 R4 K6 ["scrollEventThrottle"]
        9 ORK                              R2 R3 K4 [0]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K7 ["lastScrollEventTime"]
       13 SUB                              R3 R1 R4
       14 JUMPIFNOTLT                      R2 R3 ; [+11]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K5 ["props"]
       19 GETTABLEKS                       R3 R4 K8 ["onScroll"]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 0
       24 SETTABLEKS                       R1 R3 K7 ["lastScrollEventTime"]
       26 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       10 JUMPIFNOTEQ                      R2 R3 ; [+12]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K6 ["motor"]
       15 JUMPIFEQKNIL                     R2 ; [+7]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K6 ["motor"]
       20 NAMECALL                         R2 R2 K7 ["stop"]
       22 CALL                             R2 1 0
       23 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       25 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       27 JUMPIFNOTEQ                      R2 R3 ; [+9]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K8 ["props"]
       32 GETTABLEKS                       R2 R3 K9 ["onTouchStart"]
       34 MOVE                             R3 R0
       35 MOVE                             R4 R1
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Touch]
        4 JUMPIFNOTEQ                      R2 R3 ; [+9]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["props"]
        9 GETTABLEKS                       R2 R3 K5 ["onTouchEnd"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Touch]
        4 JUMPIFNOTEQ                      R2 R3 ; [+9]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["props"]
        9 GETTABLEKS                       R2 R3 K5 ["onTouchMove"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["props"]
        3 GETTABLEKS                       R4 R5 K1 ["onSelectionChanged"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 CALL                             R4 4 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isArray"]
        3 GETTABLEKS                       R4 R0 K1 ["props"]
        5 GETTABLEKS                       R3 R4 K2 ["style"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["reduce"]
       12 GETTABLEKS                       R3 R0 K1 ["props"]
       14 GETTABLEKS                       R2 R3 K2 ["style"]
       16 DUPCLOSURE                       R3 K4 [PROTO_5]
       17 CAPTURE                          UPVAL U1
       18 NEWTABLE                         R4 0 0
       20 CALL                             R1 3 1
       21 JUMP                             ; [+4]
       22 GETTABLEKS                       R2 R0 K1 ["props"]
       24 GETTABLEKS                       R1 R2 K2 ["style"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K5 ["assign"]
       29 NEWTABLE                         R3 16 0
       31 LOADK                            R4 K6 ["RCTScrollView"]
       32 SETTABLEKS                       R4 R3 K7 ["Name"]
       34 GETTABLEKS                       R6 R0 K1 ["props"]
       36 GETTABLEKS                       R5 R6 K8 ["scrollEnabled"]
       38 JUMPIFEQKNIL                     R5 ; [+6]
       40 GETTABLEKS                       R5 R0 K1 ["props"]
       42 GETTABLEKS                       R4 R5 K8 ["scrollEnabled"]
       44 JUMP                             ; [+1]
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R3 K9 ["ScrollingEnabled"]
       48 GETIMPORT                        R4 K12 [UDim2.new]
       50 LOADN                            R5 1
       51 LOADN                            R6 0
       52 LOADN                            R7 1
       53 LOADN                            R8 0
       54 CALL                             R4 4 1
       55 SETTABLEKS                       R4 R3 K13 ["Size"]
       57 GETTABLEKS                       R5 R0 K1 ["props"]
       59 GETTABLEKS                       R4 R5 K14 ["CanvasPosition"]
       61 SETTABLEKS                       R4 R3 K14 ["CanvasPosition"]
       63 GETTABLEKS                       R5 R0 K1 ["props"]
       65 GETTABLEKS                       R4 R5 K15 ["CanvasSize"]
       67 JUMPIF                           R4 ; [+7]
       68 GETIMPORT                        R4 K12 [UDim2.new]
       70 LOADN                            R5 0
       71 LOADN                            R6 0
       72 LOADN                            R7 0
       73 LOADN                            R8 0
       74 CALL                             R4 4 1
       75 SETTABLEKS                       R4 R3 K15 ["CanvasSize"]
       77 GETTABLEKS                       R5 R0 K1 ["props"]
       79 GETTABLEKS                       R4 R5 K16 ["AutomaticCanvasSize"]
       81 JUMPIF                           R4 ; [+2]
       82 GETIMPORT                        R4 K20 [Enum.AutomaticSize.XY]
       84 SETTABLEKS                       R4 R3 K16 ["AutomaticCanvasSize"]
       86 GETTABLEKS                       R6 R0 K1 ["props"]
       88 GETTABLEKS                       R5 R6 K21 ["horizontal"]
       90 JUMPIFNOT                        R5 ; [+6]
       91 GETTABLEKS                       R6 R0 K1 ["props"]
       93 GETTABLEKS                       R5 R6 K22 ["showsHorizontalScrollIndicator"]
       95 JUMPIFEQKB                       R5 FALSE ; [+12]
       97 GETTABLEKS                       R6 R0 K1 ["props"]
       99 GETTABLEKS                       R5 R6 K21 ["horizontal"]
      101 JUMPIF                           R5 ; [+8]
      102 GETTABLEKS                       R6 R0 K1 ["props"]
      104 GETTABLEKS                       R5 R6 K23 ["showsVerticalScrollIndicator"]
      106 JUMPIFNOTEQKB                    R5 FALSE ; [+3]
      108 LOADN                            R4 0
      109 JUMP                             ; [+1]
      110 LOADNIL                          R4
      111 SETTABLEKS                       R4 R3 K24 ["ScrollBarThickness"]
      113 GETTABLEKS                       R4 R0 K25 ["_nativeRef"]
      115 SETTABLEKS                       R4 R3 K26 ["ref"]
      117 GETUPVAL                         R5 2
      118 GETTABLEKS                       R4 R5 K27 ["AbsoluteWindowSize"]
      120 GETTABLEKS                       R6 R0 K1 ["props"]
      122 GETTABLEKS                       R5 R6 K28 ["onLayout"]
      124 SETTABLE                         R5 R3 R4
      125 GETUPVAL                         R5 2
      126 GETTABLEKS                       R4 R5 K14 ["CanvasPosition"]
      128 NEWCLOSURE                       R5 P1
      129 CAPTURE                          VAL R0
      130 SETTABLE                         R5 R3 R4
      131 GETUPVAL                         R5 3
      132 GETTABLEKS                       R4 R5 K29 ["InputBegan"]
      134 NEWCLOSURE                       R5 P2
      135 CAPTURE                          VAL R0
      136 SETTABLE                         R5 R3 R4
      137 GETUPVAL                         R5 3
      138 GETTABLEKS                       R4 R5 K30 ["InputEnded"]
      140 NEWCLOSURE                       R5 P3
      141 CAPTURE                          VAL R0
      142 SETTABLE                         R5 R3 R4
      143 GETUPVAL                         R5 3
      144 GETTABLEKS                       R4 R5 K31 ["InputChanged"]
      146 NEWCLOSURE                       R5 P4
      147 CAPTURE                          VAL R0
      148 SETTABLE                         R5 R3 R4
      149 GETUPVAL                         R5 3
      150 GETTABLEKS                       R4 R5 K32 ["SelectionChanged"]
      152 GETTABLEKS                       R7 R0 K1 ["props"]
      154 GETTABLEKS                       R6 R7 K33 ["onSelectionChanged"]
      156 JUMPIFNOT                        R6 ; [+3]
      157 NEWCLOSURE                       R5 P5
      158 CAPTURE                          VAL R0
      159 JUMP                             ; [+1]
      160 LOADNIL                          R5
      161 SETTABLE                         R5 R3 R4
      162 MOVE                             R4 R1
      163 CALL                             R2 2 1
      164 GETUPVAL                         R4 4
      165 GETTABLEKS                       R3 R4 K34 ["createElement"]
      167 LOADK                            R4 K35 ["ScrollingFrame"]
      168 MOVE                             R5 R2
      169 NEWTABLE                         R6 1 1
      171 GETTABLEKS                       R9 R0 K1 ["props"]
      173 GETTABLEKS                       R8 R9 K36 ["inverted"]
      175 JUMPIFNOT                        R8 ; [+36]
      176 GETTABLEKS                       R9 R0 K1 ["props"]
      178 GETTABLEKS                       R8 R9 K37 ["getItemLayout"]
      180 JUMPIF                           R8 ; [+31]
      181 GETUPVAL                         R8 4
      182 GETTABLEKS                       R7 R8 K34 ["createElement"]
      184 LOADK                            R8 K38 ["UIListLayout"]
      185 DUPTABLE                         R9 K41 [{"HorizontalAlignment", "VerticalAlignment"}]
      186 GETTABLEKS                       R12 R0 K1 ["props"]
      188 GETTABLEKS                       R11 R12 K21 ["horizontal"]
      190 JUMPIFNOT                        R11 ; [+3]
      191 GETIMPORT                        R10 K43 [Enum.HorizontalAlignment.Right]
      193 JUMP                             ; [+2]
      194 GETIMPORT                        R10 K45 [Enum.HorizontalAlignment.Center]
      196 SETTABLEKS                       R10 R9 K39 ["HorizontalAlignment"]
      198 GETTABLEKS                       R12 R0 K1 ["props"]
      200 GETTABLEKS                       R11 R12 K21 ["horizontal"]
      202 JUMPIFNOT                        R11 ; [+3]
      203 GETIMPORT                        R10 K46 [Enum.VerticalAlignment.Center]
      205 JUMP                             ; [+2]
      206 GETIMPORT                        R10 K48 [Enum.VerticalAlignment.Bottom]
      208 SETTABLEKS                       R10 R9 K40 ["VerticalAlignment"]
      210 CALL                             R7 2 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R7
      213 SETTABLEKS                       R7 R6 K49 ["Layout"]
      215 GETTABLEKS                       R8 R0 K1 ["props"]
      217 GETTABLEKS                       R7 R8 K50 ["children"]
      219 SETTABLEN                        R7 R6 1
      220 CALL                             R3 3 -1
      221 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["motor"]
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["motor"]
        6 NAMECALL                         R1 R1 K1 ["destroy"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K2 ["motorStepDisconnect"]
       11 JUMPIFEQKNIL                     R1 ; [+4]
       13 GETTABLEKS                       R1 R0 K2 ["motorStepDisconnect"]
       15 CALL                             R1 0 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["console"]
       18 GETTABLEKS                       R4 R2 K7 ["Array"]
       20 GETTABLEKS                       R5 R2 K8 ["Object"]
       22 GETIMPORT                        R6 K4 [require]
       24 GETTABLEKS                       R7 R1 K9 ["React"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R6 K10 ["Change"]
       29 GETTABLEKS                       R8 R6 K11 ["Event"]
       31 GETIMPORT                        R9 K4 [require]
       33 GETTABLEKS                       R10 R1 K12 ["Otter"]
       35 CALL                             R9 1 1
       36 DUPTABLE                         R10 K15 [{"restingPositionLimit", "restingVelocityLimit"}]
       37 LOADN                            R11 1
       38 SETTABLEKS                       R11 R10 K13 ["restingPositionLimit"]
       40 LOADN                            R11 10
       41 SETTABLEKS                       R11 R10 K14 ["restingVelocityLimit"]
       43 GETTABLEKS                       R11 R6 K16 ["Component"]
       45 LOADK                            R13 K17 ["ScrollViewNativeComponent"]
       46 NAMECALL                         R11 R11 K18 ["extend"]
       48 CALL                             R11 2 1
       49 DUPCLOSURE                       R12 K19 [PROTO_2]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R12 R11 K20 ["init"]
       55 DUPCLOSURE                       R12 K21 [PROTO_3]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R12 R11 K22 ["_validateAnimatedScrollInputs"]
       59 DUPCLOSURE                       R12 K23 [PROTO_4]
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R12 R11 K24 ["_startAnimatedScroll"]
       63 DUPCLOSURE                       R12 K25 [PROTO_11]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R12 R11 K26 ["render"]
       71 DUPCLOSURE                       R12 K27 [PROTO_12]
       72 SETTABLEKS                       R12 R11 K28 ["willUnmount"]
       74 RETURN                           R11 1
