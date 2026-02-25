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
       13 JUMPIFNOTLT                      R4 R3 ; [+20]
       15 GETUPVAL                         R3 1
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K0 ["current"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K2 ["panViewport"]
       22 LOADNIL                          R4
       23 GETTABLEKS                       R8 R2 K4 ["Y"]
       25 FASTCALL1                        MATH_SIGN R8 ; [+2]
       26 GETIMPORT                        R7 K7 [math.sign]
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R8 R2 K1 ["Magnitude"]
       31 MUL                              R6 R7 R8
       32 DIVK                             R5 R6 K3 [100]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

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
       47 JUMPIFNOT                        R2 ; [+22]
       48 GETUPVAL                         R2 0
       49 MOVE                             R3 R1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       54 GETIMPORT                        R3 K16 [Enum.UserInputType.MouseWheel]
       56 JUMPIFNOTEQ                      R2 R3 ; [+13]
       58 GETUPVAL                         R3 4
       59 GETTABLEKS                       R2 R3 K17 ["panViewport"]
       61 GETIMPORT                        R3 K19 [Vector2.zero]
       63 LOADK                            R5 K20 [0.1]
       64 GETTABLEKS                       R7 R0 K3 ["Position"]
       66 GETTABLEKS                       R6 R7 K21 ["Z"]
       68 MUL                              R4 R5 R6
       69 CALL                             R2 2 0
       70 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 MOVE                             R2 R0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["InputEnded"]
       10 GETUPVAL                         R5 1
       11 NAMECALL                         R3 R3 K1 ["Connect"]
       13 CALL                             R3 2 -1
       14 FASTCALL                         TABLE_INSERT ; [+2]
       15 GETIMPORT                        R1 K4 [table.insert]
       17 CALL                             R1 -1 0
       18 MOVE                             R2 R0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K5 ["InputBegan"]
       22 GETUPVAL                         R5 2
       23 NAMECALL                         R3 R3 K1 ["Connect"]
       25 CALL                             R3 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R1 K4 [table.insert]
       29 CALL                             R1 -1 0
       30 MOVE                             R2 R0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K6 ["InputChanged"]
       34 GETUPVAL                         R5 3
       35 NAMECALL                         R3 R3 K1 ["Connect"]
       37 CALL                             R3 2 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R1 K4 [table.insert]
       41 CALL                             R1 -1 0
       42 NEWCLOSURE                       R1 P0
       43 CAPTURE                          VAL R0
       44 RETURN                           R1 1

PROTO_7:
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
       67 GETTABLEKS                       R14 R1 K7 ["panViewport"]
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
       86 GETUPVAL                         R13 0
       87 GETTABLEKS                       R12 R13 K6 ["useCallback"]
       89 NEWCLOSURE                       R13 P3
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R1
       95 NEWTABLE                         R14 0 5
       97 GETTABLEKS                       R15 R1 K7 ["panViewport"]
       99 MOVE                             R16 R10
      100 MOVE                             R17 R9
      101 MOVE                             R18 R8
      102 MOVE                             R19 R5
      103 SETLIST                          R14 R15 5 [1]
      105 CALL                             R12 2 1
      106 GETUPVAL                         R14 0
      107 GETTABLEKS                       R13 R14 K6 ["useCallback"]
      109 NEWCLOSURE                       R14 P4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R1
      118 NEWTABLE                         R15 0 7
      120 MOVE                             R16 R7
      121 MOVE                             R17 R3
      122 GETTABLEKS                       R18 R0 K9 ["onRightClick"]
      124 MOVE                             R19 R10
      125 MOVE                             R20 R9
      126 MOVE                             R21 R8
      127 GETTABLEKS                       R22 R1 K8 ["setHintIsDragging"]
      129 SETLIST                          R15 R16 7 [1]
      131 CALL                             R13 2 1
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R14 R15 K10 ["useEffect"]
      135 NEWCLOSURE                       R15 P5
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R12
      140 NEWTABLE                         R16 0 4
      142 MOVE                             R17 R3
      143 MOVE                             R18 R13
      144 MOVE                             R19 R11
      145 MOVE                             R20 R12
      146 SETLIST                          R16 R17 4 [1]
      148 CALL                             R14 2 0
      149 GETUPVAL                         R15 0
      150 GETTABLEKS                       R14 R15 K11 ["createElement"]
      152 GETUPVAL                         R16 3
      153 GETTABLEKS                       R15 R16 K12 ["View"]
      155 DUPTABLE                         R16 K17 [{"tag", "ZIndex", "ref", "testId"}]
      156 LOADK                            R17 K18 ["size-full-full"]
      157 SETTABLEKS                       R17 R16 K13 ["tag"]
      159 GETTABLEKS                       R17 R0 K14 ["ZIndex"]
      161 SETTABLEKS                       R17 R16 K14 ["ZIndex"]
      163 SETTABLEKS                       R4 R16 K15 ["ref"]
      165 LOADK                            R17 K19 ["NodeViewScroller"]
      166 SETTABLEKS                       R17 R16 K16 ["testId"]
      168 CALL                             R14 2 -1
      169 RETURN                           R14 -1

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
       30 GETTABLEKS                       R6 R0 K10 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K11 ["ViewportRectContext"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_7]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
