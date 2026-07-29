PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["inputDown"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["NodeId"]
       16 MOVE                             R4 R0
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K4 ["isShiftPressed"]
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K5 ["isCtrlPressed"]
       24 CALL                             R6 0 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 LOADB                            R3 1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R1 K2 ["Y"]
       18 GETTABLEKS                       R8 R6 K3 ["absolutePosition"]
       20 GETTABLEKS                       R8 R8 K2 ["Y"]
       22 JUMPIFNOTLT                      R8 R7 ; [+19]
       24 GETTABLEKS                       R7 R1 K2 ["Y"]
       26 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       28 GETTABLEKS                       R9 R9 K2 ["Y"]
       30 GETTABLEKS                       R11 R6 K5 ["absoluteSize"]
       32 GETTABLEKS                       R11 R11 K2 ["Y"]
       34 DIVK                             R10 R11 K4 [2]
       35 ADD                              R8 R9 R10
       36 JUMPIFNOTLT                      R7 R8 ; [+5]
       38 GETUPVAL                         R7 3
       39 MOVE                             R8 R5
       40 CALL                             R7 1 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R7 R1 K2 ["Y"]
       44 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       46 GETTABLEKS                       R9 R9 K2 ["Y"]
       48 GETTABLEKS                       R11 R6 K5 ["absoluteSize"]
       50 GETTABLEKS                       R11 R11 K2 ["Y"]
       52 DIVK                             R10 R11 K4 [2]
       53 ADD                              R8 R9 R10
       54 JUMPIFNOTLE                      R8 R7 ; [+18]
       56 GETTABLEKS                       R7 R1 K2 ["Y"]
       58 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       60 GETTABLEKS                       R9 R9 K2 ["Y"]
       62 GETTABLEKS                       R10 R6 K5 ["absoluteSize"]
       64 GETTABLEKS                       R10 R10 K2 ["Y"]
       66 ADD                              R8 R9 R10
       67 JUMPIFNOTLT                      R7 R8 ; [+5]
       69 GETUPVAL                         R7 3
       70 ADDK                             R8 R5 K6 [1]
       71 CALL                             R7 1 0
       72 RETURN                           R0 0
       73 FORGLOOP                         R2 2 ; [-58]
       75 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+30]
        2 GETUPVAL                         R2 1
        3 JUMPIFEQKNIL                     R2 ; [+28]
        5 GETUPVAL                         R2 2
        6 JUMPIFEQKNIL                     R2 ; [+25]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K0 ["getSelectedIndices"]
       11 CALL                             R2 0 1
       12 LENGTH                           R3 R2
       13 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
       15 NEWTABLE                         R3 0 1
       17 GETUPVAL                         R4 1
       18 SETLIST                          R3 R4 1 [1]
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K2 ["OnInputReordered"]
       24 MOVE                             R4 R2
       25 GETUPVAL                         R5 2
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K3 ["clearSelection"]
       30 CALL                             R3 0 0
       31 JUMP                             ; [+16]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K4 ["inputUp"]
       35 GETUPVAL                         R3 4
       36 GETTABLEKS                       R3 R3 K5 ["NodeId"]
       38 MOVE                             R4 R0
       39 GETUPVAL                         R5 5
       40 GETTABLEKS                       R5 R5 K6 ["isShiftPressed"]
       42 CALL                             R5 0 1
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R6 R6 K7 ["isCtrlPressed"]
       46 CALL                             R6 0 -1
       47 CALL                             R2 -1 0
       48 GETUPVAL                         R2 6
       49 LOADNIL                          R3
       50 CALL                             R2 1 0
       51 GETUPVAL                         R2 7
       52 LOADNIL                          R3
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 8
       55 LOADB                            R3 0
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["ModifierKeysContext"]
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useRef"]
       19 NEWTABLE                         R4 0 0
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K4 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K5 ["useMeasurableRef"]
       27 GETIMPORT                        R5 K8 [Vector2.zero]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K9 ["useState"]
       33 LOADB                            R6 0
       34 CALL                             R5 1 2
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K9 ["useState"]
       38 LOADNIL                          R8
       39 CALL                             R7 1 2
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K9 ["useState"]
       43 LOADNIL                          R10
       44 CALL                             R9 1 2
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       48 NEWCLOSURE                       R12 P0
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R2
       54 NEWTABLE                         R13 0 6
       56 MOVE                             R14 R4
       57 MOVE                             R15 R8
       58 GETTABLEKS                       R16 R1 K11 ["inputDown"]
       60 GETTABLEKS                       R17 R0 K12 ["NodeId"]
       62 GETTABLEKS                       R18 R2 K13 ["isShiftPressed"]
       64 CALL                             R18 0 1
       65 GETTABLEKS                       R19 R2 K14 ["isCtrlPressed"]
       67 CALL                             R19 0 -1
       68 SETLIST                          R13 R14 -1 [1]
       70 CALL                             R11 2 1
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       74 NEWCLOSURE                       R13 P1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R10
       79 NEWTABLE                         R14 0 5
       81 MOVE                             R15 R10
       82 MOVE                             R16 R9
       83 MOVE                             R17 R4
       84 GETTABLEKS                       R18 R3 K15 ["current"]
       86 MOVE                             R19 R6
       87 SETLIST                          R14 R15 5 [1]
       89 CALL                             R12 2 1
       90 GETUPVAL                         R13 0
       91 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       93 NEWCLOSURE                       R14 P2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R6
      103 NEWTABLE                         R15 0 11
      105 GETTABLEKS                       R16 R0 K16 ["OnInputReordered"]
      107 MOVE                             R17 R7
      108 MOVE                             R18 R9
      109 MOVE                             R19 R8
      110 MOVE                             R20 R10
      111 MOVE                             R21 R6
      112 MOVE                             R22 R5
      113 GETTABLEKS                       R23 R1 K17 ["inputUp"]
      115 GETTABLEKS                       R24 R0 K12 ["NodeId"]
      117 GETTABLEKS                       R25 R2 K13 ["isShiftPressed"]
      119 CALL                             R25 0 1
      120 GETTABLEKS                       R26 R2 K14 ["isCtrlPressed"]
      122 CALL                             R26 0 -1
      123 SETLIST                          R15 R16 -1 [1]
      125 CALL                             R13 2 1
      126 DUPTABLE                         R14 K26 [{"absoluteSizesRef", "onDragStart", "onDragContinue", "onDragEnd", "draggedIndex", "highlightedIndex", "virtualRef", "isDragging"}]
      127 SETTABLEKS                       R3 R14 K18 ["absoluteSizesRef"]
      129 SETTABLEKS                       R11 R14 K19 ["onDragStart"]
      131 SETTABLEKS                       R12 R14 K20 ["onDragContinue"]
      133 SETTABLEKS                       R13 R14 K21 ["onDragEnd"]
      135 SETTABLEKS                       R7 R14 K22 ["draggedIndex"]
      137 SETTABLEKS                       R9 R14 K23 ["highlightedIndex"]
      139 SETTABLEKS                       R4 R14 K24 ["virtualRef"]
      141 SETTABLEKS                       R5 R14 K25 ["isDragging"]
      143 RETURN                           R14 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKS                    R0 K0 ["Hover"] ; [+5]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K1 ["Default"] ; [+4]
        8 GETUPVAL                         R1 0
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSizeState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["dragHelper"]
        9 GETTABLEKS                       R2 R2 K2 ["absoluteSizesRef"]
       11 GETTABLEKS                       R2 R2 K3 ["current"]
       13 GETUPVAL                         R3 2
       14 SETTABLE                         R1 R2 R3
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K1 ["dragHelper"]
       19 GETTABLEKS                       R2 R2 K2 ["absoluteSizesRef"]
       21 GETTABLEKS                       R2 R2 K3 ["current"]
       23 GETUPVAL                         R3 2
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputPanelProps"]
        3 GETTABLEKS                       R1 R1 K1 ["OnInputChanged"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["InputPanelProps"]
        9 GETTABLEKS                       R1 R1 K1 ["OnInputChanged"]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputPanelProps"]
        3 GETTABLEKS                       R0 R0 K1 ["OnInputDeleted"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["InputPanelProps"]
        9 GETTABLEKS                       R0 R0 K1 ["OnInputDeleted"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragStart"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragContinue"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragEnd"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["input"]
        6 GETTABLEKS                       R0 R0 K1 ["ConnectedNodeId"]
        8 JUMPIF                           R0 ; [+6]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["createComputed"]
       12 DUPCLOSURE                       R1 K3 [PROTO_13]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K4 ["nodePayloadDispatcher"]
       18 GETTABLEKS                       R0 R0 K5 ["observe"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K0 ["input"]
       23 GETTABLEKS                       R1 R1 K1 ["ConnectedNodeId"]
       25 CALL                             R0 1 -1
       26 RETURN                           R0 -1

PROTO_15:
        0 DUPTABLE                         R0 K1 [{"Weight"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Weight"]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+13]
        7 GETUPVAL                         R1 2
        8 JUMPIFEQKNIL                     R1 ; [+11]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["editName"]
       13 JUMPIFEQKS                       R1 K3 [""] ; [+6]
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K2 ["editName"]
       18 SETTABLEKS                       R1 R0 K4 ["ConnectedNodeName"]
       20 GETUPVAL                         R1 4
       21 GETTABLEKS                       R1 R1 K5 ["join"]
       23 GETUPVAL                         R2 5
       24 GETTABLEKS                       R2 R2 K6 ["input"]
       26 MOVE                             R3 R0
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K3 ["index"]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["Hooks"]
       16 GETTABLEKS                       R4 R4 K5 ["useTokens"]
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K6 ["useState"]
       22 LOADB                            R6 0
       23 CALL                             R5 1 2
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R7 R7 K7 ["useRefToState"]
       27 MOVE                             R8 R5
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R10 0 1
       37 MOVE                             R11 R5
       38 SETLIST                          R10 R11 1 [1]
       40 CALL                             R8 2 0
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          VAL R6
       46 NEWTABLE                         R10 0 1
       48 MOVE                             R11 R6
       49 SETLIST                          R10 R11 1 [1]
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       55 NEWCLOSURE                       R10 P2
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R11 0 2
       62 GETTABLEKS                       R12 R3 K10 ["observeAbsoluteSizeState"]
       64 MOVE                             R13 R2
       65 SETLIST                          R11 R12 2 [1]
       67 CALL                             R9 2 0
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       71 NEWCLOSURE                       R10 P3
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R2
       74 NEWTABLE                         R11 0 2
       76 GETTABLEKS                       R12 R0 K11 ["InputPanelProps"]
       78 GETTABLEKS                       R12 R12 K12 ["OnInputChanged"]
       80 MOVE                             R13 R2
       81 SETLIST                          R11 R12 2 [1]
       83 CALL                             R9 2 1
       84 GETUPVAL                         R10 0
       85 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       87 NEWCLOSURE                       R11 P4
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R2
       90 NEWTABLE                         R12 0 2
       92 GETTABLEKS                       R13 R0 K11 ["InputPanelProps"]
       94 GETTABLEKS                       R13 R13 K13 ["OnInputDeleted"]
       96 MOVE                             R14 R2
       97 SETLIST                          R12 R13 2 [1]
       99 CALL                             R10 2 1
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K9 ["useCallback"]
      103 NEWCLOSURE                       R12 P5
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R2
      106 NEWTABLE                         R13 0 2
      108 GETTABLEKS                       R14 R0 K14 ["dragHelper"]
      110 MOVE                             R15 R2
      111 SETLIST                          R13 R14 2 [1]
      113 CALL                             R11 2 1
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R12 R12 K9 ["useCallback"]
      117 NEWCLOSURE                       R13 P6
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R2
      120 NEWTABLE                         R14 0 2
      122 GETTABLEKS                       R15 R0 K14 ["dragHelper"]
      124 MOVE                             R16 R2
      125 SETLIST                          R14 R15 2 [1]
      127 CALL                             R12 2 1
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R13 R13 K9 ["useCallback"]
      131 NEWCLOSURE                       R14 P7
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R2
      134 NEWTABLE                         R15 0 2
      136 GETTABLEKS                       R16 R0 K14 ["dragHelper"]
      138 MOVE                             R17 R2
      139 SETLIST                          R15 R16 2 [1]
      141 CALL                             R13 2 1
      142 GETUPVAL                         R14 6
      143 GETTABLEKS                       R14 R14 K15 ["useSignalState"]
      145 GETUPVAL                         R15 7
      146 GETTABLEKS                       R15 R15 K16 ["useObserveNodeWeight"]
      148 GETTABLEKS                       R16 R0 K17 ["input"]
      150 GETTABLEKS                       R16 R16 K18 ["ConnectedNodeId"]
      152 CALL                             R15 1 -1
      153 CALL                             R14 -1 1
      154 GETUPVAL                         R15 0
      155 GETTABLEKS                       R15 R15 K19 ["useMemo"]
      157 NEWCLOSURE                       R16 P8
      158 CAPTURE                          UPVAL U8
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U5
      161 CAPTURE                          VAL R1
      162 NEWTABLE                         R17 0 2
      164 GETTABLEKS                       R18 R0 K17 ["input"]
      166 GETTABLEKS                       R18 R18 K18 ["ConnectedNodeId"]
      168 GETTABLEKS                       R19 R1 K20 ["nodePayloadDispatcher"]
      170 GETTABLEKS                       R19 R19 K21 ["observe"]
      172 SETLIST                          R17 R18 2 [1]
      174 CALL                             R15 2 1
      175 GETUPVAL                         R16 6
      176 GETTABLEKS                       R16 R16 K15 ["useSignalState"]
      178 MOVE                             R17 R15
      179 CALL                             R16 1 1
      180 GETUPVAL                         R17 1
      181 GETTABLEKS                       R17 R17 K22 ["useNodeNames"]
      183 MOVE                             R18 R16
      184 JUMPIF                           R18 ; [+1]
      185 GETUPVAL                         R18 9
      186 CALL                             R17 1 1
      187 GETUPVAL                         R18 0
      188 GETTABLEKS                       R18 R18 K19 ["useMemo"]
      190 NEWCLOSURE                       R19 P9
      191 CAPTURE                          VAL R14
      192 CAPTURE                          UPVAL U8
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R17
      195 CAPTURE                          UPVAL U10
      196 CAPTURE                          VAL R0
      197 NEWTABLE                         R20 0 4
      199 GETTABLEKS                       R21 R0 K17 ["input"]
      201 MOVE                             R22 R14
      202 MOVE                             R23 R16
      203 GETTABLEKS                       R24 R17 K23 ["editName"]
      205 SETLIST                          R20 R21 4 [1]
      207 CALL                             R18 2 1
      208 GETUPVAL                         R19 0
      209 GETTABLEKS                       R19 R19 K24 ["createElement"]
      211 GETUPVAL                         R20 0
      212 GETTABLEKS                       R20 R20 K25 ["Fragment"]
      214 NEWTABLE                         R21 0 0
      216 DUPTABLE                         R22 K28 [{"Divider", "Input"}]
      217 GETUPVAL                         R23 0
      218 GETTABLEKS                       R23 R23 K24 ["createElement"]
      220 GETUPVAL                         R24 11
      221 DUPTABLE                         R25 K31 [{"Highlighted", "LayoutOrder"}]
      222 GETTABLEKS                       R26 R0 K32 ["highlighted"]
      224 SETTABLEKS                       R26 R25 K29 ["Highlighted"]
      226 MULK                             R27 R2 K34 [2]
      227 SUBK                             R26 R27 K33 [1]
      228 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      230 CALL                             R23 2 1
      231 SETTABLEKS                       R23 R22 K26 ["Divider"]
      233 GETUPVAL                         R23 0
      234 GETTABLEKS                       R23 R23 K24 ["createElement"]
      236 GETUPVAL                         R24 3
      237 GETTABLEKS                       R24 R24 K35 ["View"]
      239 DUPTABLE                         R25 K42 [{["tag"] = "gap-small size-full-700 auto-xy", ["testId"], ["LayoutOrder"], ["ref"], ["onStateChanged"], ["backgroundStyle"]}]
      240 LOADK                            R27 K43 ["--compositor-node-input-%*"]
      241 MOVE                             R29 R2
      242 NAMECALL                         R27 R27 K44 ["format"]
      244 CALL                             R27 2 1
      245 MOVE                             R26 R27
      246 SETTABLEKS                       R26 R25 K38 ["testId"]
      248 MULK                             R26 R2 K34 [2]
      249 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      251 GETTABLEKS                       R26 R3 K45 ["setFrame"]
      253 SETTABLEKS                       R26 R25 K39 ["ref"]
      255 SETTABLEKS                       R8 R25 K40 ["onStateChanged"]
      257 GETTABLEKS                       R27 R0 K46 ["selected"]
      259 JUMPIFNOT                        R27 ; [+12]
      260 DUPTABLE                         R26 K50 [{["Color3"], ["Transparency"] = 0.5}]
      261 GETTABLEKS                       R27 R4 K51 ["Color"]
      263 GETTABLEKS                       R27 R27 K52 ["System"]
      265 GETTABLEKS                       R27 R27 K53 ["Emphasis"]
      267 GETTABLEKS                       R27 R27 K47 ["Color3"]
      269 SETTABLEKS                       R27 R26 K47 ["Color3"]
      271 JUMP                             ; [+1]
      272 LOADNIL                          R26
      273 SETTABLEKS                       R26 R25 K41 ["backgroundStyle"]
      275 DUPTABLE                         R26 K56 [{"Content", "DragDetector"}]
      276 GETUPVAL                         R27 0
      277 GETTABLEKS                       R27 R27 K24 ["createElement"]
      279 GETTABLEKS                       R28 R0 K11 ["InputPanelProps"]
      281 GETTABLEKS                       R28 R28 K57 ["InputBuilder"]
      283 DUPTABLE                         R29 K72 [{"NodeId", "InputBuilderProps", "InputIndex", "Input", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName", "OnChanged", "OnDelete", "IsHovered", "IsSelected", "HasDuplicateName"}]
      284 GETTABLEKS                       R30 R0 K11 ["InputPanelProps"]
      286 GETTABLEKS                       R30 R30 K58 ["NodeId"]
      288 SETTABLEKS                       R30 R29 K58 ["NodeId"]
      290 GETTABLEKS                       R30 R0 K11 ["InputPanelProps"]
      292 GETTABLEKS                       R30 R30 K59 ["InputBuilderProps"]
      294 SETTABLEKS                       R30 R29 K59 ["InputBuilderProps"]
      296 GETUPVAL                         R31 12
      297 CALL                             R31 0 1
      298 JUMPIFNOT                        R31 ; [+2]
      299 MOVE                             R30 R2
      300 JUMP                             ; [+1]
      301 LOADNIL                          R30
      302 SETTABLEKS                       R30 R29 K60 ["InputIndex"]
      304 SETTABLEKS                       R18 R29 K27 ["Input"]
      306 GETTABLEKS                       R30 R0 K61 ["GraphPayload"]
      308 SETTABLEKS                       R30 R29 K61 ["GraphPayload"]
      310 GETTABLEKS                       R30 R0 K62 ["Position"]
      312 SETTABLEKS                       R30 R29 K62 ["Position"]
      314 GETTABLEKS                       R30 R0 K63 ["Size"]
      316 SETTABLEKS                       R30 R29 K63 ["Size"]
      318 GETTABLEKS                       R30 R0 K64 ["PropertyLookup"]
      320 SETTABLEKS                       R30 R29 K64 ["PropertyLookup"]
      322 GETTABLEKS                       R30 R0 K65 ["StateLookup"]
      324 SETTABLEKS                       R30 R29 K65 ["StateLookup"]
      326 GETTABLEKS                       R30 R0 K66 ["text"]
      328 SETTABLEKS                       R30 R29 K66 ["text"]
      330 GETTABLEKS                       R30 R0 K23 ["editName"]
      332 SETTABLEKS                       R30 R29 K23 ["editName"]
      334 SETTABLEKS                       R9 R29 K67 ["OnChanged"]
      336 GETUPVAL                         R31 13
      337 CALL                             R31 0 1
      338 JUMPIFNOT                        R31 ; [+2]
      339 MOVE                             R30 R10
      340 JUMP                             ; [+1]
      341 LOADNIL                          R30
      342 SETTABLEKS                       R30 R29 K68 ["OnDelete"]
      344 MOVE                             R30 R5
      345 JUMPIFNOT                        R30 ; [+2]
      346 GETTABLEKS                       R30 R7 K73 ["current"]
      348 SETTABLEKS                       R30 R29 K69 ["IsHovered"]
      350 GETUPVAL                         R31 14
      351 CALL                             R31 0 1
      352 JUMPIFNOT                        R31 ; [+3]
      353 GETTABLEKS                       R30 R0 K46 ["selected"]
      355 JUMP                             ; [+1]
      356 LOADNIL                          R30
      357 SETTABLEKS                       R30 R29 K70 ["IsSelected"]
      359 GETTABLEKS                       R30 R0 K71 ["HasDuplicateName"]
      361 SETTABLEKS                       R30 R29 K71 ["HasDuplicateName"]
      363 CALL                             R27 2 1
      364 SETTABLEKS                       R27 R26 K54 ["Content"]
      366 GETUPVAL                         R27 0
      367 GETTABLEKS                       R27 R27 K24 ["createElement"]
      369 LOADK                            R28 K74 ["UIDragDetector"]
      370 NEWTABLE                         R29 4 0
      372 GETIMPORT                        R30 K78 [Enum.UIDragDetectorDragStyle.Scriptable]
      374 SETTABLEKS                       R30 R29 K79 ["DragStyle"]
      376 GETUPVAL                         R30 0
      377 GETTABLEKS                       R30 R30 K80 ["Event"]
      379 GETTABLEKS                       R30 R30 K81 ["DragStart"]
      381 SETTABLE                         R11 R29 R30
      382 GETUPVAL                         R30 0
      383 GETTABLEKS                       R30 R30 K80 ["Event"]
      385 GETTABLEKS                       R30 R30 K82 ["DragContinue"]
      387 SETTABLE                         R12 R29 R30
      388 GETUPVAL                         R30 0
      389 GETTABLEKS                       R30 R30 K80 ["Event"]
      391 GETTABLEKS                       R30 R30 K83 ["DragEnd"]
      393 SETTABLE                         R13 R29 R30
      394 CALL                             R27 2 1
      395 SETTABLEKS                       R27 R26 K55 ["DragDetector"]
      397 CALL                             R23 3 1
      398 SETTABLEKS                       R23 R22 K27 ["Input"]
      400 CALL                             R19 3 -1
      401 RETURN                           R19 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDragging"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["draggedIndex"]
        7 JUMPIF                           R0 ; [+2]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["createElement"]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K5 [{"virtualRef", "draggedIndex", "inputs"}]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["virtualRef"]
       18 SETTABLEKS                       R3 R2 K3 ["virtualRef"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K1 ["draggedIndex"]
       23 SETTABLEKS                       R3 R2 K1 ["draggedIndex"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K6 ["Inputs"]
       28 SETTABLEKS                       R3 R2 K4 ["inputs"]
       30 CALL                             R0 2 -1
       31 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 0
       12 NEWTABLE                         R4 0 0
       14 GETUPVAL                         R5 3
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+25]
       17 GETTABLEKS                       R5 R0 K2 ["Inputs"]
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETTABLEKS                       R11 R9 K3 ["ConnectedNodeName"]
       24 FASTCALL1                        TYPE R11 ; [+2]
       25 GETIMPORT                        R10 K5 [type]
       27 CALL                             R10 1 1
       28 JUMPIFNOTEQKS                    R10 K6 ["string"] ; [+11]
       30 GETTABLEKS                       R11 R9 K3 ["ConnectedNodeName"]
       32 GETTABLE                         R10 R3 R11
       33 JUMPIFNOT                        R10 ; [+2]
       34 LOADB                            R10 1
       35 SETTABLE                         R10 R4 R8
       36 GETTABLEKS                       R10 R9 K3 ["ConnectedNodeName"]
       38 LOADB                            R11 1
       39 SETTABLE                         R11 R3 R10
       40 FORGLOOP                         R5 2 ; [-19]
       42 NEWTABLE                         R5 0 0
       44 GETTABLEKS                       R6 R0 K2 ["Inputs"]
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 LOADK                            R12 K7 ["Input%*"]
       50 MOVE                             R14 R9
       51 NAMECALL                         R12 R12 K8 ["format"]
       53 CALL                             R12 2 1
       54 MOVE                             R11 R12
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K9 ["createElement"]
       58 GETUPVAL                         R13 4
       59 DUPTABLE                         R14 K24 [{"index", "highlighted", "selected", "dragHelper", "input", "InputPanelProps", "HasDuplicateName", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName"}]
       60 SETTABLEKS                       R9 R14 K10 ["index"]
       62 GETTABLEKS                       R16 R2 K25 ["highlightedIndex"]
       64 JUMPIFEQ                         R16 R9 ; [+2]
       66 LOADB                            R15 0 +1
       67 LOADB                            R15 1
       68 SETTABLEKS                       R15 R14 K11 ["highlighted"]
       70 GETTABLEKS                       R15 R1 K26 ["isInputSelected"]
       72 GETTABLEKS                       R16 R0 K27 ["NodeId"]
       74 MOVE                             R17 R9
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K12 ["selected"]
       78 SETTABLEKS                       R2 R14 K13 ["dragHelper"]
       80 SETTABLEKS                       R10 R14 K14 ["input"]
       82 SETTABLEKS                       R0 R14 K15 ["InputPanelProps"]
       84 GETUPVAL                         R16 3
       85 CALL                             R16 0 1
       86 JUMPIFNOT                        R16 ; [+2]
       87 GETTABLE                         R15 R4 R9
       88 JUMP                             ; [+1]
       89 LOADNIL                          R15
       90 SETTABLEKS                       R15 R14 K16 ["HasDuplicateName"]
       92 GETTABLEKS                       R15 R0 K17 ["GraphPayload"]
       94 SETTABLEKS                       R15 R14 K17 ["GraphPayload"]
       96 GETTABLEKS                       R15 R0 K18 ["Position"]
       98 SETTABLEKS                       R15 R14 K18 ["Position"]
      100 GETTABLEKS                       R15 R0 K19 ["Size"]
      102 SETTABLEKS                       R15 R14 K19 ["Size"]
      104 GETTABLEKS                       R15 R0 K20 ["PropertyLookup"]
      106 SETTABLEKS                       R15 R14 K20 ["PropertyLookup"]
      108 GETTABLEKS                       R15 R0 K21 ["StateLookup"]
      110 SETTABLEKS                       R15 R14 K21 ["StateLookup"]
      112 GETTABLEKS                       R15 R0 K22 ["text"]
      114 SETTABLEKS                       R15 R14 K22 ["text"]
      116 GETTABLEKS                       R15 R0 K23 ["editName"]
      118 SETTABLEKS                       R15 R14 K23 ["editName"]
      120 CALL                             R12 2 1
      121 SETTABLE                         R12 R5 R11
      122 FORGLOOP                         R6 2 ; [-74]
      124 GETTABLEKS                       R7 R2 K25 ["highlightedIndex"]
      126 GETTABLEKS                       R10 R0 K2 ["Inputs"]
      128 LENGTH                           R9 R10
      129 ADDK                             R8 R9 K28 [1]
      130 JUMPIFEQ                         R7 R8 ; [+2]
      132 LOADB                            R6 0 +1
      133 LOADB                            R6 1
      134 GETUPVAL                         R7 0
      135 GETTABLEKS                       R7 R7 K9 ["createElement"]
      137 GETUPVAL                         R8 5
      138 DUPTABLE                         R9 K31 [{"LayoutOrder", "Highlighted"}]
      139 GETTABLEKS                       R14 R0 K2 ["Inputs"]
      141 LENGTH                           R13 R14
      142 ADDK                             R12 R13 K28 [1]
      143 MULK                             R11 R12 K32 [2]
      144 SUBK                             R10 R11 K28 [1]
      145 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
      147 SETTABLEKS                       R6 R9 K30 ["Highlighted"]
      149 CALL                             R7 2 1
      150 SETTABLEKS                       R7 R5 K33 ["NextDivider"]
      152 GETUPVAL                         R7 0
      153 GETTABLEKS                       R7 R7 K9 ["createElement"]
      155 GETUPVAL                         R8 6
      156 GETTABLEKS                       R8 R8 K34 ["View"]
      158 DUPTABLE                         R9 K37 [{["tag"] = "col gap-small size-full-700 auto-y", ["LayoutOrder"]}]
      159 GETTABLEKS                       R13 R0 K2 ["Inputs"]
      161 LENGTH                           R12 R13
      162 ADDK                             R11 R12 K28 [1]
      163 MULK                             R10 R11 K32 [2]
      164 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
      166 DUPTABLE                         R10 K39 [{"Input"}]
      167 GETTABLEKS                       R12 R0 K40 ["InputBuilderProps"]
      169 JUMPIFNOT                        R12 ; [+94]
      170 GETTABLEKS                       R12 R0 K27 ["NodeId"]
      172 JUMPIFNOT                        R12 ; [+91]
      173 GETUPVAL                         R12 7
      174 JUMPIFNOT                        R12 ; [+89]
      175 GETUPVAL                         R11 0
      176 GETTABLEKS                       R11 R11 K9 ["createElement"]
      178 GETUPVAL                         R12 7
      179 DUPTABLE                         R13 K46 [{["Name"], ["DisplayName"], ["Label"], ["HideWeight"] = True, ["InputBuilderProps"], ["Input"], ["NodeId"], ["LayoutOrder"], ["Position"], ["PropertyLookup"], ["Size"], ["StateLookup"], ["text"], ["editName"], ["GraphPayload"]}]
      180 LOADK                            R15 K7 ["Input%*"]
      181 GETTABLEKS                       R18 R0 K2 ["Inputs"]
      183 LENGTH                           R17 R18
      184 NAMECALL                         R15 R15 K8 ["format"]
      186 CALL                             R15 2 1
      187 MOVE                             R14 R15
      188 SETTABLEKS                       R14 R13 K41 ["Name"]
      190 GETUPVAL                         R15 8
      191 CALL                             R15 0 1
      192 JUMPIF                           R15 ; [+2]
      193 LOADK                            R14 K47 ["<New Input>"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R14
      196 SETTABLEKS                       R14 R13 K42 ["DisplayName"]
      198 GETUPVAL                         R14 9
      199 GETTABLEKS                       R14 R14 K48 ["NEW_INPUT"]
      201 SETTABLEKS                       R14 R13 K43 ["Label"]
      203 GETTABLEKS                       R14 R0 K40 ["InputBuilderProps"]
      205 SETTABLEKS                       R14 R13 K40 ["InputBuilderProps"]
      207 DUPTABLE                         R14 K52 [{["Name"], ["Weight"] = , ["Value"]}]
      208 LOADK                            R16 K7 ["Input%*"]
      209 GETTABLEKS                       R19 R0 K2 ["Inputs"]
      211 LENGTH                           R18 R19
      212 NAMECALL                         R16 R16 K8 ["format"]
      214 CALL                             R16 2 1
      215 MOVE                             R15 R16
      216 SETTABLEKS                       R15 R14 K41 ["Name"]
      218 GETTABLEKS                       R15 R0 K53 ["NewInputDefaultValue"]
      220 SETTABLEKS                       R15 R14 K51 ["Value"]
      222 SETTABLEKS                       R14 R13 K38 ["Input"]
      224 GETTABLEKS                       R14 R0 K27 ["NodeId"]
      226 SETTABLEKS                       R14 R13 K27 ["NodeId"]
      228 GETTABLEKS                       R16 R0 K2 ["Inputs"]
      230 LENGTH                           R15 R16
      231 ADDK                             R14 R15 K28 [1]
      232 SETTABLEKS                       R14 R13 K29 ["LayoutOrder"]
      234 GETTABLEKS                       R14 R0 K18 ["Position"]
      236 SETTABLEKS                       R14 R13 K18 ["Position"]
      238 GETTABLEKS                       R14 R0 K20 ["PropertyLookup"]
      240 SETTABLEKS                       R14 R13 K20 ["PropertyLookup"]
      242 GETTABLEKS                       R14 R0 K19 ["Size"]
      244 SETTABLEKS                       R14 R13 K19 ["Size"]
      246 GETTABLEKS                       R14 R0 K21 ["StateLookup"]
      248 SETTABLEKS                       R14 R13 K21 ["StateLookup"]
      250 GETTABLEKS                       R14 R0 K22 ["text"]
      252 SETTABLEKS                       R14 R13 K22 ["text"]
      254 GETTABLEKS                       R14 R0 K23 ["editName"]
      256 SETTABLEKS                       R14 R13 K23 ["editName"]
      258 GETTABLEKS                       R14 R0 K17 ["GraphPayload"]
      260 SETTABLEKS                       R14 R13 K17 ["GraphPayload"]
      262 CALL                             R11 2 1
      263 JUMP                             ; [+1]
      264 LOADNIL                          R11
      265 SETTABLEKS                       R11 R10 K38 ["Input"]
      267 CALL                             R7 3 1
      268 SETTABLEKS                       R7 R5 K54 ["NextInput"]
      270 GETUPVAL                         R7 0
      271 GETTABLEKS                       R7 R7 K55 ["useMemo"]
      273 NEWCLOSURE                       R8 P0
      274 CAPTURE                          VAL R2
      275 CAPTURE                          UPVAL U0
      276 CAPTURE                          UPVAL U10
      277 CAPTURE                          VAL R0
      278 NEWTABLE                         R9 0 5
      280 GETTABLEKS                       R10 R2 K56 ["draggedIndex"]
      282 GETTABLEKS                       R11 R2 K57 ["virtualRef"]
      284 GETTABLEKS                       R12 R0 K2 ["Inputs"]
      286 GETTABLEKS                       R13 R2 K58 ["isDragging"]
      288 GETTABLEKS                       R14 R1 K59 ["getSelectedIndices"]
      290 CALL                             R14 0 -1
      291 SETLIST                          R9 R10 -1 [1]
      293 CALL                             R7 2 1
      294 GETUPVAL                         R8 0
      295 GETTABLEKS                       R8 R8 K9 ["createElement"]
      297 GETUPVAL                         R9 6
      298 GETTABLEKS                       R9 R9 K34 ["View"]
      300 DUPTABLE                         R10 K61 [{["tag"] = "col gap-none size-full-700 auto-y", ["LayoutOrder"]}]
      301 GETTABLEKS                       R11 R0 K29 ["LayoutOrder"]
      303 SETTABLEKS                       R11 R10 K29 ["LayoutOrder"]
      305 DUPTABLE                         R11 K64 [{"Children", "PopOver"}]
      306 GETUPVAL                         R12 0
      307 GETTABLEKS                       R12 R12 K9 ["createElement"]
      309 GETUPVAL                         R13 0
      310 GETTABLEKS                       R13 R13 K65 ["Fragment"]
      312 NEWTABLE                         R14 0 0
      314 MOVE                             R15 R5
      315 CALL                             R12 3 1
      316 SETTABLEKS                       R12 R11 K62 ["Children"]
      318 SETTABLEKS                       R7 R11 K63 ["PopOver"]
      320 CALL                             R8 3 -1
      321 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R2 K9 ["CompositorStateUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Dash"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["NodeView"]
       31 GETTABLEKS                       R4 R4 K12 ["CompositorNodeInput"]
       33 GETTABLEKS                       R4 R4 K13 ["Divider"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K10 ["Parent"]
       40 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Components"]
       47 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       49 GETTABLEKS                       R6 R6 K12 ["CompositorNodeInput"]
       51 GETTABLEKS                       R6 R6 K15 ["InputPanelPopover"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Components"]
       58 GETTABLEKS                       R7 R7 K7 ["NodeView"]
       60 GETTABLEKS                       R7 R7 K12 ["CompositorNodeInput"]
       62 GETTABLEKS                       R7 R7 K16 ["InputPanelTypes"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K17 ["Contexts"]
       69 GETTABLEKS                       R8 R8 K18 ["InputSelectionContext"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K10 ["Parent"]
       76 GETTABLEKS                       R9 R9 K19 ["NodeGraphing"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K10 ["Parent"]
       83 GETTABLEKS                       R10 R10 K20 ["React"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K10 ["Parent"]
       90 GETTABLEKS                       R11 R11 K21 ["ReactUtils"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K10 ["Parent"]
       97 GETTABLEKS                       R12 R12 K22 ["Signals"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K10 ["Parent"]
      104 GETTABLEKS                       R13 R13 K23 ["SignalsReact"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K6 ["Components"]
      111 GETTABLEKS                       R14 R14 K7 ["NodeView"]
      113 GETTABLEKS                       R14 R14 K12 ["CompositorNodeInput"]
      115 GETTABLEKS                       R14 R14 K24 ["SimpleInput"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      122 GETTABLEKS                       R15 R15 K26 ["useAbsoluteSize"]
      124 CALL                             R14 1 1
      125 GETTABLEKS                       R15 R8 K27 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
      127 GETIMPORT                        R16 K5 [require]
      129 GETTABLEKS                       R17 R0 K28 ["Flags"]
      131 GETTABLEKS                       R17 R17 K29 ["getFFlagAnimGraphUIDuplicateNodeNames"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K5 [require]
      136 GETTABLEKS                       R18 R0 K28 ["Flags"]
      138 GETTABLEKS                       R18 R18 K30 ["getFFlagAnimGraphUIInputPanelUsesAnimationIdNames"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K5 [require]
      143 GETTABLEKS                       R19 R0 K28 ["Flags"]
      145 GETTABLEKS                       R19 R19 K31 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      147 CALL                             R18 1 1
      148 GETTABLEKS                       R19 R8 K32 ["getFFlagAnimGraphUIPinStates"]
      150 DUPTABLE                         R20 K40 [{["id"] = "", ["nodeType"] = "", ["inputPinIds"], ["outputPinToConnectionMap"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"]}]
      151 NEWTABLE                         R21 0 0
      153 SETTABLEKS                       R21 R20 K36 ["inputPinIds"]
      155 NEWTABLE                         R21 0 0
      157 SETTABLEKS                       R21 R20 K37 ["outputPinToConnectionMap"]
      159 NEWTABLE                         R21 0 0
      161 SETTABLEKS                       R21 R20 K38 ["inputPinToConnectionMap"]
      163 NEWTABLE                         R21 0 0
      165 SETTABLEKS                       R21 R20 K39 ["inputLabelPinToConnectionMap"]
      167 DUPCLOSURE                       R21 K41 [PROTO_3]
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R4
      172 DUPCLOSURE                       R22 K42 [PROTO_16]
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R19
      188 DUPCLOSURE                       R23 K43 [PROTO_18]
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R5
      200 RETURN                           R23 1
