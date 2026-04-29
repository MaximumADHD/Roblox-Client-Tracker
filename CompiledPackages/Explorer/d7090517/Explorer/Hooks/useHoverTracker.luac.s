PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K1 ["getMousePosition"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K2 ["isMouseHoverEnabledObservable"]
       19 GETTABLEKS                       R3 R4 K3 ["get"]
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+23]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K4 ["isBlockingHoveringObservable"]
       26 GETTABLEKS                       R3 R4 K3 ["get"]
       28 CALL                             R3 0 1
       29 JUMPIF                           R3 ; [+16]
       30 GETTABLEKS                       R3 R0 K5 ["DraggingScrollBar"]
       32 GETIMPORT                        R4 K8 [Enum.DraggingScrollBar.None]
       34 JUMPIFNOTEQ                      R3 R4 ; [+11]
       36 GETUPVAL                         R3 4
       37 DUPTABLE                         R4 K11 [{"scrollingFrameRef", "position"}]
       38 GETUPVAL                         R5 0
       39 SETTABLEKS                       R5 R4 K9 ["scrollingFrameRef"]
       41 SETTABLEKS                       R2 R4 K10 ["position"]
       43 CALL                             R3 1 1
       44 JUMPIFEQKNIL                     R3 ; [+7]
       46 GETUPVAL                         R4 5
       47 GETTABLEKS                       R3 R4 K12 ["hoverId"]
       49 LOADNIL                          R4
       50 CALL                             R3 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R3 6
       53 MOVE                             R4 R1
       54 MOVE                             R5 R2
       55 CALL                             R3 2 1
       56 JUMPIFNOT                        R3 ; [+9]
       57 GETUPVAL                         R4 7
       58 GETTABLEKS                       R3 R4 K3 ["get"]
       60 CALL                             R3 0 1
       61 JUMPIF                           R3 ; [+18]
       62 GETUPVAL                         R3 8
       63 LOADB                            R4 1
       64 CALL                             R3 1 0
       65 JUMP                             ; [+14]
       66 GETUPVAL                         R4 7
       67 GETTABLEKS                       R3 R4 K3 ["get"]
       69 CALL                             R3 0 1
       70 JUMPIFNOT                        R3 ; [+3]
       71 GETUPVAL                         R3 8
       72 LOADB                            R4 0
       73 CALL                             R3 1 0
       74 GETUPVAL                         R4 5
       75 GETTABLEKS                       R3 R4 K12 ["hoverId"]
       77 LOADNIL                          R4
       78 CALL                             R3 1 0
       79 RETURN                           R0 0
       80 GETTABLEKS                       R3 R2 K13 ["Y"]
       82 GETTABLEKS                       R5 R0 K14 ["AbsolutePosition"]
       84 GETTABLEKS                       R4 R5 K13 ["Y"]
       86 JUMPIFLT                         R3 R4 ; [+14]
       88 GETTABLEKS                       R3 R2 K13 ["Y"]
       90 GETTABLEKS                       R6 R0 K14 ["AbsolutePosition"]
       92 GETTABLEKS                       R5 R6 K13 ["Y"]
       94 GETTABLEKS                       R7 R0 K15 ["AbsoluteSize"]
       96 GETTABLEKS                       R6 R7 K13 ["Y"]
       98 ADD                              R4 R5 R6
       99 JUMPIFNOTLT                      R4 R3 ; [+7]
      101 GETUPVAL                         R4 5
      102 GETTABLEKS                       R3 R4 K12 ["hoverId"]
      104 LOADNIL                          R4
      105 CALL                             R3 1 0
      106 RETURN                           R0 0
      107 GETIMPORT                        R4 K18 [Vector2.new]
      109 LOADN                            R5 0
      110 GETUPVAL                         R8 9
      111 GETTABLEKS                       R7 R8 K3 ["get"]
      113 CALL                             R7 0 1
      114 GETTABLEKS                       R9 R0 K14 ["AbsolutePosition"]
      116 GETTABLEKS                       R8 R9 K13 ["Y"]
      118 SUB                              R6 R7 R8
      119 CALL                             R4 2 1
      120 ADD                              R3 R2 R4
      121 GETUPVAL                         R4 10
      122 LOADNIL                          R5
      123 LOADNIL                          R6
      124 FORGPREP                         R4
      125 GETTABLEKS                       R9 R8 K3 ["get"]
      127 CALL                             R9 0 1
      128 GETTABLEKS                       R10 R9 K19 ["yPixels"]
      130 GETTABLEKS                       R11 R3 K13 ["Y"]
      132 JUMPIFNOTLE                      R10 R11 ; [+20]
      134 GETTABLEKS                       R10 R3 K13 ["Y"]
      136 GETTABLEKS                       R12 R9 K19 ["yPixels"]
      138 GETUPVAL                         R14 11
      139 GETTABLEKS                       R13 R14 K20 ["explorerRowHeight"]
      141 ADD                              R11 R12 R13
      142 JUMPIFNOTLE                      R10 R11 ; [+10]
      144 GETUPVAL                         R11 5
      145 GETTABLEKS                       R10 R11 K12 ["hoverId"]
      147 GETTABLEKS                       R12 R9 K21 ["datum"]
      149 GETTABLEKS                       R11 R12 K22 ["id"]
      151 CALL                             R10 1 0
      152 RETURN                           R0 0
      153 FORGLOOP                         R4 2 ; [-29]
      155 GETUPVAL                         R5 5
      156 GETTABLEKS                       R4 R5 K12 ["hoverId"]
      158 LOADNIL                          R5
      159 CALL                             R4 1 0
      160 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 LOADB                            R0 0
        6 SETUPVAL                         R0 2
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 GETTABLEKS                       R4 R0 K0 ["datum"]
        5 GETTABLEKS                       R3 R4 K1 ["id"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R5 R0 K0 ["datum"]
       15 GETTABLEKS                       R4 R5 K1 ["id"]
       17 SETTABLE                         R4 R2 R3
       18 GETUPVAL                         R2 2
       19 JUMPIFNOT                        R2 ; [+1]
       20 RETURN                           R0 0
       21 JUMPIFNOT                        R1 ; [+14]
       22 LOADB                            R2 1
       23 SETUPVAL                         R2 2
       24 GETUPVAL                         R2 3
       25 CALL                             R2 0 1
       26 JUMPIF                           R2 ; [+2]
       27 GETUPVAL                         R2 4
       28 CALL                             R2 0 0
       29 GETIMPORT                        R2 K4 [task.defer]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U2
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R10 R7 K0 ["get"]
       11 CALL                             R10 0 1
       12 GETTABLEKS                       R9 R10 K1 ["datum"]
       14 GETTABLEKS                       R8 R9 K2 ["id"]
       16 SETTABLE                         R8 R2 R6
       17 MOVE                             R9 R0
       18 GETTABLEKS                       R10 R7 K3 ["changedSignal"]
       20 NEWCLOSURE                       R12 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R6
       23 CAPTURE                          REF R1
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 NAMECALL                         R10 R10 K4 ["Connect"]
       28 CALL                             R10 2 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R8 K7 [table.insert]
       32 CALL                             R8 -1 0
       33 FORGLOOP                         R3 2 ; [-25]
       35 NEWCLOSURE                       R3 P1
       36 CAPTURE                          VAL R0
       37 CLOSEUPVALS                      R1
       38 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["hoverId"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["useContext"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R6 R7 K1 ["Context"]
        6 CALL                             R5 1 1
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["useContext"]
       10 GETUPVAL                         R8 2
       11 GETTABLEKS                       R7 R8 K1 ["Context"]
       13 CALL                             R6 1 1
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R7 R8 K2 ["useState"]
       17 LOADB                            R8 0
       18 CALL                             R7 1 2
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R9 R10 K3 ["useCallback"]
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R5
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R8
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U6
       35 NEWTABLE                         R11 0 5
       37 MOVE                             R12 R2
       38 GETTABLEKS                       R13 R0 K4 ["hoverId"]
       40 GETTABLEKS                       R14 R6 K5 ["getMousePosition"]
       42 MOVE                             R15 R1
       43 MOVE                             R16 R3
       44 SETLIST                          R11 R12 5 [1]
       46 CALL                             R9 2 1
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R10 R11 K6 ["useEffect"]
       50 NEWCLOSURE                       R11 P1
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R9
       54 NEWTABLE                         R12 0 2
       56 MOVE                             R13 R1
       57 MOVE                             R14 R9
       58 SETLIST                          R12 R13 2 [1]
       60 CALL                             R10 2 0
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R10 R11 K6 ["useEffect"]
       64 NEWCLOSURE                       R11 P2
       65 CAPTURE                          VAL R0
       66 NEWTABLE                         R12 0 1
       68 GETTABLEKS                       R13 R0 K4 ["hoverId"]
       70 SETLIST                          R12 R13 1 [1]
       72 CALL                             R10 2 0
       73 GETUPVAL                         R10 8
       74 GETTABLEKS                       R11 R6 K7 ["mouseMoved"]
       76 MOVE                             R12 R9
       77 NEWTABLE                         R13 0 1
       79 MOVE                             R14 R9
       80 SETLIST                          R13 R14 1 [1]
       82 CALL                             R10 3 0
       83 GETUPVAL                         R11 3
       84 GETTABLEKS                       R10 R11 K6 ["useEffect"]
       86 GETTABLEKS                       R11 R6 K8 ["isMouseHoverEnabledObservable"]
       88 MOVE                             R12 R9
       89 NEWTABLE                         R13 0 1
       91 MOVE                             R14 R9
       92 SETLIST                          R13 R14 1 [1]
       94 CALL                             R10 3 0
       95 GETUPVAL                         R11 3
       96 GETTABLEKS                       R10 R11 K6 ["useEffect"]
       98 GETTABLEKS                       R11 R5 K9 ["isBlockingHoveringObservable"]
      100 MOVE                             R12 R9
      101 NEWTABLE                         R13 0 1
      103 MOVE                             R14 R9
      104 SETLIST                          R13 R14 1 [1]
      106 CALL                             R10 3 0
      107 GETUPVAL                         R11 0
      108 GETTABLEKS                       R10 R11 K6 ["useEffect"]
      110 MOVE                             R11 R9
      111 NEWTABLE                         R12 0 1
      113 MOVE                             R13 R9
      114 SETLIST                          R12 R13 1 [1]
      116 CALL                             R10 2 0
      117 DUPTABLE                         R10 K11 [{"windowIsHoveredObservable"}]
      118 SETTABLEKS                       R7 R10 K10 ["windowIsHoveredObservable"]
      120 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["HoverBlockerContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Components"]
       27 GETTABLEKS                       R5 R6 K9 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["MouseContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["Observable"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R7 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R9 K17 ["getFFlagExplorerEfficientVirtualizationDiffing"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K6 ["Util"]
       62 GETTABLEKS                       R9 R10 K18 ["getScrollBarOrientation"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K6 ["Util"]
       69 GETTABLEKS                       R10 R11 K19 ["isPositionInsideGui"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K21 ["useEventConnection"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       83 GETTABLEKS                       R12 R13 K22 ["useVisibleExplorerNodeRange"]
       85 CALL                             R11 1 1
       86 DUPCLOSURE                       R12 K23 [PROTO_7]
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R10
       96 RETURN                           R12 1
