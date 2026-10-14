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
        0 LOADK                            R3 K0 ["LayerCollector"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["current"]
       11 JUMPIF                           R2 ; [+4]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["getMousePosition"]
       15 CALL                             R2 0 1
       16 LOADB                            R3 0
       17 GETTABLEKS                       R6 R2 K4 ["X"]
       19 GETTABLEKS                       R7 R2 K5 ["Y"]
       21 NAMECALL                         R4 R1 K6 ["GetGuiObjectsAtPosition"]
       23 CALL                             R4 3 3
       24 FORGPREP                         R4
       25 JUMPIFNOTEQ                      R8 R0 ; [+3]
       27 LOADB                            R3 1
       28 JUMP                             ; [+43]
       29 JUMPIF                           R3 ; [+16]
       30 LOADK                            R11 K7 ["ScrollingFrame"]
       31 NAMECALL                         R9 R8 K8 ["IsA"]
       33 CALL                             R9 2 1
       34 JUMPIF                           R9 ; [+8]
       35 LOADK                            R11 K9 ["GuiObject"]
       36 NAMECALL                         R9 R8 K8 ["IsA"]
       38 CALL                             R9 2 1
       39 JUMPIFNOT                        R9 ; [+32]
       40 GETTABLEKS                       R9 R8 K10 ["Active"]
       42 JUMPIFNOT                        R9 ; [+29]
       43 LOADK                            R9 K11 ["Overlay"]
       44 RETURN                           R9 1
       45 JUMP                             ; [+26]
       46 LOADK                            R11 K7 ["ScrollingFrame"]
       47 NAMECALL                         R9 R8 K8 ["IsA"]
       49 CALL                             R9 2 1
       50 JUMPIFNOT                        R9 ; [+21]
       51 GETTABLEKS                       R9 R8 K12 ["ScrollingEnabled"]
       53 JUMPIFNOT                        R9 ; [+18]
       54 GETTABLEKS                       R9 R8 K13 ["ScrollingDirection"]
       56 GETIMPORT                        R10 K15 [Enum.ScrollingDirection.X]
       58 JUMPIFEQ                         R9 R10 ; [+13]
       60 GETTABLEKS                       R9 R8 K16 ["AbsoluteCanvasSize"]
       62 GETTABLEKS                       R9 R9 K5 ["Y"]
       64 GETTABLEKS                       R10 R8 K17 ["AbsoluteWindowSize"]
       66 GETTABLEKS                       R10 R10 K5 ["Y"]
       68 JUMPIFNOTLT                      R10 R9 ; [+3]
       70 LOADK                            R9 K18 ["NodeContent"]
       71 RETURN                           R9 1
       72 FORGLOOP                         R4 2 ; [-48]
       74 LOADNIL                          R4
       75 RETURN                           R4 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R2 K4 ["X"]
        6 GETTABLEKS                       R3 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R3 K5 ["Y"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 0
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+15]
       14 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       16 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseMovement]
       18 JUMPIFEQ                         R2 R3 ; [+7]
       20 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       22 GETIMPORT                        R3 K11 [Enum.UserInputType.MouseWheel]
       24 JUMPIFNOTEQ                      R2 R3 ; [+4]
       26 GETUPVAL                         R2 1
       27 SETTABLEKS                       R1 R2 K12 ["current"]
       29 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       31 GETIMPORT                        R3 K14 [Enum.UserInputType.MouseButton2]
       33 JUMPIFNOTEQ                      R2 R3 ; [+5]
       35 GETUPVAL                         R2 2
       36 MOVE                             R3 R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       41 GETIMPORT                        R3 K16 [Enum.UserInputType.MouseButton3]
       43 JUMPIFNOTEQ                      R2 R3 ; [+5]
       45 GETUPVAL                         R2 3
       46 MOVE                             R3 R1
       47 CALL                             R2 1 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       51 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseMovement]
       53 JUMPIFNOTEQ                      R2 R3 ; [+15]
       55 GETUPVAL                         R2 4
       56 GETTABLEKS                       R2 R2 K12 ["current"]
       58 JUMPIFNOT                        R2 ; [+3]
       59 GETUPVAL                         R2 3
       60 MOVE                             R3 R1
       61 CALL                             R2 1 0
       62 GETUPVAL                         R2 5
       63 GETTABLEKS                       R2 R2 K12 ["current"]
       65 JUMPIFNOT                        R2 ; [+3]
       66 GETUPVAL                         R2 2
       67 MOVE                             R3 R1
       68 CALL                             R2 1 0
       69 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R2 K4 ["X"]
        6 GETTABLEKS                       R3 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R3 K5 ["Y"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 0
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+10]
       14 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       16 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseMovement]
       18 JUMPIFNOTEQ                      R2 R3 ; [+5]
       20 GETUPVAL                         R2 1
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R2 K10 ["current"]
       24 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
       26 GETIMPORT                        R3 K12 [Enum.UserInputType.MouseButton2]
       28 JUMPIFNOTEQ                      R2 R3 ; [+102]
       30 GETUPVAL                         R2 2
       31 MOVE                             R3 R1
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K10 ["current"]
       36 JUMPIF                           R2 ; [+18]
       37 GETUPVAL                         R2 4
       38 JUMPIFNOT                        R2 ; [+5]
       39 GETUPVAL                         R2 5
       40 GETTABLEKS                       R2 R2 K13 ["isMenuOpen"]
       42 CALL                             R2 0 1
       43 JUMPIF                           R2 ; [+11]
       44 GETUPVAL                         R2 6
       45 GETTABLEKS                       R2 R2 K14 ["showMenu"]
       47 GETUPVAL                         R3 7
       48 GETTABLEKS                       R3 R3 K10 ["current"]
       50 GETTABLEKS                       R3 R3 K15 ["absToPlot"]
       52 MOVE                             R4 R1
       53 CALL                             R3 1 -1
       54 CALL                             R2 -1 0
       55 GETUPVAL                         R2 8
       56 GETTABLEKS                       R2 R2 K16 ["observeZoomRatio"]
       58 LOADB                            R3 0
       59 CALL                             R2 1 1
       60 LOADK                            R3 K17 [0.1]
       61 JUMPIFLT                         R2 R3 ; [+4]
       63 LOADN                            R3 1
       64 JUMPIFNOTLT                      R3 R2 ; [+33]
       66 GETUPVAL                         R3 9
       67 GETTABLEKS                       R3 R3 K10 ["current"]
       69 LOADNIL                          R4
       70 JUMPIFEQKNIL                     R3 ; [+13]
       72 GETUPVAL                         R5 10
       73 JUMPIFEQKNIL                     R5 ; [+10]
       75 GETUPVAL                         R6 10
       76 GETTABLEKS                       R6 R6 K18 ["AbsolutePosition"]
       78 GETUPVAL                         R8 10
       79 GETTABLEKS                       R8 R8 K20 ["AbsoluteSize"]
       81 MULK                             R7 R8 K19 [0.5]
       82 ADD                              R5 R6 R7
       83 SUB                              R4 R3 R5
       84 GETUPVAL                         R5 8
       85 GETTABLEKS                       R5 R5 K21 ["setZoomRatioTarget"]
       87 LOADK                            R8 K17 [0.1]
       88 LOADN                            R9 1
       89 FASTCALL3                        MATH_CLAMP R2 R8 R9
       91 MOVE                             R7 R2
       92 GETIMPORT                        R6 K24 [math.clamp]
       94 CALL                             R6 3 1
       95 LOADB                            R7 0
       96 MOVE                             R8 R4
       97 CALL                             R5 3 0
       98 GETUPVAL                         R3 3
       99 LOADB                            R4 0
      100 SETTABLEKS                       R4 R3 K10 ["current"]
      102 GETUPVAL                         R3 11
      103 LOADNIL                          R4
      104 SETTABLEKS                       R4 R3 K10 ["current"]
      106 GETUPVAL                         R3 12
      107 LOADNIL                          R4
      108 SETTABLEKS                       R4 R3 K10 ["current"]
      110 GETUPVAL                         R3 13
      111 LOADNIL                          R4
      112 SETTABLEKS                       R4 R3 K10 ["current"]
      114 GETUPVAL                         R3 9
      115 LOADNIL                          R4
      116 SETTABLEKS                       R4 R3 K10 ["current"]
      118 GETUPVAL                         R3 14
      119 LOADNIL                          R4
      120 SETTABLEKS                       R4 R3 K10 ["current"]
      122 GETUPVAL                         R3 15
      123 LOADNIL                          R4
      124 SETTABLEKS                       R4 R3 K10 ["current"]
      126 GETUPVAL                         R3 16
      127 LOADNIL                          R4
      128 SETTABLEKS                       R4 R3 K10 ["current"]
      130 RETURN                           R0 0
      131 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
      133 GETIMPORT                        R3 K26 [Enum.UserInputType.MouseButton3]
      135 JUMPIFNOTEQ                      R2 R3 ; [+13]
      137 GETUPVAL                         R2 17
      138 MOVE                             R3 R1
      139 CALL                             R2 1 0
      140 GETUPVAL                         R2 18
      141 LOADNIL                          R3
      142 SETTABLEKS                       R3 R2 K10 ["current"]
      144 GETUPVAL                         R2 8
      145 GETTABLEKS                       R2 R2 K27 ["setHintIsDragging"]
      147 LOADB                            R3 0
      148 CALL                             R2 1 0
      149 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["getMousePosition"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 2
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+4]
       11 GETUPVAL                         R4 3
       12 GETUPVAL                         R5 0
       13 CALL                             R4 1 1
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R5 4
       16 GETUPVAL                         R6 0
       17 CALL                             R5 1 1
       18 JUMPIFNOT                        R5 ; [+2]
       19 LOADK                            R4 K1 ["Overlay"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 JUMPIFNOTEQKS                    R4 K1 ["Overlay"] ; [+2]
       24 RETURN                           R0 0
       25 JUMPIFEQKN                       R2 K2 [0] ; [+66]
       27 GETIMPORT                        R6 K5 [Vector2.new]
       29 GETTABLEKS                       R7 R3 K6 ["X"]
       31 GETTABLEKS                       R8 R3 K7 ["Y"]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K8 ["AbsolutePosition"]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K10 ["AbsoluteSize"]
       40 MULK                             R9 R10 K9 [0.5]
       41 ADD                              R7 R8 R9
       42 SUB                              R5 R6 R7
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R6 R6 K11 ["current"]
       46 LOADB                            R7 0
       47 CALL                             R6 1 1
       48 ADDK                             R9 R2 K12 [1]
       49 MUL                              R8 R6 R9
       50 LOADK                            R9 K13 [0.1]
       51 JUMPIFNOTLE                      R9 R8 ; [+6]
       53 LOADN                            R9 1
       54 JUMPIFNOTLE                      R8 R9 ; [+3]
       56 MOVE                             R7 R8
       57 JUMP                             ; [+16]
       58 LOADK                            R9 K13 [0.1]
       59 JUMPIFNOTLT                      R8 R9 ; [+9]
       61 SUBRK                            R10 K13 [0.1] R8
       62 DIVK                             R9 R10 K13 [0.1]
       63 MULK                             R13 R9 K14 [20]
       64 ADDK                             R12 R13 K12 [1]
       65 DIV                              R11 R9 R12
       66 SUBRK                            R10 K12 [1] R11
       67 MULK                             R7 R10 K13 [0.1]
       68 JUMP                             ; [+5]
       69 SUBK                             R9 R8 K12 [1]
       70 MULK                             R12 R9 K14 [20]
       71 ADDK                             R11 R12 K12 [1]
       72 DIV                              R10 R9 R11
       73 ADDK                             R7 R10 K12 [1]
       74 GETUPVAL                         R8 6
       75 GETTABLEKS                       R8 R8 K15 ["setViewportPosition"]
       77 NEWCLOSURE                       R9 P0
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CALL                             R8 1 0
       82 GETUPVAL                         R8 6
       83 GETTABLEKS                       R8 R8 K16 ["setZoomRatio"]
       85 MOVE                             R9 R7
       86 CALL                             R8 1 0
       87 GETUPVAL                         R8 7
       88 LOADB                            R9 1
       89 SETTABLEKS                       R9 R8 K11 ["current"]
       91 JUMP                             ; [+32]
       92 GETUPVAL                         R5 7
       93 GETTABLEKS                       R5 R5 K11 ["current"]
       95 JUMPIFNOT                        R5 ; [+28]
       96 GETUPVAL                         R5 7
       97 LOADB                            R6 0
       98 SETTABLEKS                       R6 R5 K11 ["current"]
      100 GETUPVAL                         R5 5
      101 GETTABLEKS                       R5 R5 K11 ["current"]
      103 LOADB                            R6 0
      104 CALL                             R5 1 1
      105 LOADK                            R6 K13 [0.1]
      106 JUMPIFLT                         R5 R6 ; [+4]
      108 LOADN                            R6 1
      109 JUMPIFNOTLT                      R6 R5 ; [+14]
      111 GETUPVAL                         R6 6
      112 GETTABLEKS                       R6 R6 K17 ["setZoomRatioTarget"]
      114 LOADK                            R9 K13 [0.1]
      115 LOADN                            R10 1
      116 FASTCALL3                        MATH_CLAMP R5 R9 R10
      118 MOVE                             R8 R5
      119 GETIMPORT                        R7 K20 [math.clamp]
      121 CALL                             R7 3 1
      122 LOADB                            R8 1
      123 CALL                             R6 2 0
      124 GETUPVAL                         R5 2
      125 CALL                             R5 0 1
      126 JUMPIFNOT                        R5 ; [+9]
      127 JUMPIFNOTEQKS                    R4 K21 ["NodeContent"] ; [+8]
      129 JUMPIFNOTEQKN                    R0 K2 [0] ; [+5]
      131 GETIMPORT                        R5 K23 [Vector2.zero]
      133 JUMPIFEQ                         R1 R5 ; [+2]
      135 RETURN                           R0 0
      136 JUMPIFEQKN                       R0 K2 [0] ; [+8]
      138 GETUPVAL                         R5 6
      139 GETTABLEKS                       R5 R5 K17 ["setZoomRatioTarget"]
      141 NEWCLOSURE                       R6 P1
      142 CAPTURE                          VAL R0
      143 LOADB                            R7 1
      144 CALL                             R5 2 0
      145 GETIMPORT                        R5 K23 [Vector2.zero]
      147 JUMPIFEQ                         R1 R5 ; [+7]
      149 GETUPVAL                         R5 8
      150 GETTABLEKS                       R5 R5 K11 ["current"]
      152 LOADN                            R7 -100
      153 MUL                              R6 R7 R1
      154 CALL                             R5 1 0
      155 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setCursorOffsetProvider"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["current"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 DUPCLOSURE                       R1 K0 [PROTO_16]
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

PROTO_21:
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
      100 LOADNIL                          R20
      101 CALL                             R19 1 1
      102 GETUPVAL                         R20 0
      103 GETTABLEKS                       R20 R20 K5 ["useRef"]
      105 MOVE                             R21 R5
      106 CALL                             R20 1 1
      107 SETTABLEKS                       R5 R20 K6 ["current"]
      109 GETUPVAL                         R21 0
      110 GETTABLEKS                       R21 R21 K7 ["useCallback"]
      112 NEWCLOSURE                       R22 P0
      113 CAPTURE                          VAL R1
      114 NEWTABLE                         R23 0 1
      116 GETTABLEKS                       R24 R1 K8 ["getMousePosition"]
      118 SETLIST                          R23 R24 1 [1]
      120 CALL                             R21 2 1
      121 GETUPVAL                         R22 0
      122 GETTABLEKS                       R22 R22 K7 ["useCallback"]
      124 NEWCLOSURE                       R23 P1
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R1
      127 NEWTABLE                         R24 0 1
      129 GETTABLEKS                       R25 R1 K8 ["getMousePosition"]
      131 SETLIST                          R24 R25 1 [1]
      133 CALL                             R22 2 1
      134 GETUPVAL                         R23 0
      135 GETTABLEKS                       R23 R23 K7 ["useCallback"]
      137 NEWCLOSURE                       R24 P2
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R4
      140 NEWTABLE                         R25 0 3
      142 MOVE                             R26 R8
      143 GETTABLEKS                       R27 R4 K9 ["panViewport"]
      145 GETTABLEKS                       R28 R4 K10 ["setHintIsDragging"]
      147 SETLIST                          R25 R26 3 [1]
      149 CALL                             R23 2 1
      150 GETUPVAL                         R24 0
      151 GETTABLEKS                       R24 R24 K7 ["useCallback"]
      153 NEWCLOSURE                       R25 P3
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R14
      161 CAPTURE                          UPVAL U6
      162 CAPTURE                          VAL R4
      163 NEWTABLE                         R26 0 10
      165 GETTABLEKS                       R27 R1 K8 ["getMousePosition"]
      167 MOVE                             R28 R21
      168 MOVE                             R29 R6
      169 MOVE                             R30 R9
      170 MOVE                             R31 R13
      171 MOVE                             R32 R14
      172 MOVE                             R33 R15
      173 GETTABLEKS                       R34 R4 K11 ["observeZoomRatio"]
      175 GETTABLEKS                       R35 R4 K12 ["setZoomRatio"]
      177 GETTABLEKS                       R36 R4 K13 ["setViewportPosition"]
      179 SETLIST                          R26 R27 10 [1]
      181 CALL                             R24 2 1
      182 GETUPVAL                         R25 0
      183 GETTABLEKS                       R25 R25 K7 ["useCallback"]
      185 NEWCLOSURE                       R26 P4
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R8
      197 NEWTABLE                         R27 0 2
      199 GETTABLEKS                       R28 R4 K11 ["observeZoomRatio"]
      201 GETTABLEKS                       R29 R4 K10 ["setHintIsDragging"]
      203 SETLIST                          R27 R28 2 [1]
      205 CALL                             R25 2 1
      206 GETUPVAL                         R26 7
      207 GETTABLEKS                       R26 R26 K14 ["useRefToState"]
      209 MOVE                             R27 R25
      210 CALL                             R26 1 1
      211 GETUPVAL                         R27 0
      212 GETTABLEKS                       R27 R27 K7 ["useCallback"]
      214 NEWCLOSURE                       R28 P5
      215 CAPTURE                          UPVAL U8
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R9
      221 NEWTABLE                         R29 0 5
      223 MOVE                             R30 R24
      224 MOVE                             R31 R23
      225 MOVE                             R32 R20
      226 MOVE                             R33 R8
      227 MOVE                             R34 R6
      228 SETLIST                          R29 R30 5 [1]
      230 CALL                             R27 2 1
      231 GETUPVAL                         R28 7
      232 GETTABLEKS                       R28 R28 K14 ["useRefToState"]
      234 MOVE                             R29 R27
      235 CALL                             R28 1 1
      236 GETUPVAL                         R29 0
      237 GETTABLEKS                       R29 R29 K7 ["useCallback"]
      239 NEWCLOSURE                       R30 P6
      240 CAPTURE                          UPVAL U8
      241 CAPTURE                          VAL R19
      242 CAPTURE                          VAL R24
      243 CAPTURE                          VAL R10
      244 CAPTURE                          UPVAL U9
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R2
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R4
      249 CAPTURE                          VAL R13
      250 CAPTURE                          VAL R6
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R12
      254 CAPTURE                          VAL R14
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R17
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R8
      259 NEWTABLE                         R31 0 10
      261 MOVE                             R32 R10
      262 MOVE                             R33 R6
      263 GETTABLEKS                       R34 R2 K15 ["showMenu"]
      265 GETTABLEKS                       R35 R3 K16 ["isMenuOpen"]
      267 MOVE                             R36 R24
      268 MOVE                             R37 R23
      269 MOVE                             R38 R20
      270 GETTABLEKS                       R39 R4 K11 ["observeZoomRatio"]
      272 GETTABLEKS                       R40 R4 K10 ["setHintIsDragging"]
      274 GETTABLEKS                       R41 R4 K17 ["setZoomRatioTarget"]
      276 SETLIST                          R31 R32 10 [1]
      278 CALL                             R29 2 1
      279 GETUPVAL                         R30 7
      280 GETTABLEKS                       R30 R30 K14 ["useRefToState"]
      282 MOVE                             R31 R29
      283 CALL                             R30 1 1
      284 GETUPVAL                         R31 7
      285 GETTABLEKS                       R31 R31 K14 ["useRefToState"]
      287 GETTABLEKS                       R32 R4 K9 ["panViewport"]
      289 CALL                             R31 1 1
      290 GETUPVAL                         R32 7
      291 GETTABLEKS                       R32 R32 K14 ["useRefToState"]
      293 GETTABLEKS                       R33 R1 K8 ["getMousePosition"]
      295 CALL                             R32 1 1
      296 GETUPVAL                         R33 7
      297 GETTABLEKS                       R33 R33 K14 ["useRefToState"]
      299 GETTABLEKS                       R34 R4 K11 ["observeZoomRatio"]
      301 CALL                             R33 1 1
      302 GETUPVAL                         R34 7
      303 GETTABLEKS                       R34 R34 K18 ["useEventCallback"]
      305 NEWCLOSURE                       R35 P7
      306 CAPTURE                          VAL R6
      307 CAPTURE                          VAL R1
      308 CAPTURE                          UPVAL U8
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R21
      311 CAPTURE                          VAL R33
      312 CAPTURE                          VAL R4
      313 CAPTURE                          VAL R18
      314 CAPTURE                          VAL R31
      315 CALL                             R34 1 1
      316 GETUPVAL                         R35 7
      317 GETTABLEKS                       R35 R35 K14 ["useRefToState"]
      319 MOVE                             R36 R34
      320 CALL                             R35 1 1
      321 GETUPVAL                         R36 0
      322 GETTABLEKS                       R36 R36 K19 ["useEffect"]
      324 NEWCLOSURE                       R37 P8
      325 CAPTURE                          VAL R6
      326 CAPTURE                          VAL R4
      327 CAPTURE                          VAL R1
      328 NEWTABLE                         R38 0 3
      330 MOVE                             R39 R6
      331 GETTABLEKS                       R40 R1 K8 ["getMousePosition"]
      333 GETTABLEKS                       R41 R4 K20 ["setCursorOffsetProvider"]
      335 SETLIST                          R38 R39 3 [1]
      337 CALL                             R36 2 0
      338 GETUPVAL                         R36 0
      339 GETTABLEKS                       R36 R36 K19 ["useEffect"]
      341 NEWCLOSURE                       R37 P9
      342 CAPTURE                          VAL R6
      343 CAPTURE                          VAL R30
      344 CAPTURE                          VAL R26
      345 CAPTURE                          VAL R28
      346 CAPTURE                          UPVAL U10
      347 CAPTURE                          VAL R32
      348 CAPTURE                          VAL R16
      349 CAPTURE                          VAL R17
      350 CAPTURE                          VAL R13
      351 CAPTURE                          VAL R14
      352 CAPTURE                          VAL R15
      353 CAPTURE                          VAL R33
      354 CAPTURE                          VAL R9
      355 CAPTURE                          VAL R11
      356 CAPTURE                          VAL R12
      357 CAPTURE                          VAL R1
      358 CAPTURE                          VAL R35
      359 NEWTABLE                         R38 0 2
      361 MOVE                             R39 R6
      362 GETTABLEKS                       R40 R1 K21 ["bindOnPointerAction"]
      364 SETLIST                          R38 R39 2 [1]
      366 CALL                             R36 2 0
      367 GETUPVAL                         R36 0
      368 GETTABLEKS                       R36 R36 K22 ["createElement"]
      370 GETUPVAL                         R37 11
      371 GETTABLEKS                       R37 R37 K23 ["View"]
      373 DUPTABLE                         R38 K30 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"], ["testId"] = "NodeViewScroller"}]
      374 GETTABLEKS                       R39 R0 K26 ["ZIndex"]
      376 SETTABLEKS                       R39 R38 K26 ["ZIndex"]
      378 SETTABLEKS                       R7 R38 K27 ["ref"]
      380 CALL                             R36 2 -1
      381 RETURN                           R36 -1

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
       83 GETIMPORT                        R12 K9 [require]
       85 GETTABLEKS                       R13 R1 K12 ["Flags"]
       87 GETTABLEKS                       R13 R13 K23 ["getFFlagEnableExpressionSyntaxHighlighting"]
       89 CALL                             R12 1 1
       90 DUPCLOSURE                       R13 K24 [PROTO_0]
       91 DUPCLOSURE                       R14 K25 [PROTO_21]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R4
      104 RETURN                           R14 1
