PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 LOADB                            R1 0
        6 SETUPVAL                         R1 2
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 LOADB                            R1 1
       12 SETUPVAL                         R1 2
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K0 ["DraggingScrollBar"]
       16 GETIMPORT                        R2 K3 [Enum.DraggingScrollBar.Horizontal]
       18 JUMPIFNOTEQ                      R1 R2 ; [+61]
       20 GETTABLEKS                       R1 R0 K4 ["X"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K5 ["AbsolutePosition"]
       25 GETTABLEKS                       R2 R2 K4 ["X"]
       27 JUMPIFNOTLT                      R1 R2 ; [+14]
       29 GETUPVAL                         R1 1
       30 GETIMPORT                        R2 K8 [Vector2.new]
       32 LOADN                            R3 0
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K9 ["CanvasPosition"]
       36 GETTABLEKS                       R4 R4 K10 ["Y"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K9 ["CanvasPosition"]
       41 RETURN                           R0 0
       42 GETTABLEKS                       R1 R0 K4 ["X"]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K5 ["AbsolutePosition"]
       47 GETTABLEKS                       R3 R3 K4 ["X"]
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K11 ["AbsoluteSize"]
       52 GETTABLEKS                       R4 R4 K4 ["X"]
       54 ADD                              R2 R3 R4
       55 JUMPIFNOTLT                      R2 R1 ; [+83]
       57 GETUPVAL                         R1 1
       58 GETIMPORT                        R2 K8 [Vector2.new]
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R4 R4 K12 ["AbsoluteCanvasSize"]
       63 GETTABLEKS                       R4 R4 K4 ["X"]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K13 ["AbsoluteWindowSize"]
       68 GETTABLEKS                       R5 R5 K4 ["X"]
       70 SUB                              R3 R4 R5
       71 GETUPVAL                         R4 1
       72 GETTABLEKS                       R4 R4 K9 ["CanvasPosition"]
       74 GETTABLEKS                       R4 R4 K10 ["Y"]
       76 CALL                             R2 2 1
       77 SETTABLEKS                       R2 R1 K9 ["CanvasPosition"]
       79 RETURN                           R0 0
       80 GETTABLEKS                       R1 R0 K10 ["Y"]
       82 GETUPVAL                         R2 1
       83 GETTABLEKS                       R2 R2 K5 ["AbsolutePosition"]
       85 GETTABLEKS                       R2 R2 K10 ["Y"]
       87 JUMPIFNOTLT                      R1 R2 ; [+14]
       89 GETUPVAL                         R1 1
       90 GETIMPORT                        R2 K8 [Vector2.new]
       92 GETUPVAL                         R3 1
       93 GETTABLEKS                       R3 R3 K9 ["CanvasPosition"]
       95 GETTABLEKS                       R3 R3 K4 ["X"]
       97 LOADN                            R4 0
       98 CALL                             R2 2 1
       99 SETTABLEKS                       R2 R1 K9 ["CanvasPosition"]
      101 RETURN                           R0 0
      102 GETTABLEKS                       R1 R0 K10 ["Y"]
      104 GETUPVAL                         R3 1
      105 GETTABLEKS                       R3 R3 K5 ["AbsolutePosition"]
      107 GETTABLEKS                       R3 R3 K10 ["Y"]
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R4 R4 K11 ["AbsoluteSize"]
      112 GETTABLEKS                       R4 R4 K10 ["Y"]
      114 ADD                              R2 R3 R4
      115 JUMPIFNOTLT                      R2 R1 ; [+23]
      117 GETUPVAL                         R1 1
      118 GETIMPORT                        R2 K8 [Vector2.new]
      120 GETUPVAL                         R3 1
      121 GETTABLEKS                       R3 R3 K9 ["CanvasPosition"]
      123 GETTABLEKS                       R3 R3 K4 ["X"]
      125 GETUPVAL                         R5 1
      126 GETTABLEKS                       R5 R5 K12 ["AbsoluteCanvasSize"]
      128 GETTABLEKS                       R5 R5 K10 ["Y"]
      130 GETUPVAL                         R6 1
      131 GETTABLEKS                       R6 R6 K13 ["AbsoluteWindowSize"]
      133 GETTABLEKS                       R6 R6 K10 ["Y"]
      135 SUB                              R4 R5 R6
      136 CALL                             R2 2 1
      137 SETTABLEKS                       R2 R1 K9 ["CanvasPosition"]
      139 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DraggingScrollBar"]
        3 GETIMPORT                        R1 K3 [Enum.DraggingScrollBar.None]
        5 JUMPIFNOTEQ                      R0 R1 ; [+11]
        7 GETUPVAL                         R0 1
        8 JUMPIFEQKNIL                     R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K4 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 JUMPIFEQKNIL                     R0 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K5 ["mouseMoved"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U4
       28 NAMECALL                         R0 R0 K6 ["Connect"]
       30 CALL                             R0 2 1
       31 SETUPVAL                         R0 1
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 LOADNIL                          R1
       11 LOADB                            R2 0
       12 LOADK                            R5 K1 ["DraggingScrollBar"]
       13 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       15 CALL                             R3 2 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          REF R1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          REF R2
       22 NAMECALL                         R3 R3 K3 ["Connect"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          REF R1
       28 CLOSEUPVALS                      R1
       29 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R4 0 2
       16 GETTABLEKS                       R5 R0 K3 ["current"]
       18 GETTABLEKS                       R6 R1 K4 ["getMousePosition"]
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["MouseContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Signal"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["isPositionInsideGui"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K14 [PROTO_4]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 RETURN                           R5 1
