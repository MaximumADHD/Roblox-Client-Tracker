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
       15 JUMPIFNOTEQ                      R2 R3 ; [+95]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K10 ["current"]
       23 JUMPIF                           R2 ; [+11]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K11 ["showMenu"]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K10 ["current"]
       30 GETTABLEKS                       R3 R3 K12 ["absToPlot"]
       32 MOVE                             R4 R1
       33 CALL                             R3 1 -1
       34 CALL                             R2 -1 0
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K13 ["observeZoomRatio"]
       38 LOADB                            R3 0
       39 CALL                             R2 1 1
       40 LOADK                            R3 K14 [0.1]
       41 JUMPIFLT                         R2 R3 ; [+4]
       43 LOADN                            R3 1
       44 JUMPIFNOTLT                      R3 R2 ; [+33]
       46 GETUPVAL                         R3 5
       47 GETTABLEKS                       R3 R3 K10 ["current"]
       49 LOADNIL                          R4
       50 JUMPIFEQKNIL                     R3 ; [+13]
       52 GETUPVAL                         R5 6
       53 JUMPIFEQKNIL                     R5 ; [+10]
       55 GETUPVAL                         R6 6
       56 GETTABLEKS                       R6 R6 K15 ["AbsolutePosition"]
       58 GETUPVAL                         R8 6
       59 GETTABLEKS                       R8 R8 K17 ["AbsoluteSize"]
       61 MULK                             R7 R8 K16 [0.5]
       62 ADD                              R5 R6 R7
       63 SUB                              R4 R3 R5
       64 GETUPVAL                         R5 4
       65 GETTABLEKS                       R5 R5 K18 ["setZoomRatioTarget"]
       67 LOADK                            R8 K14 [0.1]
       68 LOADN                            R9 1
       69 FASTCALL3                        MATH_CLAMP R2 R8 R9
       71 MOVE                             R7 R2
       72 GETIMPORT                        R6 K21 [math.clamp]
       74 CALL                             R6 3 1
       75 LOADB                            R7 0
       76 MOVE                             R8 R4
       77 CALL                             R5 3 0
       78 GETUPVAL                         R3 1
       79 LOADB                            R4 0
       80 SETTABLEKS                       R4 R3 K10 ["current"]
       82 GETUPVAL                         R3 7
       83 LOADNIL                          R4
       84 SETTABLEKS                       R4 R3 K10 ["current"]
       86 GETUPVAL                         R3 8
       87 LOADNIL                          R4
       88 SETTABLEKS                       R4 R3 K10 ["current"]
       90 GETUPVAL                         R3 9
       91 LOADNIL                          R4
       92 SETTABLEKS                       R4 R3 K10 ["current"]
       94 GETUPVAL                         R3 5
       95 LOADNIL                          R4
       96 SETTABLEKS                       R4 R3 K10 ["current"]
       98 GETUPVAL                         R3 10
       99 LOADNIL                          R4
      100 SETTABLEKS                       R4 R3 K10 ["current"]
      102 GETUPVAL                         R3 11
      103 LOADNIL                          R4
      104 SETTABLEKS                       R4 R3 K10 ["current"]
      106 GETUPVAL                         R3 12
      107 LOADNIL                          R4
      108 SETTABLEKS                       R4 R3 K10 ["current"]
      110 RETURN                           R0 0
      111 GETTABLEKS                       R2 R0 K6 ["UserInputType"]
      113 GETIMPORT                        R3 K23 [Enum.UserInputType.MouseButton3]
      115 JUMPIFNOTEQ                      R2 R3 ; [+13]
      117 GETUPVAL                         R2 13
      118 MOVE                             R3 R1
      119 CALL                             R2 1 0
      120 GETUPVAL                         R2 14
      121 LOADNIL                          R3
      122 SETTABLEKS                       R3 R2 K10 ["current"]
      124 GETUPVAL                         R2 4
      125 GETTABLEKS                       R2 R2 K24 ["setHintIsDragging"]
      127 LOADB                            R3 0
      128 CALL                             R2 1 0
      129 RETURN                           R0 0

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
       27 GETTABLEKS                       R5 R5 K3 ["CanvasContext"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K4 ["useState"]
       33 LOADNIL                          R6
       34 CALL                             R5 1 2
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K5 ["useRef"]
       38 LOADNIL                          R8
       39 CALL                             R7 1 1
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K5 ["useRef"]
       43 LOADNIL                          R9
       44 CALL                             R8 1 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K5 ["useRef"]
       48 LOADB                            R10 0
       49 CALL                             R9 1 1
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K5 ["useRef"]
       53 LOADNIL                          R11
       54 CALL                             R10 1 1
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K5 ["useRef"]
       58 LOADNIL                          R12
       59 CALL                             R11 1 1
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K5 ["useRef"]
       63 LOADNIL                          R13
       64 CALL                             R12 1 1
       65 GETUPVAL                         R13 0
       66 GETTABLEKS                       R13 R13 K5 ["useRef"]
       68 LOADNIL                          R14
       69 CALL                             R13 1 1
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R14 R14 K5 ["useRef"]
       73 LOADNIL                          R15
       74 CALL                             R14 1 1
       75 GETUPVAL                         R15 0
       76 GETTABLEKS                       R15 R15 K5 ["useRef"]
       78 LOADNIL                          R16
       79 CALL                             R15 1 1
       80 GETUPVAL                         R16 0
       81 GETTABLEKS                       R16 R16 K5 ["useRef"]
       83 LOADNIL                          R17
       84 CALL                             R16 1 1
       85 GETUPVAL                         R17 0
       86 GETTABLEKS                       R17 R17 K5 ["useRef"]
       88 LOADB                            R18 0
       89 CALL                             R17 1 1
       90 GETUPVAL                         R18 0
       91 GETTABLEKS                       R18 R18 K5 ["useRef"]
       93 MOVE                             R19 R4
       94 CALL                             R18 1 1
       95 SETTABLEKS                       R4 R18 K6 ["current"]
       97 GETUPVAL                         R19 0
       98 GETTABLEKS                       R19 R19 K7 ["useCallback"]
      100 NEWCLOSURE                       R20 P0
      101 CAPTURE                          VAL R1
      102 NEWTABLE                         R21 0 1
      104 GETTABLEKS                       R22 R1 K8 ["getMousePosition"]
      106 SETLIST                          R21 R22 1 [1]
      108 CALL                             R19 2 1
      109 GETUPVAL                         R20 0
      110 GETTABLEKS                       R20 R20 K7 ["useCallback"]
      112 NEWCLOSURE                       R21 P1
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R3
      115 NEWTABLE                         R22 0 3
      117 MOVE                             R23 R7
      118 GETTABLEKS                       R24 R3 K9 ["panViewport"]
      120 GETTABLEKS                       R25 R3 K10 ["setHintIsDragging"]
      122 SETLIST                          R22 R23 3 [1]
      124 CALL                             R20 2 1
      125 GETUPVAL                         R21 0
      126 GETTABLEKS                       R21 R21 K7 ["useCallback"]
      128 NEWCLOSURE                       R22 P2
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R13
      136 CAPTURE                          UPVAL U5
      137 CAPTURE                          VAL R3
      138 NEWTABLE                         R23 0 10
      140 GETTABLEKS                       R24 R1 K8 ["getMousePosition"]
      142 MOVE                             R25 R19
      143 MOVE                             R26 R5
      144 MOVE                             R27 R8
      145 MOVE                             R28 R12
      146 MOVE                             R29 R13
      147 MOVE                             R30 R14
      148 GETTABLEKS                       R31 R3 K11 ["observeZoomRatio"]
      150 GETTABLEKS                       R32 R3 K12 ["setZoomRatio"]
      152 GETTABLEKS                       R33 R3 K13 ["setViewportPosition"]
      154 SETLIST                          R23 R24 10 [1]
      156 CALL                             R21 2 1
      157 GETUPVAL                         R22 0
      158 GETTABLEKS                       R22 R22 K7 ["useCallback"]
      160 NEWCLOSURE                       R23 P3
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R7
      172 NEWTABLE                         R24 0 2
      174 GETTABLEKS                       R25 R3 K11 ["observeZoomRatio"]
      176 GETTABLEKS                       R26 R3 K10 ["setHintIsDragging"]
      178 SETLIST                          R24 R25 2 [1]
      180 CALL                             R22 2 1
      181 GETUPVAL                         R23 6
      182 GETTABLEKS                       R23 R23 K14 ["useRefToState"]
      184 MOVE                             R24 R22
      185 CALL                             R23 1 1
      186 GETUPVAL                         R24 0
      187 GETTABLEKS                       R24 R24 K7 ["useCallback"]
      189 NEWCLOSURE                       R25 P4
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R8
      194 NEWTABLE                         R26 0 5
      196 MOVE                             R27 R21
      197 MOVE                             R28 R20
      198 MOVE                             R29 R18
      199 MOVE                             R30 R7
      200 MOVE                             R31 R5
      201 SETLIST                          R26 R27 5 [1]
      203 CALL                             R24 2 1
      204 GETUPVAL                         R25 6
      205 GETTABLEKS                       R25 R25 K14 ["useRefToState"]
      207 MOVE                             R26 R24
      208 CALL                             R25 1 1
      209 GETUPVAL                         R26 0
      210 GETTABLEKS                       R26 R26 K7 ["useCallback"]
      212 NEWCLOSURE                       R27 P5
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R7
      228 NEWTABLE                         R28 0 9
      230 MOVE                             R29 R9
      231 MOVE                             R30 R5
      232 GETTABLEKS                       R31 R2 K15 ["showMenu"]
      234 MOVE                             R32 R21
      235 MOVE                             R33 R20
      236 MOVE                             R34 R18
      237 GETTABLEKS                       R35 R3 K11 ["observeZoomRatio"]
      239 GETTABLEKS                       R36 R3 K10 ["setHintIsDragging"]
      241 GETTABLEKS                       R37 R3 K16 ["setZoomRatioTarget"]
      243 SETLIST                          R28 R29 9 [1]
      245 CALL                             R26 2 1
      246 GETUPVAL                         R27 6
      247 GETTABLEKS                       R27 R27 K14 ["useRefToState"]
      249 MOVE                             R28 R26
      250 CALL                             R27 1 1
      251 GETUPVAL                         R28 6
      252 GETTABLEKS                       R28 R28 K14 ["useRefToState"]
      254 GETTABLEKS                       R29 R3 K9 ["panViewport"]
      256 CALL                             R28 1 1
      257 GETUPVAL                         R29 6
      258 GETTABLEKS                       R29 R29 K14 ["useRefToState"]
      260 GETTABLEKS                       R30 R1 K8 ["getMousePosition"]
      262 CALL                             R29 1 1
      263 GETUPVAL                         R30 6
      264 GETTABLEKS                       R30 R30 K14 ["useRefToState"]
      266 GETTABLEKS                       R31 R3 K11 ["observeZoomRatio"]
      268 CALL                             R30 1 1
      269 GETUPVAL                         R31 6
      270 GETTABLEKS                       R31 R31 K17 ["useEventCallback"]
      272 NEWCLOSURE                       R32 P6
      273 CAPTURE                          VAL R5
      274 CAPTURE                          VAL R1
      275 CAPTURE                          VAL R19
      276 CAPTURE                          VAL R30
      277 CAPTURE                          VAL R3
      278 CAPTURE                          VAL R17
      279 CAPTURE                          VAL R28
      280 CALL                             R31 1 1
      281 GETUPVAL                         R32 6
      282 GETTABLEKS                       R32 R32 K14 ["useRefToState"]
      284 MOVE                             R33 R31
      285 CALL                             R32 1 1
      286 GETUPVAL                         R33 0
      287 GETTABLEKS                       R33 R33 K18 ["useEffect"]
      289 NEWCLOSURE                       R34 P7
      290 CAPTURE                          VAL R5
      291 CAPTURE                          VAL R3
      292 CAPTURE                          VAL R1
      293 NEWTABLE                         R35 0 3
      295 MOVE                             R36 R5
      296 GETTABLEKS                       R37 R1 K8 ["getMousePosition"]
      298 GETTABLEKS                       R38 R3 K19 ["setCursorOffsetProvider"]
      300 SETLIST                          R35 R36 3 [1]
      302 CALL                             R33 2 0
      303 GETUPVAL                         R33 0
      304 GETTABLEKS                       R33 R33 K18 ["useEffect"]
      306 NEWCLOSURE                       R34 P8
      307 CAPTURE                          VAL R5
      308 CAPTURE                          VAL R27
      309 CAPTURE                          VAL R23
      310 CAPTURE                          VAL R25
      311 CAPTURE                          UPVAL U7
      312 CAPTURE                          VAL R29
      313 CAPTURE                          VAL R15
      314 CAPTURE                          VAL R16
      315 CAPTURE                          VAL R12
      316 CAPTURE                          VAL R13
      317 CAPTURE                          VAL R14
      318 CAPTURE                          VAL R30
      319 CAPTURE                          VAL R8
      320 CAPTURE                          VAL R10
      321 CAPTURE                          VAL R11
      322 CAPTURE                          VAL R1
      323 CAPTURE                          VAL R32
      324 NEWTABLE                         R35 0 2
      326 MOVE                             R36 R5
      327 GETTABLEKS                       R37 R1 K20 ["bindOnPointerAction"]
      329 SETLIST                          R35 R36 2 [1]
      331 CALL                             R33 2 0
      332 GETUPVAL                         R33 0
      333 GETTABLEKS                       R33 R33 K21 ["createElement"]
      335 GETUPVAL                         R34 8
      336 GETTABLEKS                       R34 R34 K22 ["View"]
      338 DUPTABLE                         R35 K29 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"], ["testId"] = "NodeViewScroller"}]
      339 GETTABLEKS                       R36 R0 K25 ["ZIndex"]
      341 SETTABLEKS                       R36 R35 K25 ["ZIndex"]
      343 SETTABLEKS                       R6 R35 K26 ["ref"]
      345 CALL                             R33 2 -1
      346 RETURN                           R33 -1

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
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["Graphing"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Components"]
       38 GETTABLEKS                       R6 R6 K15 ["InsertNodeContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K10 ["Parent"]
       45 GETTABLEKS                       R7 R7 K16 ["React"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K10 ["Parent"]
       52 GETTABLEKS                       R8 R8 K17 ["ReactUtils"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K14 ["Components"]
       59 GETTABLEKS                       R9 R9 K18 ["ViewportRectContext"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K19 ["Flags"]
       66 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUIInvertGesturalZoom"]
       68 CALL                             R9 1 1
       69 DUPCLOSURE                       R10 K21 [PROTO_0]
       70 DUPCLOSURE                       R11 K22 [PROTO_20]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R3
       80 RETURN                           R11 1
