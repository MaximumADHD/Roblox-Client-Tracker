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
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["useToggleState"]
       17 LOADB                            R4 0
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["useToggleState"]
       22 LOADB                            R5 0
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R7 0 2
       34 GETTABLEKS                       R8 R1 K4 ["onDragStart"]
       36 GETTABLEKS                       R9 R2 K4 ["onDragStart"]
       38 SETLIST                          R7 R8 2 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 NEWTABLE                         R8 0 4
       51 GETTABLEKS                       R9 R1 K5 ["onDragMoved"]
       53 GETTABLEKS                       R10 R3 K6 ["enabled"]
       55 GETTABLEKS                       R11 R2 K5 ["onDragMoved"]
       57 GETTABLEKS                       R12 R4 K6 ["enabled"]
       59 SETLIST                          R8 R9 4 [1]
       61 CALL                             R6 2 1
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       65 NEWCLOSURE                       R8 P2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R2
       70 NEWTABLE                         R9 0 4
       72 GETTABLEKS                       R10 R1 K7 ["onDragEnded"]
       74 GETTABLEKS                       R11 R3 K6 ["enabled"]
       76 GETTABLEKS                       R12 R2 K7 ["onDragEnded"]
       78 GETTABLEKS                       R13 R4 K6 ["enabled"]
       80 SETLIST                          R9 R10 4 [1]
       82 CALL                             R7 2 1
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       86 NEWCLOSURE                       R9 P3
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R7
       91 NEWTABLE                         R10 0 5
       93 GETTABLEKS                       R11 R2 K9 ["onPress"]
       95 GETTABLEKS                       R12 R2 K10 ["onEvent"]
       97 MOVE                             R13 R5
       98 MOVE                             R14 R6
       99 MOVE                             R15 R7
      100 SETLIST                          R10 R11 5 [1]
      102 CALL                             R8 2 1
      103 GETUPVAL                         R9 0
      104 GETTABLEKS                       R9 R9 K11 ["createElement"]
      106 GETUPVAL                         R10 4
      107 GETTABLEKS                       R10 R10 K12 ["Provider"]
      109 DUPTABLE                         R11 K14 [{"value"}]
      110 SETTABLEKS                       R8 R11 K13 ["value"]
      112 GETTABLEKS                       R12 R0 K15 ["children"]
      114 CALL                             R9 3 -1
      115 RETURN                           R9 -1

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
       35 DUPTABLE                         R5 K17 [{"onPress", "onEvent", "onDragStart", "onDragMoved", "onDragEnded"}]
       36 GETTABLEKS                       R6 R4 K18 ["createUnimplemented"]
       38 LOADK                            R7 K12 ["onPress"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K12 ["onPress"]
       42 GETTABLEKS                       R6 R4 K18 ["createUnimplemented"]
       44 LOADK                            R7 K13 ["onEvent"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K13 ["onEvent"]
       48 GETTABLEKS                       R6 R4 K18 ["createUnimplemented"]
       50 LOADK                            R7 K14 ["onDragStart"]
       51 CALL                             R6 1 1
       52 SETTABLEKS                       R6 R5 K14 ["onDragStart"]
       54 GETTABLEKS                       R6 R4 K18 ["createUnimplemented"]
       56 LOADK                            R7 K15 ["onDragMoved"]
       57 CALL                             R6 1 1
       58 SETTABLEKS                       R6 R5 K15 ["onDragMoved"]
       60 GETTABLEKS                       R6 R4 K18 ["createUnimplemented"]
       62 LOADK                            R7 K16 ["onDragEnded"]
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K16 ["onDragEnded"]
       66 GETTABLEKS                       R6 R3 K19 ["createContext"]
       68 MOVE                             R7 R5
       69 CALL                             R6 1 1
       70 DUPCLOSURE                       R7 K20 [PROTO_4]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 DUPTABLE                         R8 K23 [{"Context", "Provider"}]
       77 SETTABLEKS                       R6 R8 K21 ["Context"]
       79 SETTABLEKS                       R7 R8 K22 ["Provider"]
       81 RETURN                           R8 1
