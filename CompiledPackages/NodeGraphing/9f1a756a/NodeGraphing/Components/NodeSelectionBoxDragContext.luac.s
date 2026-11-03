PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFNOTEQKNIL                  R7 ; [+2]
        8 LOADB                            R9 0 +1
        9 LOADB                            R9 1
       10 FASTCALL2K                       ASSERT R9 K0 ; [+4]
       12 LOADK                            R10 K0 ["Luau"]
       13 GETIMPORT                        R8 K2 [assert]
       15 CALL                             R8 2 0
       16 GETIMPORT                        R8 K5 [Rect.new]
       18 GETTABLEKS                       R9 R7 K6 ["position"]
       20 GETTABLEKS                       R11 R7 K6 ["position"]
       22 GETIMPORT                        R12 K8 [Vector2.new]
       24 GETTABLEKS                       R13 R7 K9 ["size"]
       26 GETTABLEKS                       R13 R13 K10 ["X"]
       28 GETTABLEKS                       R15 R7 K9 ["size"]
       30 GETTABLEKS                       R15 R15 K11 ["Y"]
       32 MINUS                            R14 R15
       33 CALL                             R12 2 1
       34 ADD                              R10 R11 R12
       35 CALL                             R8 2 1
       36 LOADB                            R9 0
       37 GETTABLEKS                       R10 R8 K12 ["Min"]
       39 GETTABLEKS                       R10 R10 K10 ["X"]
       41 GETTABLEKS                       R11 R1 K13 ["Max"]
       43 GETTABLEKS                       R11 R11 K10 ["X"]
       45 JUMPIFNOTLT                      R10 R11 ; [+35]
       47 LOADB                            R9 0
       48 GETTABLEKS                       R10 R8 K13 ["Max"]
       50 GETTABLEKS                       R10 R10 K10 ["X"]
       52 GETTABLEKS                       R11 R1 K12 ["Min"]
       54 GETTABLEKS                       R11 R11 K10 ["X"]
       56 JUMPIFNOTLT                      R11 R10 ; [+24]
       58 LOADB                            R9 0
       59 GETTABLEKS                       R10 R8 K12 ["Min"]
       61 GETTABLEKS                       R10 R10 K11 ["Y"]
       63 GETTABLEKS                       R11 R1 K13 ["Max"]
       65 GETTABLEKS                       R11 R11 K11 ["Y"]
       67 JUMPIFNOTLT                      R10 R11 ; [+13]
       69 GETTABLEKS                       R10 R8 K13 ["Max"]
       71 GETTABLEKS                       R10 R10 K11 ["Y"]
       73 GETTABLEKS                       R11 R1 K12 ["Min"]
       75 GETTABLEKS                       R11 R11 K11 ["Y"]
       77 JUMPIFLT                         R11 R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 JUMPIFNOT                        R9 ; [+2]
       82 LOADB                            R10 1
       83 SETTABLE                         R10 R2 R6
       84 FORGLOOP                         R3 2 ; [-79]
       86 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R4 K3 [Enum.ModifierKey.Shift]
        2 NAMECALL                         R2 R1 K4 ["IsModifierKeyDown"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R2 R3 K5 ["current"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["nodeRenderInfoDispatcher"]
        8 GETTABLEKS                       R3 R3 K1 ["getMap"]
       10 CALL                             R3 0 1
       11 GETIMPORT                        R4 K4 [Rect.new]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R0
       15 CALL                             R4 2 -1
       16 CALL                             R2 -1 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K5 ["selectNodes"]
       20 MOVE                             R4 R2
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K6 ["current"]
       24 CALL                             R3 2 0
       25 MOVE                             R3 R2
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 FORGPREP                         R3
       29 GETUPVAL                         R8 4
       30 GETUPVAL                         R9 2
       31 MOVE                             R10 R6
       32 CALL                             R8 2 0
       33 FORGLOOP                         R3 1 ; [-5]
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [Rect.new]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["nodeRenderInfoDispatcher"]
       15 GETTABLEKS                       R3 R3 K4 ["getMap"]
       17 CALL                             R3 0 1
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K5 ["selectNodes"]
       23 MOVE                             R4 R2
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K6 ["current"]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R3 5
       29 MOVE                             R4 R0
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K7 [{"onPress", "onEvent", "onDragStart", "onDragMoved", "onDragEnded", "selectionStart", "selectionEnd"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["onPress"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["onEvent"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["onDragStart"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["onDragMoved"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["onDragEnded"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["selectionStart"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["selectionEnd"]
       22 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["useState"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K3 ["useRef"]
       20 LOADB                            R7 0
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R6
       27 NEWTABLE                         R9 0 1
       29 MOVE                             R10 R6
       30 SETLIST                          R9 R10 1 [1]
       32 CALL                             R7 2 1
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K5 ["useEventCallback"]
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R7
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R6
       41 CAPTURE                          UPVAL U4
       42 CALL                             R8 1 1
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       46 NEWCLOSURE                       R10 P2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R11 0 2
       51 MOVE                             R12 R3
       52 MOVE                             R13 R5
       53 SETLIST                          R11 R12 2 [1]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       59 NEWCLOSURE                       R11 P3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 NEWTABLE                         R12 0 6
       68 MOVE                             R13 R2
       69 MOVE                             R14 R9
       70 MOVE                             R15 R6
       71 MOVE                             R16 R5
       72 GETTABLEKS                       R17 R1 K6 ["selectNodes"]
       74 GETTABLEKS                       R18 R1 K7 ["nodeRenderInfoDispatcher"]
       76 SETLIST                          R12 R13 6 [1]
       78 CALL                             R10 2 1
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       82 NEWCLOSURE                       R12 P4
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 NEWTABLE                         R13 0 2
       87 MOVE                             R14 R3
       88 MOVE                             R15 R5
       89 SETLIST                          R13 R14 2 [1]
       91 CALL                             R11 2 1
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R12 R12 K8 ["useMemo"]
       95 NEWCLOSURE                       R13 P5
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 NEWTABLE                         R14 0 7
      105 MOVE                             R15 R8
      106 MOVE                             R16 R7
      107 MOVE                             R17 R9
      108 MOVE                             R18 R10
      109 MOVE                             R19 R11
      110 MOVE                             R20 R2
      111 MOVE                             R21 R4
      112 SETLIST                          R14 R15 7 [1]
      114 CALL                             R12 2 1
      115 GETUPVAL                         R13 0
      116 GETTABLEKS                       R13 R13 K9 ["createElement"]
      118 GETUPVAL                         R14 5
      119 GETTABLEKS                       R14 R14 K10 ["Provider"]
      121 DUPTABLE                         R15 K12 [{"value"}]
      122 SETTABLEKS                       R12 R15 K11 ["value"]
      124 GETTABLEKS                       R16 R0 K13 ["children"]
      126 CALL                             R13 3 -1
      127 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["NodeViewTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Util"]
       37 GETTABLEKS                       R6 R6 K13 ["bumpNodeZIndex"]
       39 CALL                             R5 1 1
       40 DUPTABLE                         R6 K22 [{["onPress"], ["onEvent"], ["onDragStart"], ["onDragMoved"], ["onDragEnded"], ["selectionStart"] = , ["selectionEnd"] = }]
       41 GETTABLEKS                       R7 R4 K23 ["createUnimplemented"]
       43 LOADK                            R8 K14 ["onPress"]
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R6 K14 ["onPress"]
       47 GETTABLEKS                       R7 R4 K23 ["createUnimplemented"]
       49 LOADK                            R8 K15 ["onEvent"]
       50 CALL                             R7 1 1
       51 SETTABLEKS                       R7 R6 K15 ["onEvent"]
       53 GETTABLEKS                       R7 R4 K23 ["createUnimplemented"]
       55 LOADK                            R8 K16 ["onDragStart"]
       56 CALL                             R7 1 1
       57 SETTABLEKS                       R7 R6 K16 ["onDragStart"]
       59 GETTABLEKS                       R7 R4 K23 ["createUnimplemented"]
       61 LOADK                            R8 K17 ["onDragMoved"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K17 ["onDragMoved"]
       65 GETTABLEKS                       R7 R4 K23 ["createUnimplemented"]
       67 LOADK                            R8 K18 ["onDragEnded"]
       68 CALL                             R7 1 1
       69 SETTABLEKS                       R7 R6 K18 ["onDragEnded"]
       71 GETTABLEKS                       R7 R3 K24 ["createContext"]
       73 MOVE                             R8 R6
       74 CALL                             R7 1 1
       75 DUPCLOSURE                       R8 K25 [PROTO_0]
       76 DUPCLOSURE                       R9 K26 [PROTO_7]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R7
       83 DUPTABLE                         R10 K29 [{"Context", "Provider"}]
       84 SETTABLEKS                       R7 R10 K27 ["Context"]
       86 SETTABLEKS                       R9 R10 K28 ["Provider"]
       88 RETURN                           R10 1
