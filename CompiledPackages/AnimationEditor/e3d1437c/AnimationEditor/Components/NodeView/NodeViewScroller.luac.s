PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 SUB                              R2 R1 R0
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R0 R3 K0 ["current"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["setHintIsDragging"]
       13 LOADB                            R4 1
       14 CALL                             R3 1 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K2 ["panViewport"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 SUB                              R2 R1 R0
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R0 R3 K0 ["current"]
       10 GETTABLEKS                       R3 R2 K1 ["Magnitude"]
       12 LOADN                            R4 2
       13 JUMPIFNOTLT                      R4 R3 ; [+19]
       15 GETUPVAL                         R3 1
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K0 ["current"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K2 ["zoomViewport"]
       22 GETTABLEKS                       R7 R2 K4 ["Y"]
       24 FASTCALL1                        MATH_SIGN R7 ; [+2]
       25 GETIMPORT                        R6 K7 [math.sign]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R7 R2 K1 ["Magnitude"]
       30 MUL                              R5 R6 R7
       31 DIVK                             R4 R5 K3 [100]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R1 R2 ; [+26]
        6 GETIMPORT                        R3 K6 [Enum.ModifierKey.Alt]
        8 NAMECALL                         R1 R0 K7 ["IsModifierKeyDown"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+14]
       12 GETIMPORT                        R1 K10 [Vector2.new]
       14 GETTABLEKS                       R3 R0 K11 ["Position"]
       16 GETTABLEKS                       R2 R3 K12 ["X"]
       18 GETTABLEKS                       R4 R0 K11 ["Position"]
       20 GETTABLEKS                       R3 R4 K13 ["Y"]
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 0
       24 SETTABLEKS                       R1 R2 K14 ["current"]
       26 GETUPVAL                         R1 1
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K14 ["current"]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       33 GETIMPORT                        R2 K16 [Enum.UserInputType.MouseButton3]
       35 JUMPIFNOTEQ                      R1 R2 ; [+20]
       37 GETIMPORT                        R1 K10 [Vector2.new]
       39 GETTABLEKS                       R3 R0 K11 ["Position"]
       41 GETTABLEKS                       R2 R3 K12 ["X"]
       43 GETTABLEKS                       R4 R0 K11 ["Position"]
       45 GETTABLEKS                       R3 R4 K13 ["Y"]
       47 CALL                             R1 2 1
       48 GETUPVAL                         R2 2
       49 SETTABLEKS                       R1 R2 K14 ["current"]
       51 GETUPVAL                         R3 3
       52 GETTABLEKS                       R2 R3 K17 ["setHintIsDragging"]
       54 LOADB                            R3 1
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R3 K4 ["X"]
        6 GETTABLEKS                       R4 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R4 K5 ["Y"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       13 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton2]
       15 JUMPIFNOTEQ                      R2 R3 ; [+5]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       23 GETIMPORT                        R3 K11 [Enum.UserInputType.MouseButton3]
       25 JUMPIFNOTEQ                      R2 R3 ; [+5]
       27 GETUPVAL                         R2 1
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       33 GETIMPORT                        R3 K13 [Enum.UserInputType.MouseMovement]
       35 JUMPIFNOTEQ                      R2 R3 ; [+16]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K14 ["current"]
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETUPVAL                         R2 1
       42 MOVE                             R3 R1
       43 CALL                             R2 1 0
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R2 R3 K14 ["current"]
       47 JUMPIFNOT                        R2 ; [+46]
       48 GETUPVAL                         R2 0
       49 MOVE                             R3 R1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       54 GETIMPORT                        R3 K16 [Enum.UserInputType.MouseWheel]
       56 JUMPIFNOTEQ                      R2 R3 ; [+37]
       58 GETUPVAL                         R3 4
       59 JUMPIFNOT                        R3 ; [+21]
       60 GETIMPORT                        R3 K2 [Vector2.new]
       62 GETTABLEKS                       R5 R0 K3 ["Position"]
       64 GETTABLEKS                       R4 R5 K4 ["X"]
       66 GETTABLEKS                       R6 R0 K3 ["Position"]
       68 GETTABLEKS                       R5 R6 K5 ["Y"]
       70 CALL                             R3 2 1
       71 GETUPVAL                         R6 4
       72 GETTABLEKS                       R5 R6 K17 ["AbsolutePosition"]
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R7 R8 K19 ["AbsoluteSize"]
       77 MULK                             R6 R7 K18 [0.5]
       78 ADD                              R4 R5 R6
       79 SUB                              R2 R3 R4
       80 JUMP                             ; [+2]
       81 GETIMPORT                        R2 K21 [Vector2.zero]
       83 GETUPVAL                         R4 5
       84 GETTABLEKS                       R3 R4 K22 ["zoomViewport"]
       86 LOADK                            R5 K23 [0.1]
       87 GETTABLEKS                       R7 R0 K3 ["Position"]
       89 GETTABLEKS                       R6 R7 K24 ["Z"]
       91 MUL                              R4 R5 R6
       92 MOVE                             R5 R2
       93 CALL                             R3 2 0
       94 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R3 K4 ["X"]
        6 GETTABLEKS                       R4 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R4 K5 ["Y"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       13 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton2]
       15 JUMPIFNOTEQ                      R2 R3 ; [+32]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K10 ["current"]
       23 JUMPIF                           R2 ; [+15]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K11 ["onRightClick"]
       27 JUMPIFNOT                        R2 ; [+11]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K11 ["onRightClick"]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R4 R5 K10 ["current"]
       34 GETTABLEKS                       R3 R4 K12 ["absToPlot"]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 -1
       38 CALL                             R2 -1 0
       39 GETUPVAL                         R2 1
       40 LOADB                            R3 0
       41 SETTABLEKS                       R3 R2 K10 ["current"]
       43 GETUPVAL                         R2 4
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K10 ["current"]
       47 RETURN                           R0 0
       48 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       50 GETIMPORT                        R3 K14 [Enum.UserInputType.MouseButton3]
       52 JUMPIFNOTEQ                      R2 R3 ; [+13]
       54 GETUPVAL                         R2 5
       55 MOVE                             R3 R1
       56 CALL                             R2 1 0
       57 GETUPVAL                         R2 6
       58 LOADNIL                          R3
       59 SETTABLEKS                       R3 R2 K10 ["current"]
       61 GETUPVAL                         R3 7
       62 GETTABLEKS                       R2 R3 K15 ["setHintIsDragging"]
       64 LOADB                            R3 0
       65 CALL                             R2 1 0
       66 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["current"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 DUPCLOSURE                       R1 K0 [PROTO_6]
        7 MOVE                             R3 R0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K1 ["InputEnded"]
       11 GETUPVAL                         R7 1
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R7
       14 NAMECALL                         R4 R4 K2 ["Connect"]
       16 CALL                             R4 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R2 K5 [table.insert]
       20 CALL                             R2 -1 0
       21 MOVE                             R3 R0
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K6 ["InputBegan"]
       25 GETUPVAL                         R7 2
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R7
       28 NAMECALL                         R4 R4 K2 ["Connect"]
       30 CALL                             R4 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R2 K5 [table.insert]
       34 CALL                             R2 -1 0
       35 MOVE                             R3 R0
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K7 ["InputChanged"]
       39 GETUPVAL                         R7 3
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R7
       42 NAMECALL                         R4 R4 K2 ["Connect"]
       44 CALL                             R4 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R2 K5 [table.insert]
       48 CALL                             R2 -1 0
       49 NEWCLOSURE                       R2 P2
       50 CAPTURE                          VAL R0
       51 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["CanvasContext"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K3 ["useState"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 2
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["useRef"]
       22 LOADNIL                          R6
       23 CALL                             R5 1 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K4 ["useRef"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K4 ["useRef"]
       32 LOADB                            R8 0
       33 CALL                             R7 1 1
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K4 ["useRef"]
       37 MOVE                             R9 R2
       38 CALL                             R8 1 1
       39 SETTABLEKS                       R2 R8 K5 ["current"]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R1
       47 NEWTABLE                         R11 0 3
       49 MOVE                             R12 R5
       50 GETTABLEKS                       R13 R1 K7 ["panViewport"]
       52 GETTABLEKS                       R14 R1 K8 ["setHintIsDragging"]
       54 SETLIST                          R11 R12 3 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R10 R11 K6 ["useCallback"]
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 NEWTABLE                         R12 0 2
       66 MOVE                             R13 R6
       67 GETTABLEKS                       R14 R1 K9 ["zoomViewport"]
       69 SETLIST                          R12 R13 2 [1]
       71 CALL                             R10 2 1
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R11 R12 K6 ["useCallback"]
       75 NEWCLOSURE                       R12 P2
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R1
       80 NEWTABLE                         R13 0 1
       82 MOVE                             R14 R8
       83 SETLIST                          R13 R14 1 [1]
       85 CALL                             R11 2 1
       86 GETUPVAL                         R13 3
       87 GETTABLEKS                       R12 R13 K10 ["useRefToState"]
       89 MOVE                             R13 R11
       90 CALL                             R12 1 1
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R13 R14 K6 ["useCallback"]
       94 NEWCLOSURE                       R14 P3
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R1
      101 NEWTABLE                         R15 0 6
      103 GETTABLEKS                       R16 R1 K9 ["zoomViewport"]
      105 MOVE                             R17 R10
      106 MOVE                             R18 R9
      107 MOVE                             R19 R8
      108 MOVE                             R20 R5
      109 MOVE                             R21 R3
      110 SETLIST                          R15 R16 6 [1]
      112 CALL                             R13 2 1
      113 GETUPVAL                         R15 3
      114 GETTABLEKS                       R14 R15 K10 ["useRefToState"]
      116 MOVE                             R15 R13
      117 CALL                             R14 1 1
      118 GETUPVAL                         R16 0
      119 GETTABLEKS                       R15 R16 K6 ["useCallback"]
      121 NEWCLOSURE                       R16 P4
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R1
      130 NEWTABLE                         R17 0 7
      132 MOVE                             R18 R7
      133 MOVE                             R19 R3
      134 GETTABLEKS                       R20 R0 K11 ["onRightClick"]
      136 MOVE                             R21 R10
      137 MOVE                             R22 R9
      138 MOVE                             R23 R8
      139 GETTABLEKS                       R24 R1 K8 ["setHintIsDragging"]
      141 SETLIST                          R17 R18 7 [1]
      143 CALL                             R15 2 1
      144 GETUPVAL                         R17 3
      145 GETTABLEKS                       R16 R17 K10 ["useRefToState"]
      147 MOVE                             R17 R15
      148 CALL                             R16 1 1
      149 GETUPVAL                         R18 0
      150 GETTABLEKS                       R17 R18 K12 ["useEffect"]
      152 NEWCLOSURE                       R18 P5
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R14
      157 NEWTABLE                         R19 0 1
      159 MOVE                             R20 R3
      160 SETLIST                          R19 R20 1 [1]
      162 CALL                             R17 2 0
      163 GETUPVAL                         R18 0
      164 GETTABLEKS                       R17 R18 K13 ["createElement"]
      166 GETUPVAL                         R19 4
      167 GETTABLEKS                       R18 R19 K14 ["View"]
      169 DUPTABLE                         R19 K19 [{"tag", "ZIndex", "ref", "testId"}]
      170 LOADK                            R20 K20 ["size-full-full"]
      171 SETTABLEKS                       R20 R19 K15 ["tag"]
      173 GETTABLEKS                       R20 R0 K16 ["ZIndex"]
      175 SETTABLEKS                       R20 R19 K16 ["ZIndex"]
      177 SETTABLEKS                       R4 R19 K17 ["ref"]
      179 LOADK                            R20 K21 ["NodeViewScroller"]
      180 SETTABLEKS                       R20 R19 K18 ["testId"]
      182 CALL                             R17 2 -1
      183 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K12 ["ViewportRectContext"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_9]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 RETURN                           R6 1
