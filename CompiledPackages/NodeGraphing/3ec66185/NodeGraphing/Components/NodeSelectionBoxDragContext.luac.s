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
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+14]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Provider"]
        9 DUPTABLE                         R3 K3 [{"value"}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K2 ["value"]
       13 GETTABLEKS                       R4 R0 K4 ["children"]
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K5 ["useContext"]
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R2 R2 K6 ["Context"]
       23 CALL                             R1 1 1
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K7 ["useState"]
       27 LOADNIL                          R3
       28 CALL                             R2 1 2
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K7 ["useState"]
       32 LOADNIL                          R5
       33 CALL                             R4 1 2
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K8 ["useRef"]
       37 LOADB                            R7 0
       38 CALL                             R6 1 1
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K9 ["useCallback"]
       42 NEWCLOSURE                       R8 P0
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R9 0 1
       46 MOVE                             R10 R6
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R8 5
       51 GETTABLEKS                       R8 R8 K10 ["useEventCallback"]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          VAL R7
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          UPVAL U8
       60 CALL                             R8 1 1
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       64 NEWCLOSURE                       R10 P2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R11 0 2
       69 MOVE                             R12 R3
       70 MOVE                             R13 R5
       71 SETLIST                          R11 R12 2 [1]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       77 NEWCLOSURE                       R11 P3
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R9
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 NEWTABLE                         R12 0 6
       86 MOVE                             R13 R2
       87 MOVE                             R14 R9
       88 MOVE                             R15 R6
       89 MOVE                             R16 R5
       90 GETTABLEKS                       R17 R1 K11 ["selectNodes"]
       92 GETTABLEKS                       R18 R1 K12 ["nodeRenderInfoDispatcher"]
       94 SETLIST                          R12 R13 6 [1]
       96 CALL                             R10 2 1
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R11 R11 K9 ["useCallback"]
      100 NEWCLOSURE                       R12 P4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R5
      103 NEWTABLE                         R13 0 2
      105 MOVE                             R14 R3
      106 MOVE                             R15 R5
      107 SETLIST                          R13 R14 2 [1]
      109 CALL                             R11 2 1
      110 GETUPVAL                         R12 1
      111 GETTABLEKS                       R12 R12 K13 ["useMemo"]
      113 NEWCLOSURE                       R13 P5
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R4
      121 NEWTABLE                         R14 0 7
      123 MOVE                             R15 R8
      124 MOVE                             R16 R7
      125 MOVE                             R17 R9
      126 MOVE                             R18 R10
      127 MOVE                             R19 R11
      128 MOVE                             R20 R2
      129 MOVE                             R21 R4
      130 SETLIST                          R14 R15 7 [1]
      132 CALL                             R12 2 1
      133 GETUPVAL                         R13 1
      134 GETTABLEKS                       R13 R13 K0 ["createElement"]
      136 GETUPVAL                         R14 2
      137 GETTABLEKS                       R14 R14 K1 ["Provider"]
      139 DUPTABLE                         R15 K3 [{"value"}]
      140 SETTABLEKS                       R12 R15 K2 ["value"]
      142 GETTABLEKS                       R16 R0 K4 ["children"]
      144 CALL                             R13 3 -1
      145 RETURN                           R13 -1

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
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Flags"]
       51 GETTABLEKS                       R8 R8 K16 ["getFFlagAnimGraphUIImplementNoodleDragging"]
       53 CALL                             R7 1 1
       54 DUPTABLE                         R8 K25 [{["onPress"], ["onEvent"], ["onDragStart"], ["onDragMoved"], ["onDragEnded"], ["selectionStart"] = , ["selectionEnd"] = }]
       55 GETTABLEKS                       R9 R5 K26 ["createUnimplemented"]
       57 LOADK                            R10 K17 ["onPress"]
       58 CALL                             R9 1 1
       59 SETTABLEKS                       R9 R8 K17 ["onPress"]
       61 GETTABLEKS                       R9 R5 K26 ["createUnimplemented"]
       63 LOADK                            R10 K18 ["onEvent"]
       64 CALL                             R9 1 1
       65 SETTABLEKS                       R9 R8 K18 ["onEvent"]
       67 GETTABLEKS                       R9 R5 K26 ["createUnimplemented"]
       69 LOADK                            R10 K19 ["onDragStart"]
       70 CALL                             R9 1 1
       71 SETTABLEKS                       R9 R8 K19 ["onDragStart"]
       73 GETTABLEKS                       R9 R5 K26 ["createUnimplemented"]
       75 LOADK                            R10 K20 ["onDragMoved"]
       76 CALL                             R9 1 1
       77 SETTABLEKS                       R9 R8 K20 ["onDragMoved"]
       79 GETTABLEKS                       R9 R5 K26 ["createUnimplemented"]
       81 LOADK                            R10 K21 ["onDragEnded"]
       82 CALL                             R9 1 1
       83 SETTABLEKS                       R9 R8 K21 ["onDragEnded"]
       85 GETTABLEKS                       R9 R4 K27 ["createContext"]
       87 MOVE                             R10 R8
       88 CALL                             R9 1 1
       89 DUPCLOSURE                       R10 K28 [PROTO_0]
       90 DUPCLOSURE                       R11 K29 [PROTO_7]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R6
      100 DUPTABLE                         R12 K32 [{"Context", "Provider"}]
      101 SETTABLEKS                       R9 R12 K30 ["Context"]
      103 SETTABLEKS                       R11 R12 K31 ["Provider"]
      105 RETURN                           R12 1
