PROTO_0:
        0 LOADK                            R1 K0 [0.1]
        1 JUMPIFNOTLE                      R1 R0 ; [+5]
        3 LOADN                            R1 1
        4 JUMPIFNOTLE                      R0 R1 ; [+2]
        6 RETURN                           R0 1
        7 LOADK                            R1 K0 [0.1]
        8 JUMPIFNOTLT                      R0 R1 ; [+9]
       10 SUBRK                            R2 K0 [0.1] R0
       11 DIVK                             R1 R2 K0 [0.1]
       12 MULK                             R6 R1 K2 [20]
       13 ADDK                             R5 R6 K1 [1]
       14 DIV                              R4 R1 R5
       15 SUBRK                            R3 K1 [1] R4
       16 MULK                             R2 R3 K0 [0.1]
       17 RETURN                           R2 1
       18 SUBK                             R1 R0 K1 [1]
       19 MULK                             R5 R1 K2 [20]
       20 ADDK                             R4 R5 K1 [1]
       21 DIV                              R3 R1 R4
       22 ADDK                             R2 R3 K1 [1]
       23 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["LayerCollector"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["getMousePosition"]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R5 R2 K3 ["X"]
       14 GETTABLEKS                       R6 R2 K4 ["Y"]
       16 NAMECALL                         R3 R1 K5 ["GetGuiObjectsAtPosition"]
       18 CALL                             R3 3 3
       19 FORGPREP                         R3
       20 JUMPIFEQ                         R7 R0 ; [+18]
       22 LOADK                            R10 K6 ["ScrollingFrame"]
       23 NAMECALL                         R8 R7 K7 ["IsA"]
       25 CALL                             R8 2 1
       26 JUMPIF                           R8 ; [+8]
       27 LOADK                            R10 K8 ["GuiObject"]
       28 NAMECALL                         R8 R7 K7 ["IsA"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+5]
       32 GETTABLEKS                       R8 R7 K9 ["Active"]
       34 JUMPIFNOT                        R8 ; [+2]
       35 LOADB                            R8 1
       36 RETURN                           R8 1
       37 FORGLOOP                         R3 2 ; [-18]
       39 LOADB                            R3 0
       40 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 SUB                              R2 R1 R0
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R0 R3 K0 ["current"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["setHintIsDragging"]
       13 LOADB                            R4 1
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["panViewport"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 LOADN                            R6 1
        4 LOADN                            R7 -1
        5 CALL                             R5 2 1
        6 MUL                              R3 R4 R5
        7 GETUPVAL                         R4 1
        8 DIV                              R2 R3 R4
        9 ADD                              R1 R0 R2
       10 GETUPVAL                         R5 0
       11 GETIMPORT                        R6 K2 [Vector2.new]
       13 LOADN                            R7 1
       14 LOADN                            R8 -1
       15 CALL                             R6 2 1
       16 MUL                              R4 R5 R6
       17 GETUPVAL                         R5 2
       18 DIV                              R3 R4 R5
       19 ADD                              R2 R0 R3
       20 SUB                              R4 R1 R2
       21 ADD                              R3 R0 R4
       22 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 1
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R0 0
       13 SUB                              R2 R1 R0
       14 GETUPVAL                         R3 0
       15 SETTABLEKS                       R0 R3 K0 ["current"]
       17 GETTABLEKS                       R3 R2 K1 ["Magnitude"]
       19 LOADN                            R4 2
       20 JUMPIFNOTLT                      R4 R3 ; [+128]
       22 GETUPVAL                         R3 3
       23 LOADB                            R4 1
       24 SETTABLEKS                       R4 R3 K0 ["current"]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K0 ["current"]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K0 ["current"]
       32 JUMPIFEQKNIL                     R3 ; [+3]
       34 JUMPIFNOTEQKNIL                  R4 ; [+2]
       36 RETURN                           R0 0
       37 LOADNIL                          R5
       38 GETUPVAL                         R6 6
       39 GETTABLEKS                       R6 R6 K0 ["current"]
       41 JUMPIFEQKNIL                     R6 ; [+38]
       43 LOADN                            R7 20
       44 JUMPIFNOTLE                      R7 R6 ; [+35]
       46 SUB                              R7 R0 R3
       47 GETTABLEKS                       R7 R7 K1 ["Magnitude"]
       49 DIV                              R8 R7 R6
       50 GETUPVAL                         R9 7
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+1]
       53 DIVRK                            R8 K2 [1] R8
       54 MUL                              R9 R4 R8
       55 LOADK                            R10 K3 [0.1]
       56 JUMPIFNOTLE                      R10 R9 ; [+6]
       58 LOADN                            R10 1
       59 JUMPIFNOTLE                      R9 R10 ; [+3]
       61 MOVE                             R5 R9
       62 JUMP                             ; [+56]
       63 LOADK                            R10 K3 [0.1]
       64 JUMPIFNOTLT                      R9 R10 ; [+9]
       66 SUBRK                            R11 K3 [0.1] R9
       67 DIVK                             R10 R11 K3 [0.1]
       68 MULK                             R14 R10 K4 [20]
       69 ADDK                             R13 R14 K2 [1]
       70 DIV                              R12 R10 R13
       71 SUBRK                            R11 K2 [1] R12
       72 MULK                             R5 R11 K3 [0.1]
       73 JUMP                             ; [+45]
       74 SUBK                             R10 R9 K2 [1]
       75 MULK                             R13 R10 K4 [20]
       76 ADDK                             R12 R13 K2 [1]
       77 DIV                              R11 R10 R12
       78 ADDK                             R5 R11 K2 [1]
       79 JUMP                             ; [+39]
       80 SUB                              R7 R3 R0
       81 GETTABLEKS                       R10 R7 K5 ["Y"]
       83 GETTABLEKS                       R11 R7 K6 ["X"]
       85 ADD                              R9 R10 R11
       86 MINUS                            R8 R9
       87 GETUPVAL                         R9 7
       88 CALL                             R9 0 1
       89 JUMPIFNOT                        R9 ; [+1]
       90 MINUS                            R8 R8
       91 LOADN                            R11 2
       92 DIVK                             R12 R8 K7 [200]
       93 POW                              R10 R11 R12
       94 MUL                              R9 R4 R10
       95 LOADK                            R10 K3 [0.1]
       96 JUMPIFNOTLE                      R10 R9 ; [+6]
       98 LOADN                            R10 1
       99 JUMPIFNOTLE                      R9 R10 ; [+3]
      101 MOVE                             R5 R9
      102 JUMP                             ; [+16]
      103 LOADK                            R10 K3 [0.1]
      104 JUMPIFNOTLT                      R9 R10 ; [+9]
      106 SUBRK                            R11 K3 [0.1] R9
      107 DIVK                             R10 R11 K3 [0.1]
      108 MULK                             R14 R10 K4 [20]
      109 ADDK                             R13 R14 K2 [1]
      110 DIV                              R12 R10 R13
      111 SUBRK                            R11 K2 [1] R12
      112 MULK                             R5 R11 K3 [0.1]
      113 JUMP                             ; [+5]
      114 SUBK                             R10 R9 K2 [1]
      115 MULK                             R13 R10 K4 [20]
      116 ADDK                             R12 R13 K2 [1]
      117 DIV                              R11 R10 R12
      118 ADDK                             R5 R11 K2 [1]
      119 GETUPVAL                         R7 1
      120 JUMPIFNOT                        R7 ; [+22]
      121 GETUPVAL                         R9 1
      122 GETTABLEKS                       R9 R9 K8 ["AbsolutePosition"]
      124 GETUPVAL                         R11 1
      125 GETTABLEKS                       R11 R11 K10 ["AbsoluteSize"]
      127 MULK                             R10 R11 K9 [0.5]
      128 ADD                              R8 R9 R10
      129 SUB                              R7 R3 R8
      130 GETUPVAL                         R8 8
      131 GETTABLEKS                       R8 R8 K11 ["observeZoomRatio"]
      133 LOADB                            R9 0
      134 CALL                             R8 1 1
      135 GETUPVAL                         R9 8
      136 GETTABLEKS                       R9 R9 K12 ["setViewportPosition"]
      138 NEWCLOSURE                       R10 P0
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R8
      141 CAPTURE                          REF R5
      142 CALL                             R9 1 0
      143 GETUPVAL                         R7 8
      144 GETTABLEKS                       R7 R7 K13 ["setZoomRatio"]
      146 MOVE                             R8 R5
      147 CALL                             R7 1 0
      148 CLOSEUPVALS                      R5
      149 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R1 R2 ; [+61]
        6 GETIMPORT                        R1 K6 [Vector2.new]
        8 GETTABLEKS                       R2 R0 K7 ["Position"]
       10 GETTABLEKS                       R2 R2 K8 ["X"]
       12 GETTABLEKS                       R3 R0 K7 ["Position"]
       14 GETTABLEKS                       R3 R3 K9 ["Y"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 SETTABLEKS                       R1 R2 K10 ["current"]
       20 GETIMPORT                        R4 K13 [Enum.ModifierKey.Alt]
       22 NAMECALL                         R2 R0 K14 ["IsModifierKeyDown"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+35]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K10 ["current"]
       29 OR                               R2 R3 R1
       30 GETUPVAL                         R3 2
       31 SETTABLEKS                       R2 R3 K10 ["current"]
       33 GETUPVAL                         R3 3
       34 SUB                              R4 R1 R2
       35 GETTABLEKS                       R4 R4 K15 ["Magnitude"]
       37 SETTABLEKS                       R4 R3 K10 ["current"]
       39 GETUPVAL                         R3 4
       40 GETUPVAL                         R4 5
       41 GETTABLEKS                       R4 R4 K16 ["observeZoomRatio"]
       43 LOADB                            R5 0
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K10 ["current"]
       47 GETUPVAL                         R3 6
       48 SETTABLEKS                       R1 R3 K10 ["current"]
       50 GETUPVAL                         R3 7
       51 SETTABLEKS                       R1 R3 K10 ["current"]
       53 GETUPVAL                         R3 8
       54 GETUPVAL                         R4 5
       55 GETTABLEKS                       R4 R4 K16 ["observeZoomRatio"]
       57 LOADB                            R5 0
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K10 ["current"]
       61 GETUPVAL                         R2 9
       62 LOADB                            R3 0
       63 SETTABLEKS                       R3 R2 K10 ["current"]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       68 GETIMPORT                        R2 K18 [Enum.UserInputType.MouseButton3]
       70 JUMPIFNOTEQ                      R1 R2 ; [+20]
       72 GETIMPORT                        R1 K6 [Vector2.new]
       74 GETTABLEKS                       R2 R0 K7 ["Position"]
       76 GETTABLEKS                       R2 R2 K8 ["X"]
       78 GETTABLEKS                       R3 R0 K7 ["Position"]
       80 GETTABLEKS                       R3 R3 K9 ["Y"]
       82 CALL                             R1 2 1
       83 GETUPVAL                         R2 10
       84 SETTABLEKS                       R1 R2 K10 ["current"]
       86 GETUPVAL                         R2 5
       87 GETTABLEKS                       R2 R2 K19 ["setHintIsDragging"]
       89 LOADB                            R3 1
       90 CALL                             R2 1 0
       91 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R2 K4 ["X"]
        6 GETTABLEKS                       R3 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R3 K5 ["Y"]
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
       35 JUMPIFNOTEQ                      R2 R3 ; [+15]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K14 ["current"]
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETUPVAL                         R2 1
       42 MOVE                             R3 R1
       43 CALL                             R2 1 0
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K14 ["current"]
       47 JUMPIFNOT                        R2 ; [+3]
       48 GETUPVAL                         R2 0
       49 MOVE                             R3 R1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R2 K4 ["X"]
        6 GETTABLEKS                       R3 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R3 K5 ["Y"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       13 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton2]
       15 JUMPIFNOTEQ                      R2 R3 ; [+102]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K10 ["current"]
       23 JUMPIF                           R2 ; [+18]
       24 GETUPVAL                         R2 2
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K11 ["isMenuOpen"]
       29 CALL                             R2 0 1
       30 JUMPIF                           R2 ; [+11]
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R2 R2 K12 ["showMenu"]
       34 GETUPVAL                         R3 5
       35 GETTABLEKS                       R3 R3 K10 ["current"]
       37 GETTABLEKS                       R3 R3 K13 ["absToPlot"]
       39 MOVE                             R4 R1
       40 CALL                             R3 1 -1
       41 CALL                             R2 -1 0
       42 GETUPVAL                         R2 6
       43 GETTABLEKS                       R2 R2 K14 ["observeZoomRatio"]
       45 LOADB                            R3 0
       46 CALL                             R2 1 1
       47 LOADK                            R3 K15 [0.1]
       48 JUMPIFLT                         R2 R3 ; [+4]
       50 LOADN                            R3 1
       51 JUMPIFNOTLT                      R3 R2 ; [+33]
       53 GETUPVAL                         R3 7
       54 GETTABLEKS                       R3 R3 K10 ["current"]
       56 LOADNIL                          R4
       57 JUMPIFEQKNIL                     R3 ; [+13]
       59 GETUPVAL                         R5 8
       60 JUMPIFEQKNIL                     R5 ; [+10]
       62 GETUPVAL                         R6 8
       63 GETTABLEKS                       R6 R6 K16 ["AbsolutePosition"]
       65 GETUPVAL                         R8 8
       66 GETTABLEKS                       R8 R8 K18 ["AbsoluteSize"]
       68 MULK                             R7 R8 K17 [0.5]
       69 ADD                              R5 R6 R7
       70 SUB                              R4 R3 R5
       71 GETUPVAL                         R5 6
       72 GETTABLEKS                       R5 R5 K19 ["setZoomRatioTarget"]
       74 LOADK                            R8 K15 [0.1]
       75 LOADN                            R9 1
       76 FASTCALL3                        MATH_CLAMP R2 R8 R9
       78 MOVE                             R7 R2
       79 GETIMPORT                        R6 K22 [math.clamp]
       81 CALL                             R6 3 1
       82 LOADB                            R7 0
       83 MOVE                             R8 R4
       84 CALL                             R5 3 0
       85 GETUPVAL                         R3 1
       86 LOADB                            R4 0
       87 SETTABLEKS                       R4 R3 K10 ["current"]
       89 GETUPVAL                         R3 9
       90 LOADNIL                          R4
       91 SETTABLEKS                       R4 R3 K10 ["current"]
       93 GETUPVAL                         R3 10
       94 LOADNIL                          R4
       95 SETTABLEKS                       R4 R3 K10 ["current"]
       97 GETUPVAL                         R3 11
       98 LOADNIL                          R4
       99 SETTABLEKS                       R4 R3 K10 ["current"]
      101 GETUPVAL                         R3 7
      102 LOADNIL                          R4
      103 SETTABLEKS                       R4 R3 K10 ["current"]
      105 GETUPVAL                         R3 12
      106 LOADNIL                          R4
      107 SETTABLEKS                       R4 R3 K10 ["current"]
      109 GETUPVAL                         R3 13
      110 LOADNIL                          R4
      111 SETTABLEKS                       R4 R3 K10 ["current"]
      113 GETUPVAL                         R3 14
      114 LOADNIL                          R4
      115 SETTABLEKS                       R4 R3 K10 ["current"]
      117 RETURN                           R0 0
      118 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
      120 GETIMPORT                        R3 K24 [Enum.UserInputType.MouseButton3]
      122 JUMPIFNOTEQ                      R2 R3 ; [+13]
      124 GETUPVAL                         R2 15
      125 MOVE                             R3 R1
      126 CALL                             R2 1 0
      127 GETUPVAL                         R2 16
      128 LOADNIL                          R3
      129 SETTABLEKS                       R3 R2 K10 ["current"]
      131 GETUPVAL                         R2 6
      132 GETTABLEKS                       R2 R2 K25 ["setHintIsDragging"]
      134 LOADB                            R3 0
      135 CALL                             R2 1 0
      136 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 LOADN                            R6 1
        4 LOADN                            R7 -1
        5 CALL                             R5 2 1
        6 MUL                              R3 R4 R5
        7 GETUPVAL                         R4 1
        8 DIV                              R2 R3 R4
        9 ADD                              R1 R0 R2
       10 GETUPVAL                         R5 0
       11 GETIMPORT                        R6 K2 [Vector2.new]
       13 LOADN                            R7 1
       14 LOADN                            R8 -1
       15 CALL                             R6 2 1
       16 MUL                              R4 R5 R6
       17 GETUPVAL                         R5 2
       18 DIV                              R3 R4 R5
       19 ADD                              R2 R0 R3
       20 SUB                              R4 R1 R2
       21 ADD                              R3 R0 R4
       22 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 MULK                             R4 R5 K1 [0.1]
        2 ADDK                             R3 R4 K0 [1]
        3 MUL                              R2 R0 R3
        4 LOADK                            R3 K1 [0.1]
        5 JUMPIFNOTLE                      R3 R2 ; [+6]
        7 LOADN                            R3 1
        8 JUMPIFNOTLE                      R2 R3 ; [+3]
       10 MOVE                             R1 R2
       11 RETURN                           R1 1
       12 LOADK                            R3 K1 [0.1]
       13 JUMPIFNOTLT                      R2 R3 ; [+9]
       15 SUBRK                            R4 K1 [0.1] R2
       16 DIVK                             R3 R4 K1 [0.1]
       17 MULK                             R7 R3 K2 [20]
       18 ADDK                             R6 R7 K0 [1]
       19 DIV                              R5 R3 R6
       20 SUBRK                            R4 K0 [1] R5
       21 MULK                             R1 R4 K1 [0.1]
       22 RETURN                           R1 1
       23 SUBK                             R3 R2 K0 [1]
       24 MULK                             R6 R3 K2 [20]
       25 ADDK                             R5 R6 K0 [1]
       26 DIV                              R4 R3 R5
       27 ADDK                             R1 R4 K0 [1]
       28 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["getMousePosition"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R5 0
       10 CALL                             R4 1 1
       11 JUMPIFNOT                        R4 ; [+1]
       12 RETURN                           R0 0
       13 JUMPIFEQKN                       R2 K1 [0] ; [+66]
       15 GETIMPORT                        R5 K4 [Vector2.new]
       17 GETTABLEKS                       R6 R3 K5 ["X"]
       19 GETTABLEKS                       R7 R3 K6 ["Y"]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K7 ["AbsolutePosition"]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K9 ["AbsoluteSize"]
       28 MULK                             R8 R9 K8 [0.5]
       29 ADD                              R6 R7 R8
       30 SUB                              R4 R5 R6
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K10 ["current"]
       34 LOADB                            R6 0
       35 CALL                             R5 1 1
       36 ADDK                             R8 R2 K11 [1]
       37 MUL                              R7 R5 R8
       38 LOADK                            R8 K12 [0.1]
       39 JUMPIFNOTLE                      R8 R7 ; [+6]
       41 LOADN                            R8 1
       42 JUMPIFNOTLE                      R7 R8 ; [+3]
       44 MOVE                             R6 R7
       45 JUMP                             ; [+16]
       46 LOADK                            R8 K12 [0.1]
       47 JUMPIFNOTLT                      R7 R8 ; [+9]
       49 SUBRK                            R9 K12 [0.1] R7
       50 DIVK                             R8 R9 K12 [0.1]
       51 MULK                             R12 R8 K13 [20]
       52 ADDK                             R11 R12 K11 [1]
       53 DIV                              R10 R8 R11
       54 SUBRK                            R9 K11 [1] R10
       55 MULK                             R6 R9 K12 [0.1]
       56 JUMP                             ; [+5]
       57 SUBK                             R8 R7 K11 [1]
       58 MULK                             R11 R8 K13 [20]
       59 ADDK                             R10 R11 K11 [1]
       60 DIV                              R9 R8 R10
       61 ADDK                             R6 R9 K11 [1]
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R7 R7 K14 ["setViewportPosition"]
       65 NEWCLOSURE                       R8 P0
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CALL                             R7 1 0
       70 GETUPVAL                         R7 4
       71 GETTABLEKS                       R7 R7 K15 ["setZoomRatio"]
       73 MOVE                             R8 R6
       74 CALL                             R7 1 0
       75 GETUPVAL                         R7 5
       76 LOADB                            R8 1
       77 SETTABLEKS                       R8 R7 K10 ["current"]
       79 JUMP                             ; [+32]
       80 GETUPVAL                         R4 5
       81 GETTABLEKS                       R4 R4 K10 ["current"]
       83 JUMPIFNOT                        R4 ; [+28]
       84 GETUPVAL                         R4 5
       85 LOADB                            R5 0
       86 SETTABLEKS                       R5 R4 K10 ["current"]
       88 GETUPVAL                         R4 3
       89 GETTABLEKS                       R4 R4 K10 ["current"]
       91 LOADB                            R5 0
       92 CALL                             R4 1 1
       93 LOADK                            R5 K12 [0.1]
       94 JUMPIFLT                         R4 R5 ; [+4]
       96 LOADN                            R5 1
       97 JUMPIFNOTLT                      R5 R4 ; [+14]
       99 GETUPVAL                         R5 4
      100 GETTABLEKS                       R5 R5 K16 ["setZoomRatioTarget"]
      102 LOADK                            R8 K12 [0.1]
      103 LOADN                            R9 1
      104 FASTCALL3                        MATH_CLAMP R4 R8 R9
      106 MOVE                             R7 R4
      107 GETIMPORT                        R6 K19 [math.clamp]
      109 CALL                             R6 3 1
      110 LOADB                            R7 1
      111 CALL                             R5 2 0
      112 JUMPIFEQKN                       R0 K1 [0] ; [+8]
      114 GETUPVAL                         R4 4
      115 GETTABLEKS                       R4 R4 K16 ["setZoomRatioTarget"]
      117 NEWCLOSURE                       R5 P1
      118 CAPTURE                          VAL R0
      119 LOADB                            R6 1
      120 CALL                             R4 2 0
      121 GETIMPORT                        R4 K21 [Vector2.zero]
      123 JUMPIFEQ                         R1 R4 ; [+7]
      125 GETUPVAL                         R4 6
      126 GETTABLEKS                       R4 R4 K10 ["current"]
      128 LOADN                            R6 -100
      129 MUL                              R5 R6 R1
      130 CALL                             R4 1 0
      131 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMousePosition"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R2 K3 [Vector2.new]
        6 GETTABLEKS                       R3 R0 K4 ["X"]
        8 GETTABLEKS                       R4 R0 K5 ["Y"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K6 ["AbsolutePosition"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K8 ["AbsoluteSize"]
       17 MULK                             R5 R6 K7 [0.5]
       18 ADD                              R3 R4 R5
       19 SUB                              R1 R2 R3
       20 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setCursorOffsetProvider"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setCursorOffsetProvider"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K0 ["setCursorOffsetProvider"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 1 0
       16 NEWCLOSURE                       R0 P1
       17 CAPTURE                          UPVAL U1
       18 RETURN                           R0 1

PROTO_14:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["current"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
        4 JUMPIFEQ                         R1 R2 ; [+7]
        6 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        8 GETIMPORT                        R2 K5 [Enum.KeyCode.RightAlt]
       10 JUMPIFNOTEQ                      R1 R2 ; [+49]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K6 ["current"]
       15 CALL                             R1 0 1
       16 GETUPVAL                         R2 1
       17 SETTABLEKS                       R1 R2 K6 ["current"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K6 ["current"]
       22 JUMPIFEQKNIL                     R2 ; [+37]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K6 ["current"]
       27 JUMPIFNOTEQKNIL                  R3 ; [+32]
       29 GETUPVAL                         R3 3
       30 SETTABLEKS                       R2 R3 K6 ["current"]
       32 GETUPVAL                         R3 4
       33 SUB                              R4 R1 R2
       34 GETTABLEKS                       R4 R4 K7 ["Magnitude"]
       36 SETTABLEKS                       R4 R3 K6 ["current"]
       38 GETUPVAL                         R3 5
       39 GETUPVAL                         R4 6
       40 GETTABLEKS                       R4 R4 K6 ["current"]
       42 LOADB                            R5 0
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K6 ["current"]
       46 GETUPVAL                         R3 7
       47 SETTABLEKS                       R1 R3 K6 ["current"]
       49 GETUPVAL                         R3 8
       50 SETTABLEKS                       R1 R3 K6 ["current"]
       52 GETUPVAL                         R3 9
       53 GETUPVAL                         R4 6
       54 GETTABLEKS                       R4 R4 K6 ["current"]
       56 LOADB                            R5 0
       57 CALL                             R4 1 1
       58 SETTABLEKS                       R4 R3 K6 ["current"]
       60 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
        4 JUMPIFEQ                         R1 R2 ; [+7]
        6 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        8 GETIMPORT                        R2 K5 [Enum.KeyCode.RightAlt]
       10 JUMPIFNOTEQ                      R1 R2 ; [+5]
       12 GETUPVAL                         R1 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K6 ["current"]
       16 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K2 [game]
       11 LOADK                            R2 K3 ["PluginGuiProcessPointerAction"]
       12 NAMECALL                         R0 R0 K4 ["GetEngineFeature"]
       14 CALL                             R0 2 1
       15 JUMPIFNOT                        R0 ; [+2]
       16 GETUPVAL                         R0 1
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 DUPCLOSURE                       R1 K0 [PROTO_15]
        7 MOVE                             R3 R0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["InputEnded"]
       11 GETUPVAL                         R7 1
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R7
       14 NAMECALL                         R4 R4 K2 ["Connect"]
       16 CALL                             R4 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R2 K5 [table.insert]
       20 CALL                             R2 -1 0
       21 MOVE                             R3 R0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K6 ["InputBegan"]
       25 GETUPVAL                         R7 2
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R7
       28 NAMECALL                         R4 R4 K2 ["Connect"]
       30 CALL                             R4 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R2 K5 [table.insert]
       34 CALL                             R2 -1 0
       35 MOVE                             R3 R0
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K7 ["InputChanged"]
       39 GETUPVAL                         R7 3
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R7
       42 NAMECALL                         R4 R4 K2 ["Connect"]
       44 CALL                             R4 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R2 K5 [table.insert]
       48 CALL                             R2 -1 0
       49 MOVE                             R3 R0
       50 GETUPVAL                         R4 4
       51 GETTABLEKS                       R4 R4 K6 ["InputBegan"]
       53 NEWCLOSURE                       R6 P2
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          UPVAL U11
       61 CAPTURE                          UPVAL U12
       62 CAPTURE                          UPVAL U13
       63 CAPTURE                          UPVAL U14
       64 NAMECALL                         R4 R4 K2 ["Connect"]
       66 CALL                             R4 2 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R2 K5 [table.insert]
       70 CALL                             R2 -1 0
       71 MOVE                             R3 R0
       72 GETUPVAL                         R4 4
       73 GETTABLEKS                       R4 R4 K1 ["InputEnded"]
       75 NEWCLOSURE                       R6 P3
       76 CAPTURE                          UPVAL U6
       77 NAMECALL                         R4 R4 K2 ["Connect"]
       79 CALL                             R4 2 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R2 K5 [table.insert]
       83 CALL                             R2 -1 0
       84 LOADNIL                          R2
       85 GETIMPORT                        R3 K9 [game]
       87 LOADK                            R5 K10 ["PluginGuiProcessPointerAction"]
       88 NAMECALL                         R3 R3 K11 ["GetEngineFeature"]
       90 CALL                             R3 2 1
       91 JUMPIFNOT                        R3 ; [+8]
       92 GETUPVAL                         R3 15
       93 GETTABLEKS                       R3 R3 K12 ["bindOnPointerAction"]
       95 GETUPVAL                         R5 16
       96 NEWCLOSURE                       R4 P1
       97 CAPTURE                          VAL R5
       98 CALL                             R3 1 1
       99 MOVE                             R2 R3
      100 NEWCLOSURE                       R3 P4
      101 CAPTURE                          VAL R0
      102 CAPTURE                          REF R2
      103 CLOSEUPVALS                      R2
      104 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["MouseContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["useContext"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["useContext"]
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K2 ["Context"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["useContext"]
       33 GETUPVAL                         R6 5
       34 GETTABLEKS                       R6 R6 K3 ["CanvasContext"]
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K4 ["useState"]
       40 LOADNIL                          R7
       41 CALL                             R6 1 2
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K5 ["useRef"]
       45 LOADNIL                          R9
       46 CALL                             R8 1 1
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K5 ["useRef"]
       50 LOADNIL                          R10
       51 CALL                             R9 1 1
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K5 ["useRef"]
       55 LOADB                            R11 0
       56 CALL                             R10 1 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K5 ["useRef"]
       60 LOADNIL                          R12
       61 CALL                             R11 1 1
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K5 ["useRef"]
       65 LOADNIL                          R13
       66 CALL                             R12 1 1
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R13 R13 K5 ["useRef"]
       70 LOADNIL                          R14
       71 CALL                             R13 1 1
       72 GETUPVAL                         R14 0
       73 GETTABLEKS                       R14 R14 K5 ["useRef"]
       75 LOADNIL                          R15
       76 CALL                             R14 1 1
       77 GETUPVAL                         R15 0
       78 GETTABLEKS                       R15 R15 K5 ["useRef"]
       80 LOADNIL                          R16
       81 CALL                             R15 1 1
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K5 ["useRef"]
       85 LOADNIL                          R17
       86 CALL                             R16 1 1
       87 GETUPVAL                         R17 0
       88 GETTABLEKS                       R17 R17 K5 ["useRef"]
       90 LOADNIL                          R18
       91 CALL                             R17 1 1
       92 GETUPVAL                         R18 0
       93 GETTABLEKS                       R18 R18 K5 ["useRef"]
       95 LOADB                            R19 0
       96 CALL                             R18 1 1
       97 GETUPVAL                         R19 0
       98 GETTABLEKS                       R19 R19 K5 ["useRef"]
      100 MOVE                             R20 R5
      101 CALL                             R19 1 1
      102 SETTABLEKS                       R5 R19 K6 ["current"]
      104 GETUPVAL                         R20 0
      105 GETTABLEKS                       R20 R20 K7 ["useCallback"]
      107 NEWCLOSURE                       R21 P0
      108 CAPTURE                          VAL R1
      109 NEWTABLE                         R22 0 1
      111 GETTABLEKS                       R23 R1 K8 ["getMousePosition"]
      113 SETLIST                          R22 R23 1 [1]
      115 CALL                             R20 2 1
      116 GETUPVAL                         R21 0
      117 GETTABLEKS                       R21 R21 K7 ["useCallback"]
      119 NEWCLOSURE                       R22 P1
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R4
      122 NEWTABLE                         R23 0 3
      124 MOVE                             R24 R8
      125 GETTABLEKS                       R25 R4 K9 ["panViewport"]
      127 GETTABLEKS                       R26 R4 K10 ["setHintIsDragging"]
      129 SETLIST                          R23 R24 3 [1]
      131 CALL                             R21 2 1
      132 GETUPVAL                         R22 0
      133 GETTABLEKS                       R22 R22 K7 ["useCallback"]
      135 NEWCLOSURE                       R23 P2
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R14
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          VAL R4
      145 NEWTABLE                         R24 0 10
      147 GETTABLEKS                       R25 R1 K8 ["getMousePosition"]
      149 MOVE                             R26 R20
      150 MOVE                             R27 R6
      151 MOVE                             R28 R9
      152 MOVE                             R29 R13
      153 MOVE                             R30 R14
      154 MOVE                             R31 R15
      155 GETTABLEKS                       R32 R4 K11 ["observeZoomRatio"]
      157 GETTABLEKS                       R33 R4 K12 ["setZoomRatio"]
      159 GETTABLEKS                       R34 R4 K13 ["setViewportPosition"]
      161 SETLIST                          R24 R25 10 [1]
      163 CALL                             R22 2 1
      164 GETUPVAL                         R23 0
      165 GETTABLEKS                       R23 R23 K7 ["useCallback"]
      167 NEWCLOSURE                       R24 P3
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R8
      179 NEWTABLE                         R25 0 2
      181 GETTABLEKS                       R26 R4 K11 ["observeZoomRatio"]
      183 GETTABLEKS                       R27 R4 K10 ["setHintIsDragging"]
      185 SETLIST                          R25 R26 2 [1]
      187 CALL                             R23 2 1
      188 GETUPVAL                         R24 7
      189 GETTABLEKS                       R24 R24 K14 ["useRefToState"]
      191 MOVE                             R25 R23
      192 CALL                             R24 1 1
      193 GETUPVAL                         R25 0
      194 GETTABLEKS                       R25 R25 K7 ["useCallback"]
      196 NEWCLOSURE                       R26 P4
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R9
      201 NEWTABLE                         R27 0 5
      203 MOVE                             R28 R22
      204 MOVE                             R29 R21
      205 MOVE                             R30 R19
      206 MOVE                             R31 R8
      207 MOVE                             R32 R6
      208 SETLIST                          R27 R28 5 [1]
      210 CALL                             R25 2 1
      211 GETUPVAL                         R26 7
      212 GETTABLEKS                       R26 R26 K14 ["useRefToState"]
      214 MOVE                             R27 R25
      215 CALL                             R26 1 1
      216 GETUPVAL                         R27 0
      217 GETTABLEKS                       R27 R27 K7 ["useCallback"]
      219 NEWCLOSURE                       R28 P5
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R10
      222 CAPTURE                          UPVAL U8
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R12
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R21
      236 CAPTURE                          VAL R8
      237 NEWTABLE                         R29 0 10
      239 MOVE                             R30 R10
      240 MOVE                             R31 R6
      241 GETTABLEKS                       R32 R2 K15 ["showMenu"]
      243 GETTABLEKS                       R33 R3 K16 ["isMenuOpen"]
      245 MOVE                             R34 R22
      246 MOVE                             R35 R21
      247 MOVE                             R36 R19
      248 GETTABLEKS                       R37 R4 K11 ["observeZoomRatio"]
      250 GETTABLEKS                       R38 R4 K10 ["setHintIsDragging"]
      252 GETTABLEKS                       R39 R4 K17 ["setZoomRatioTarget"]
      254 SETLIST                          R29 R30 10 [1]
      256 CALL                             R27 2 1
      257 GETUPVAL                         R28 7
      258 GETTABLEKS                       R28 R28 K14 ["useRefToState"]
      260 MOVE                             R29 R27
      261 CALL                             R28 1 1
      262 GETUPVAL                         R29 7
      263 GETTABLEKS                       R29 R29 K14 ["useRefToState"]
      265 GETTABLEKS                       R30 R4 K9 ["panViewport"]
      267 CALL                             R29 1 1
      268 GETUPVAL                         R30 7
      269 GETTABLEKS                       R30 R30 K14 ["useRefToState"]
      271 GETTABLEKS                       R31 R1 K8 ["getMousePosition"]
      273 CALL                             R30 1 1
      274 GETUPVAL                         R31 7
      275 GETTABLEKS                       R31 R31 K14 ["useRefToState"]
      277 GETTABLEKS                       R32 R4 K11 ["observeZoomRatio"]
      279 CALL                             R31 1 1
      280 GETUPVAL                         R32 7
      281 GETTABLEKS                       R32 R32 K18 ["useEventCallback"]
      283 NEWCLOSURE                       R33 P6
      284 CAPTURE                          VAL R6
      285 CAPTURE                          VAL R1
      286 CAPTURE                          VAL R20
      287 CAPTURE                          VAL R31
      288 CAPTURE                          VAL R4
      289 CAPTURE                          VAL R18
      290 CAPTURE                          VAL R29
      291 CALL                             R32 1 1
      292 GETUPVAL                         R33 7
      293 GETTABLEKS                       R33 R33 K14 ["useRefToState"]
      295 MOVE                             R34 R32
      296 CALL                             R33 1 1
      297 GETUPVAL                         R34 0
      298 GETTABLEKS                       R34 R34 K19 ["useEffect"]
      300 NEWCLOSURE                       R35 P7
      301 CAPTURE                          VAL R6
      302 CAPTURE                          VAL R4
      303 CAPTURE                          VAL R1
      304 NEWTABLE                         R36 0 3
      306 MOVE                             R37 R6
      307 GETTABLEKS                       R38 R1 K8 ["getMousePosition"]
      309 GETTABLEKS                       R39 R4 K20 ["setCursorOffsetProvider"]
      311 SETLIST                          R36 R37 3 [1]
      313 CALL                             R34 2 0
      314 GETUPVAL                         R34 0
      315 GETTABLEKS                       R34 R34 K19 ["useEffect"]
      317 NEWCLOSURE                       R35 P8
      318 CAPTURE                          VAL R6
      319 CAPTURE                          VAL R28
      320 CAPTURE                          VAL R24
      321 CAPTURE                          VAL R26
      322 CAPTURE                          UPVAL U9
      323 CAPTURE                          VAL R30
      324 CAPTURE                          VAL R16
      325 CAPTURE                          VAL R17
      326 CAPTURE                          VAL R13
      327 CAPTURE                          VAL R14
      328 CAPTURE                          VAL R15
      329 CAPTURE                          VAL R31
      330 CAPTURE                          VAL R9
      331 CAPTURE                          VAL R11
      332 CAPTURE                          VAL R12
      333 CAPTURE                          VAL R1
      334 CAPTURE                          VAL R33
      335 NEWTABLE                         R36 0 2
      337 MOVE                             R37 R6
      338 GETTABLEKS                       R38 R1 K21 ["bindOnPointerAction"]
      340 SETLIST                          R36 R37 2 [1]
      342 CALL                             R34 2 0
      343 GETUPVAL                         R34 0
      344 GETTABLEKS                       R34 R34 K22 ["createElement"]
      346 GETUPVAL                         R35 10
      347 GETTABLEKS                       R35 R35 K23 ["View"]
      349 DUPTABLE                         R36 K30 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"], ["testId"] = "NodeViewScroller"}]
      350 GETTABLEKS                       R37 R0 K26 ["ZIndex"]
      352 SETTABLEKS                       R37 R36 K26 ["ZIndex"]
      354 SETTABLEKS                       R7 R36 K27 ["ref"]
      356 CALL                             R34 2 -1
      357 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["NodeGraphing"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["CrossEnvironment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Flags"]
       24 GETTABLEKS                       R4 R4 K13 ["FFlagAnimGraphUIShowInExplorer"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Parent"]
       38 GETTABLEKS                       R6 R6 K15 ["Graphing"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K16 ["Components"]
       45 GETTABLEKS                       R7 R7 K17 ["InsertNodeContext"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K16 ["Components"]
       52 GETTABLEKS                       R8 R8 K18 ["NodeRightClickMenuContext"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K10 ["Parent"]
       59 GETTABLEKS                       R9 R9 K19 ["React"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K10 ["Parent"]
       66 GETTABLEKS                       R10 R10 K20 ["ReactUtils"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R1 K16 ["Components"]
       73 GETTABLEKS                       R11 R11 K21 ["ViewportRectContext"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R1 K12 ["Flags"]
       80 GETTABLEKS                       R12 R12 K22 ["getFFlagAnimGraphUIInvertGesturalZoom"]
       82 CALL                             R11 1 1
       83 DUPCLOSURE                       R12 K23 [PROTO_0]
       84 DUPCLOSURE                       R13 K24 [PROTO_20]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R4
       96 RETURN                           R13 1
