PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onDragStart"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["enable"]
       10 CALL                             R2 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K0 ["onDragStart"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K1 ["enable"]
       21 CALL                             R2 0 0
       22 RETURN                           R0 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enabled"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["onDragMoved"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["enabled"]
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K1 ["onDragMoved"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enabled"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["onDragEnded"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["disable"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K0 ["enabled"]
       18 JUMPIFNOT                        R2 ; [+10]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K1 ["onDragEnded"]
       22 MOVE                             R3 R0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K2 ["disable"]
       27 CALL                             R2 0 0
       28 RETURN                           R0 0
       29 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K5 [{"onPress", "onEvent", "onDragStart", "onDragMoved", "onDragEnded"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["onPress"]
        4 SETTABLEKS                       R1 R0 K0 ["onPress"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["onEvent"]
        9 SETTABLEKS                       R1 R0 K1 ["onEvent"]
       11 GETUPVAL                         R1 1
       12 SETTABLEKS                       R1 R0 K2 ["onDragStart"]
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K3 ["onDragMoved"]
       17 GETUPVAL                         R1 3
       18 SETTABLEKS                       R1 R0 K4 ["onDragEnded"]
       20 RETURN                           R0 1

PROTO_4:
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
       25 GETTABLEKS                       R2 R2 K5 ["useContext"]
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K6 ["Context"]
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 6
       32 GETTABLEKS                       R3 R3 K7 ["useToggleState"]
       34 LOADB                            R4 0
       35 CALL                             R3 1 1
       36 GETUPVAL                         R4 6
       37 GETTABLEKS                       R4 R4 K7 ["useToggleState"]
       39 LOADB                            R5 0
       40 CALL                             R4 1 1
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       44 NEWCLOSURE                       R6 P0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R7 0 2
       51 GETTABLEKS                       R8 R1 K9 ["onDragStart"]
       53 GETTABLEKS                       R9 R2 K9 ["onDragStart"]
       55 SETLIST                          R7 R8 2 [1]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       61 NEWCLOSURE                       R7 P1
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 NEWTABLE                         R8 0 4
       68 GETTABLEKS                       R9 R1 K10 ["onDragMoved"]
       70 GETTABLEKS                       R10 R3 K11 ["enabled"]
       72 GETTABLEKS                       R11 R2 K10 ["onDragMoved"]
       74 GETTABLEKS                       R12 R4 K11 ["enabled"]
       76 SETLIST                          R8 R9 4 [1]
       78 CALL                             R6 2 1
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       82 NEWCLOSURE                       R8 P2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R2
       87 NEWTABLE                         R9 0 4
       89 GETTABLEKS                       R10 R1 K12 ["onDragEnded"]
       91 GETTABLEKS                       R11 R3 K11 ["enabled"]
       93 GETTABLEKS                       R12 R2 K12 ["onDragEnded"]
       95 GETTABLEKS                       R13 R4 K11 ["enabled"]
       97 SETLIST                          R9 R10 4 [1]
       99 CALL                             R7 2 1
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R8 R8 K13 ["useMemo"]
      103 NEWCLOSURE                       R9 P3
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 NEWTABLE                         R10 0 5
      110 GETTABLEKS                       R11 R2 K14 ["onPress"]
      112 GETTABLEKS                       R12 R2 K15 ["onEvent"]
      114 MOVE                             R13 R5
      115 MOVE                             R14 R6
      116 MOVE                             R15 R7
      117 SETLIST                          R10 R11 5 [1]
      119 CALL                             R8 2 1
      120 GETUPVAL                         R9 1
      121 GETTABLEKS                       R9 R9 K0 ["createElement"]
      123 GETUPVAL                         R10 2
      124 GETTABLEKS                       R10 R10 K1 ["Provider"]
      126 DUPTABLE                         R11 K3 [{"value"}]
      127 SETTABLEKS                       R8 R11 K2 ["value"]
      129 GETTABLEKS                       R12 R0 K4 ["children"]
      131 CALL                             R9 3 -1
      132 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorCurveDragContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeSelectionBoxDragContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["getFFlagAnimGraphUIImplementNoodleDragging"]
       41 CALL                             R5 1 1
       42 DUPTABLE                         R6 K19 [{"onPress", "onEvent", "onDragStart", "onDragMoved", "onDragEnded"}]
       43 GETTABLEKS                       R7 R4 K20 ["createUnimplemented"]
       45 LOADK                            R8 K14 ["onPress"]
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K14 ["onPress"]
       49 GETTABLEKS                       R7 R4 K20 ["createUnimplemented"]
       51 LOADK                            R8 K15 ["onEvent"]
       52 CALL                             R7 1 1
       53 SETTABLEKS                       R7 R6 K15 ["onEvent"]
       55 GETTABLEKS                       R7 R4 K20 ["createUnimplemented"]
       57 LOADK                            R8 K16 ["onDragStart"]
       58 CALL                             R7 1 1
       59 SETTABLEKS                       R7 R6 K16 ["onDragStart"]
       61 GETTABLEKS                       R7 R4 K20 ["createUnimplemented"]
       63 LOADK                            R8 K17 ["onDragMoved"]
       64 CALL                             R7 1 1
       65 SETTABLEKS                       R7 R6 K17 ["onDragMoved"]
       67 GETTABLEKS                       R7 R4 K20 ["createUnimplemented"]
       69 LOADK                            R8 K18 ["onDragEnded"]
       70 CALL                             R7 1 1
       71 SETTABLEKS                       R7 R6 K18 ["onDragEnded"]
       73 GETTABLEKS                       R7 R3 K21 ["createContext"]
       75 MOVE                             R8 R6
       76 CALL                             R7 1 1
       77 DUPCLOSURE                       R8 K22 [PROTO_4]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 DUPTABLE                         R9 K25 [{"Context", "Provider"}]
       86 SETTABLEKS                       R7 R9 K23 ["Context"]
       88 SETTABLEKS                       R8 R9 K24 ["Provider"]
       90 RETURN                           R9 1
