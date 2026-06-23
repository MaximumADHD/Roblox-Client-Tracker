PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["explorerRowHeight"]
        6 MUL                              R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R4 K6 [Enum.ModifierKey.Ctrl]
        9 NAMECALL                         R2 R1 K7 ["IsModifierKeyDown"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+6]
       13 GETIMPORT                        R4 K9 [Enum.ModifierKey.Shift]
       15 NAMECALL                         R2 R1 K7 ["IsModifierKeyDown"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+34]
       19 GETUPVAL                         R3 0
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K10 ["explorerScrollRate"]
       24 SUB                              R2 R3 R4
       25 GETTABLEKS                       R3 R1 K11 ["Position"]
       27 GETTABLEKS                       R3 R3 K12 ["Z"]
       29 LOADN                            R4 0
       30 JUMPIFNOTLT                      R3 R4 ; [+12]
       32 GETTABLEKS                       R3 R0 K13 ["CanvasPosition"]
       34 GETIMPORT                        R4 K16 [Vector2.new]
       36 LOADN                            R5 0
       37 MOVE                             R6 R2
       38 CALL                             R4 2 1
       39 ADD                              R3 R3 R4
       40 SETTABLEKS                       R3 R0 K13 ["CanvasPosition"]
       42 RETURN                           R0 0
       43 GETTABLEKS                       R3 R0 K13 ["CanvasPosition"]
       45 GETIMPORT                        R4 K16 [Vector2.new]
       47 LOADN                            R5 0
       48 MOVE                             R6 R2
       49 CALL                             R4 2 1
       50 SUB                              R3 R3 R4
       51 SETTABLEKS                       R3 R0 K13 ["CanvasPosition"]
       53 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+17]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 JUMPIFEQKS                       R2 K1 ["Up"] ; [+6]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 JUMPIFNOTEQKS                    R2 K2 ["Down"] ; [+3]
       16 LOADK                            R1 K3 ["Vertical"]
       17 JUMP                             ; [+1]
       18 LOADK                            R1 K4 ["Horizontal"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 3
       22 GETTABLEKS                       R0 R0 K0 ["current"]
       24 JUMPIF                           R0 ; [+1]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R1 R0 K5 ["DraggingScrollBar"]
       28 GETIMPORT                        R2 K8 [Enum.DraggingScrollBar.None]
       30 JUMPIFEQ                         R1 R2 ; [+11]
       32 GETUPVAL                         R2 1
       33 GETIMPORT                        R4 K9 [Enum.DraggingScrollBar.Vertical]
       35 JUMPIFNOTEQ                      R1 R4 ; [+3]
       37 LOADK                            R3 K3 ["Vertical"]
       38 JUMP                             ; [+1]
       39 LOADK                            R3 K4 ["Horizontal"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R2 4
       43 GETTABLEKS                       R2 R2 K10 ["isMouseHoverEnabledObservable"]
       45 GETTABLEKS                       R2 R2 K11 ["get"]
       47 CALL                             R2 0 1
       48 JUMPIFNOT                        R2 ; [+7]
       49 GETUPVAL                         R2 5
       50 GETTABLEKS                       R2 R2 K12 ["isBlockingHoveringObservable"]
       52 GETTABLEKS                       R2 R2 K11 ["get"]
       54 CALL                             R2 0 1
       55 JUMPIFNOT                        R2 ; [+4]
       56 GETUPVAL                         R2 1
       57 LOADNIL                          R3
       58 CALL                             R2 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R2 1
       61 GETUPVAL                         R3 6
       62 DUPTABLE                         R4 K16 [{"scrollingFrameRef", "position", "shouldIgnoreUnclickableArea"}]
       63 GETUPVAL                         R5 3
       64 SETTABLEKS                       R5 R4 K13 ["scrollingFrameRef"]
       66 GETUPVAL                         R5 4
       67 GETTABLEKS                       R5 R5 K17 ["getMousePosition"]
       69 CALL                             R5 0 1
       70 SETTABLEKS                       R5 R4 K14 ["position"]
       72 LOADB                            R5 1
       73 SETTABLEKS                       R5 R4 K15 ["shouldIgnoreUnclickableArea"]
       75 CALL                             R3 1 -1
       76 CALL                             R2 -1 0
       77 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{"scrollingFrameRef", "position", "shouldIgnoreUnclickableArea"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["scrollingFrameRef"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K4 ["getMousePosition"]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R1 K1 ["position"]
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K2 ["shouldIgnoreUnclickableArea"]
       14 CALL                             R0 1 1
       15 JUMPIFNOTEQKNIL                  R0 ; [+3]
       17 LOADNIL                          R1
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K5 ["current"]
       22 JUMPIFNOTEQKNIL                  R1 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       28 LOADK                            R4 K6 ["scrollingFrameRef should not be nil"]
       29 GETIMPORT                        R2 K8 [assert]
       31 CALL                             R2 2 0
       32 JUMPIFNOTEQKS                    R0 K9 ["Vertical"] ; [+4]
       34 GETTABLEKS                       R2 R1 K10 ["VerticalBarRect"]
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R2 R1 K11 ["HorizontalBarRect"]
       39 GETTABLEKS                       R3 R2 K12 ["Min"]
       41 GETTABLEKS                       R4 R2 K13 ["Max"]
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K4 ["getMousePosition"]
       46 CALL                             R5 0 1
       47 JUMPIFNOTEQKS                    R0 K9 ["Vertical"] ; [+18]
       49 GETTABLEKS                       R6 R5 K14 ["Y"]
       51 GETTABLEKS                       R7 R3 K14 ["Y"]
       53 JUMPIFNOTLE                      R6 R7 ; [+3]
       55 LOADK                            R6 K15 ["Up"]
       56 RETURN                           R6 1
       57 GETTABLEKS                       R6 R5 K14 ["Y"]
       59 GETTABLEKS                       R7 R4 K14 ["Y"]
       61 JUMPIFNOTLT                      R7 R6 ; [+20]
       63 LOADK                            R6 K16 ["Down"]
       64 RETURN                           R6 1
       65 JUMP                             ; [+16]
       66 GETTABLEKS                       R6 R5 K17 ["X"]
       68 GETTABLEKS                       R7 R3 K17 ["X"]
       70 JUMPIFNOTLE                      R6 R7 ; [+3]
       72 LOADK                            R6 K18 ["Left"]
       73 RETURN                           R6 1
       74 GETTABLEKS                       R6 R5 K17 ["X"]
       76 GETTABLEKS                       R7 R4 K17 ["X"]
       78 JUMPIFNOTLT                      R7 R6 ; [+3]
       80 LOADK                            R6 K19 ["Right"]
       81 RETURN                           R6 1
       82 LOADNIL                          R6
       83 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K1 ["Up"] ; [+13]
        8 GETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       10 GETIMPORT                        R3 K5 [Vector2.new]
       12 LOADN                            R4 0
       13 GETUPVAL                         R5 1
       14 CALL                             R5 0 -1
       15 CALL                             R3 -1 1
       16 SUB                              R2 R2 R3
       17 SETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       19 RETURN                           R0 0
       20 JUMPIFNOTEQKS                    R0 K6 ["Down"] ; [+13]
       22 GETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       24 GETIMPORT                        R3 K5 [Vector2.new]
       26 LOADN                            R4 0
       27 GETUPVAL                         R5 1
       28 CALL                             R5 0 -1
       29 CALL                             R3 -1 1
       30 ADD                              R2 R2 R3
       31 SETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       33 RETURN                           R0 0
       34 JUMPIFNOTEQKS                    R0 K7 ["Left"] ; [+12]
       36 GETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       38 GETIMPORT                        R3 K5 [Vector2.new]
       40 GETUPVAL                         R4 2
       41 LOADN                            R5 0
       42 CALL                             R3 2 1
       43 SUB                              R2 R2 R3
       44 SETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       46 RETURN                           R0 0
       47 JUMPIFNOTEQKS                    R0 K8 ["Right"] ; [+11]
       49 GETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       51 GETIMPORT                        R3 K5 [Vector2.new]
       53 GETUPVAL                         R4 2
       54 LOADN                            R5 0
       55 CALL                             R3 2 1
       56 ADD                              R2 R2 R3
       57 SETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       59 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+15]
        5 GETIMPORT                        R0 K3 [task.cancel]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 GETUPVAL                         R0 1
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K0 ["current"]
       19 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 GETUPVAL                         R2 0
        3 DIVK                             R1 R2 K3 [1000]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["isMouseDown"]
        8 CALL                             R0 0 1
        9 JUMPIF                           R0 ; [+9]
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K5 ["current"]
       14 GETUPVAL                         R0 3
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["current"]
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 4
       20 CALL                             R0 0 1
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K5 ["current"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+6]
       26 GETUPVAL                         R0 5
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K5 ["current"]
       30 CALL                             R0 1 0
       31 GETIMPORT                        R0 K2 [task.wait]
       33 GETUPVAL                         R2 6
       34 DIVK                             R1 R2 K3 [1000]
       35 CALL                             R0 1 0
       36 JUMPBACK                         ; [-32]
       37 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 4
       19 GETIMPORT                        R1 K3 [task.spawn]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U7
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K0 ["current"]
       32 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useRef"]
        3 LOADNIL                          R5
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["useState"]
        8 LOADNIL                          R6
        9 CALL                             R5 1 2
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K0 ["useRef"]
       13 LOADNIL                          R8
       14 CALL                             R7 1 1
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K2 ["useContext"]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K3 ["Context"]
       21 CALL                             R8 1 1
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K2 ["useContext"]
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R10 R10 K3 ["Context"]
       28 CALL                             R9 1 1
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       32 NEWCLOSURE                       R11 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U4
       35 NEWTABLE                         R12 0 0
       37 CALL                             R10 2 1
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       41 NEWCLOSURE                       R12 P1
       42 CAPTURE                          VAL R10
       43 CAPTURE                          UPVAL U4
       44 NEWTABLE                         R13 0 0
       46 CALL                             R11 2 1
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       50 NEWCLOSURE                       R13 P2
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 CAPTURE                          UPVAL U5
       58 NEWTABLE                         R14 0 2
       60 MOVE                             R15 R6
       61 GETTABLEKS                       R16 R4 K5 ["current"]
       63 SETLIST                          R14 R15 2 [1]
       65 CALL                             R12 2 1
       66 GETUPVAL                         R13 1
       67 GETTABLEKS                       R13 R13 K6 ["useEffect"]
       69 GETTABLEKS                       R14 R9 K7 ["isMouseHoverEnabledObservable"]
       71 MOVE                             R15 R12
       72 NEWTABLE                         R16 0 1
       74 MOVE                             R17 R12
       75 SETLIST                          R16 R17 1 [1]
       77 CALL                             R13 3 0
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R13 R13 K6 ["useEffect"]
       81 GETTABLEKS                       R14 R8 K8 ["isBlockingHoveringObservable"]
       83 MOVE                             R15 R12
       84 NEWTABLE                         R16 0 1
       86 MOVE                             R17 R12
       87 SETLIST                          R16 R17 1 [1]
       89 CALL                             R13 3 0
       90 GETUPVAL                         R13 6
       91 GETTABLEKS                       R14 R9 K9 ["mouseDownChanged"]
       93 MOVE                             R15 R12
       94 NEWTABLE                         R16 0 1
       96 MOVE                             R17 R12
       97 SETLIST                          R16 R17 1 [1]
       99 CALL                             R13 3 0
      100 GETUPVAL                         R13 6
      101 GETTABLEKS                       R14 R9 K10 ["mouseMoved"]
      103 MOVE                             R15 R12
      104 NEWTABLE                         R16 0 1
      106 MOVE                             R17 R12
      107 SETLIST                          R16 R17 1 [1]
      109 CALL                             R13 3 0
      110 GETUPVAL                         R13 0
      111 GETTABLEKS                       R13 R13 K4 ["useCallback"]
      113 NEWCLOSURE                       R14 P3
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R9
      117 NEWTABLE                         R15 0 1
      119 GETUPVAL                         R16 5
      120 SETLIST                          R15 R16 1 [1]
      122 CALL                             R13 2 1
      123 GETUPVAL                         R14 0
      124 GETTABLEKS                       R14 R14 K4 ["useCallback"]
      126 NEWCLOSURE                       R15 P4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R3
      130 NEWTABLE                         R16 0 2
      132 MOVE                             R17 R10
      133 MOVE                             R18 R3
      134 SETLIST                          R16 R17 2 [1]
      136 CALL                             R14 2 1
      137 GETUPVAL                         R15 0
      138 GETTABLEKS                       R15 R15 K4 ["useCallback"]
      140 NEWCLOSURE                       R16 P5
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R4
      143 NEWTABLE                         R17 0 0
      145 CALL                             R15 2 1
      146 GETUPVAL                         R16 0
      147 GETTABLEKS                       R16 R16 K4 ["useCallback"]
      149 NEWCLOSURE                       R17 P6
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R7
      155 CAPTURE                          UPVAL U7
      156 CAPTURE                          VAL R9
      157 CAPTURE                          UPVAL U8
      158 NEWTABLE                         R18 0 3
      160 MOVE                             R19 R15
      161 MOVE                             R20 R13
      162 MOVE                             R21 R14
      163 SETLIST                          R18 R19 3 [1]
      165 CALL                             R16 2 1
      166 GETUPVAL                         R17 0
      167 GETTABLEKS                       R17 R17 K6 ["useEffect"]
      169 NEWCLOSURE                       R18 P7
      170 CAPTURE                          VAL R15
      171 NEWTABLE                         R19 0 2
      173 MOVE                             R20 R0
      174 MOVE                             R21 R15
      175 SETLIST                          R19 R20 2 [1]
      177 CALL                             R17 2 0
      178 GETUPVAL                         R17 0
      179 GETTABLEKS                       R17 R17 K2 ["useContext"]
      181 GETUPVAL                         R18 9
      182 GETTABLEKS                       R18 R18 K3 ["Context"]
      184 CALL                             R17 1 1
      185 GETUPVAL                         R18 6
      186 GETTABLEKS                       R19 R17 K11 ["inputBeganSignal"]
      188 NEWCLOSURE                       R20 P8
      189 CAPTURE                          VAL R16
      190 NEWTABLE                         R21 0 1
      192 MOVE                             R22 R16
      193 SETLIST                          R21 R22 1 [1]
      195 CALL                             R18 3 0
      196 DUPTABLE                         R18 K14 [{"inputChanged", "activeScrollBarObservable"}]
      197 SETTABLEKS                       R11 R18 K12 ["inputChanged"]
      199 SETTABLEKS                       R5 R18 K13 ["activeScrollBarObservable"]
      201 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["HoverBlockerContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Components"]
       27 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["MouseContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Observable"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Components"]
       55 GETTABLEKS                       R8 R8 K9 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K16 ["WindowInputContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Util"]
       64 GETTABLEKS                       R9 R9 K17 ["getScrollBarOrientation"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       71 GETTABLEKS                       R10 R10 K19 ["useEventConnection"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K21 [game]
       76 LOADK                            R12 K22 ["ExplorerPageScrollDelayMs"]
       77 LOADN                            R13 244
       78 NAMECALL                         R10 R10 K23 ["DefineFastInt"]
       80 CALL                             R10 3 1
       81 GETIMPORT                        R11 K21 [game]
       83 LOADK                            R13 K24 ["ExplorerPageScrollRateMs"]
       84 LOADN                            R14 30
       85 NAMECALL                         R11 R11 K23 ["DefineFastInt"]
       87 CALL                             R11 3 1
       88 DUPCLOSURE                       R12 K25 [PROTO_10]
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R7
       99 RETURN                           R12 1
