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
       25 GETUPVAL                         R3 4
       26 JUMPIFNOT                        R3 ; [+10]
       27 MOVE                             R3 R2
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 GETUPVAL                         R8 5
       32 GETUPVAL                         R9 2
       33 MOVE                             R10 R6
       34 CALL                             R8 2 0
       35 FORGLOOP                         R3 1 ; [-5]
       37 RETURN                           R0 0

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
       42 CAPTURE                          UPVAL U5
       43 CALL                             R8 1 1
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       47 NEWCLOSURE                       R10 P2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 NEWTABLE                         R11 0 2
       52 MOVE                             R12 R3
       53 MOVE                             R13 R5
       54 SETLIST                          R11 R12 2 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       60 NEWCLOSURE                       R11 P3
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R9
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R12 0 6
       69 MOVE                             R13 R2
       70 MOVE                             R14 R9
       71 MOVE                             R15 R6
       72 MOVE                             R16 R5
       73 GETTABLEKS                       R17 R1 K6 ["selectNodes"]
       75 GETTABLEKS                       R18 R1 K7 ["nodeRenderInfoDispatcher"]
       77 SETLIST                          R12 R13 6 [1]
       79 CALL                             R10 2 1
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       83 NEWCLOSURE                       R12 P4
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R5
       86 NEWTABLE                         R13 0 2
       88 MOVE                             R14 R3
       89 MOVE                             R15 R5
       90 SETLIST                          R13 R14 2 [1]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R12 R12 K8 ["useMemo"]
       96 NEWCLOSURE                       R13 P5
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R4
      104 NEWTABLE                         R14 0 7
      106 MOVE                             R15 R8
      107 MOVE                             R16 R7
      108 MOVE                             R17 R9
      109 MOVE                             R18 R10
      110 MOVE                             R19 R11
      111 MOVE                             R20 R2
      112 MOVE                             R21 R4
      113 SETLIST                          R14 R15 7 [1]
      115 CALL                             R12 2 1
      116 GETUPVAL                         R13 0
      117 GETTABLEKS                       R13 R13 K9 ["createElement"]
      119 GETUPVAL                         R14 6
      120 GETTABLEKS                       R14 R14 K10 ["Provider"]
      122 DUPTABLE                         R15 K12 [{"value"}]
      123 SETTABLEKS                       R12 R15 K11 ["value"]
      125 GETTABLEKS                       R16 R0 K13 ["children"]
      127 CALL                             R13 3 -1
      128 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_DynamicZIndex"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["GraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["NodeViewTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Util"]
       44 GETTABLEKS                       R7 R7 K15 ["bumpNodeZIndex"]
       46 CALL                             R6 1 1
       47 DUPTABLE                         R7 K24 [{["onPress"], ["onEvent"], ["onDragStart"], ["onDragMoved"], ["onDragEnded"], ["selectionStart"] = , ["selectionEnd"] = }]
       48 GETTABLEKS                       R8 R5 K25 ["createUnimplemented"]
       50 LOADK                            R9 K16 ["onPress"]
       51 CALL                             R8 1 1
       52 SETTABLEKS                       R8 R7 K16 ["onPress"]
       54 GETTABLEKS                       R8 R5 K25 ["createUnimplemented"]
       56 LOADK                            R9 K17 ["onEvent"]
       57 CALL                             R8 1 1
       58 SETTABLEKS                       R8 R7 K17 ["onEvent"]
       60 GETTABLEKS                       R8 R5 K25 ["createUnimplemented"]
       62 LOADK                            R9 K18 ["onDragStart"]
       63 CALL                             R8 1 1
       64 SETTABLEKS                       R8 R7 K18 ["onDragStart"]
       66 GETTABLEKS                       R8 R5 K25 ["createUnimplemented"]
       68 LOADK                            R9 K19 ["onDragMoved"]
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R7 K19 ["onDragMoved"]
       72 GETTABLEKS                       R8 R5 K25 ["createUnimplemented"]
       74 LOADK                            R9 K20 ["onDragEnded"]
       75 CALL                             R8 1 1
       76 SETTABLEKS                       R8 R7 K20 ["onDragEnded"]
       78 GETTABLEKS                       R8 R4 K26 ["createContext"]
       80 MOVE                             R9 R7
       81 CALL                             R8 1 1
       82 DUPCLOSURE                       R9 K27 [PROTO_0]
       83 DUPCLOSURE                       R10 K28 [PROTO_7]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R8
       91 DUPTABLE                         R11 K31 [{"Context", "Provider"}]
       92 SETTABLEKS                       R8 R11 K29 ["Context"]
       94 SETTABLEKS                       R10 R11 K30 ["Provider"]
       96 RETURN                           R11 1
