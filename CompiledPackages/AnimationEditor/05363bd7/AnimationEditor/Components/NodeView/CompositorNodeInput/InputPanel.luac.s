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
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+16]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K2 ["inputDown"]
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K3 ["NodeId"]
       19 MOVE                             R4 R0
       20 GETUPVAL                         R5 5
       21 GETTABLEKS                       R5 R5 K4 ["isShiftPressed"]
       23 CALL                             R5 0 1
       24 GETUPVAL                         R6 5
       25 GETTABLEKS                       R6 R6 K5 ["isCtrlPressed"]
       27 CALL                             R6 0 -1
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETUPVAL                         R2 2
       11 LOADB                            R3 1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K0 ["current"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETTABLEKS                       R7 R1 K2 ["Y"]
       21 GETTABLEKS                       R8 R6 K3 ["absolutePosition"]
       23 GETTABLEKS                       R8 R8 K2 ["Y"]
       25 JUMPIFNOTLT                      R8 R7 ; [+19]
       27 GETTABLEKS                       R7 R1 K2 ["Y"]
       29 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       31 GETTABLEKS                       R9 R9 K2 ["Y"]
       33 GETTABLEKS                       R11 R6 K5 ["absoluteSize"]
       35 GETTABLEKS                       R11 R11 K2 ["Y"]
       37 DIVK                             R10 R11 K4 [2]
       38 ADD                              R8 R9 R10
       39 JUMPIFNOTLT                      R7 R8 ; [+5]
       41 GETUPVAL                         R7 4
       42 MOVE                             R8 R5
       43 CALL                             R7 1 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R7 R1 K2 ["Y"]
       47 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       49 GETTABLEKS                       R9 R9 K2 ["Y"]
       51 GETTABLEKS                       R11 R6 K5 ["absoluteSize"]
       53 GETTABLEKS                       R11 R11 K2 ["Y"]
       55 DIVK                             R10 R11 K4 [2]
       56 ADD                              R8 R9 R10
       57 JUMPIFNOTLE                      R8 R7 ; [+18]
       59 GETTABLEKS                       R7 R1 K2 ["Y"]
       61 GETTABLEKS                       R9 R6 K3 ["absolutePosition"]
       63 GETTABLEKS                       R9 R9 K2 ["Y"]
       65 GETTABLEKS                       R10 R6 K5 ["absoluteSize"]
       67 GETTABLEKS                       R10 R10 K2 ["Y"]
       69 ADD                              R8 R9 R10
       70 JUMPIFNOTLT                      R7 R8 ; [+5]
       72 GETUPVAL                         R7 4
       73 ADDK                             R8 R5 K6 [1]
       74 CALL                             R7 1 0
       75 RETURN                           R0 0
       76 FORGLOOP                         R2 2 ; [-58]
       78 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+49]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+30]
        5 GETUPVAL                         R2 2
        6 JUMPIFEQKNIL                     R2 ; [+28]
        8 GETUPVAL                         R2 3
        9 JUMPIFEQKNIL                     R2 ; [+25]
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K0 ["getSelectedIndices"]
       14 CALL                             R2 0 1
       15 LENGTH                           R3 R2
       16 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
       18 NEWTABLE                         R3 0 1
       20 GETUPVAL                         R4 2
       21 SETLIST                          R3 R4 1 [1]
       23 MOVE                             R2 R3
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K2 ["OnInputReordered"]
       27 MOVE                             R4 R2
       28 GETUPVAL                         R5 3
       29 CALL                             R3 2 0
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R3 R3 K3 ["clearSelection"]
       33 CALL                             R3 0 0
       34 JUMP                             ; [+33]
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K4 ["inputUp"]
       38 GETUPVAL                         R3 5
       39 GETTABLEKS                       R3 R3 K5 ["NodeId"]
       41 MOVE                             R4 R0
       42 GETUPVAL                         R5 6
       43 GETTABLEKS                       R5 R5 K6 ["isShiftPressed"]
       45 CALL                             R5 0 1
       46 GETUPVAL                         R6 6
       47 GETTABLEKS                       R6 R6 K7 ["isCtrlPressed"]
       49 CALL                             R6 0 -1
       50 CALL                             R2 -1 0
       51 JUMP                             ; [+16]
       52 GETUPVAL                         R2 2
       53 JUMPIFEQKNIL                     R2 ; [+14]
       55 GETUPVAL                         R2 3
       56 JUMPIFEQKNIL                     R2 ; [+11]
       58 GETUPVAL                         R2 5
       59 GETTABLEKS                       R2 R2 K2 ["OnInputReordered"]
       61 NEWTABLE                         R3 0 1
       63 GETUPVAL                         R4 2
       64 SETLIST                          R3 R4 1 [1]
       66 GETUPVAL                         R4 3
       67 CALL                             R2 2 0
       68 GETUPVAL                         R2 7
       69 LOADNIL                          R3
       70 CALL                             R2 1 0
       71 GETUPVAL                         R2 8
       72 LOADNIL                          R3
       73 CALL                             R2 1 0
       74 GETUPVAL                         R2 0
       75 CALL                             R2 0 1
       76 JUMPIFNOT                        R2 ; [+3]
       77 GETUPVAL                         R2 9
       78 LOADB                            R3 0
       79 CALL                             R2 1 0
       80 RETURN                           R0 0

PROTO_3:
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
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useRef"]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K3 ["Hooks"]
       23 GETTABLEKS                       R4 R4 K4 ["useMeasurableRef"]
       25 GETIMPORT                        R5 K7 [Vector2.zero]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K8 ["useState"]
       31 LOADB                            R6 0
       32 CALL                             R5 1 2
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K8 ["useState"]
       36 LOADNIL                          R8
       37 CALL                             R7 1 2
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K8 ["useState"]
       41 LOADNIL                          R10
       42 CALL                             R9 1 2
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       46 NEWCLOSURE                       R12 P0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R13 0 7
       55 MOVE                             R14 R4
       56 MOVE                             R15 R8
       57 GETUPVAL                         R16 4
       58 CALL                             R16 0 1
       59 GETTABLEKS                       R17 R1 K10 ["inputDown"]
       61 GETTABLEKS                       R18 R0 K11 ["NodeId"]
       63 GETTABLEKS                       R19 R2 K12 ["isShiftPressed"]
       65 CALL                             R19 0 1
       66 GETTABLEKS                       R20 R2 K13 ["isCtrlPressed"]
       68 CALL                             R20 0 -1
       69 SETLIST                          R13 R14 -1 [1]
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       75 NEWCLOSURE                       R13 P1
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R10
       81 NEWTABLE                         R14 0 6
       83 MOVE                             R15 R10
       84 MOVE                             R16 R9
       85 MOVE                             R17 R4
       86 GETTABLEKS                       R18 R3 K14 ["current"]
       88 GETUPVAL                         R19 4
       89 CALL                             R19 0 1
       90 MOVE                             R20 R6
       91 SETLIST                          R14 R15 6 [1]
       93 CALL                             R12 2 1
       94 GETUPVAL                         R13 0
       95 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       97 NEWCLOSURE                       R14 P2
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R6
      108 NEWTABLE                         R15 0 12
      110 GETTABLEKS                       R16 R0 K15 ["OnInputReordered"]
      112 MOVE                             R17 R7
      113 MOVE                             R18 R9
      114 MOVE                             R19 R8
      115 MOVE                             R20 R10
      116 MOVE                             R21 R6
      117 GETUPVAL                         R22 4
      118 CALL                             R22 0 1
      119 MOVE                             R23 R5
      120 GETTABLEKS                       R24 R1 K16 ["inputUp"]
      122 GETTABLEKS                       R25 R0 K11 ["NodeId"]
      124 GETTABLEKS                       R26 R2 K12 ["isShiftPressed"]
      126 CALL                             R26 0 1
      127 GETTABLEKS                       R27 R2 K13 ["isCtrlPressed"]
      129 CALL                             R27 0 -1
      130 SETLIST                          R15 R16 -1 [1]
      132 CALL                             R13 2 1
      133 DUPTABLE                         R14 K25 [{"absoluteSizesRef", "onDragStart", "onDragContinue", "onDragEnd", "draggedIndex", "highlightedIndex", "virtualRef", "isDragging"}]
      134 SETTABLEKS                       R3 R14 K17 ["absoluteSizesRef"]
      136 SETTABLEKS                       R11 R14 K18 ["onDragStart"]
      138 SETTABLEKS                       R12 R14 K19 ["onDragContinue"]
      140 SETTABLEKS                       R13 R14 K20 ["onDragEnd"]
      142 SETTABLEKS                       R7 R14 K21 ["draggedIndex"]
      144 SETTABLEKS                       R9 R14 K22 ["highlightedIndex"]
      146 SETTABLEKS                       R4 R14 K23 ["virtualRef"]
      148 SETTABLEKS                       R5 R14 K24 ["isDragging"]
      150 RETURN                           R14 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragStart"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragContinue"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragHelper"]
        3 GETTABLEKS                       R2 R2 K1 ["onDragEnd"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["input"]
        6 DUPTABLE                         R2 K3 [{"Weight"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["Weight"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        7 GETTABLEKS                       R3 R3 K2 ["useTokens"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K4 ["useRefToState"]
       18 MOVE                             R7 R4
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R9 0 1
       28 MOVE                             R10 R4
       29 SETLIST                          R9 R10 1 [1]
       31 CALL                             R7 2 0
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R9 0 1
       39 MOVE                             R10 R5
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 NEWTABLE                         R10 0 2
       53 GETTABLEKS                       R11 R2 K7 ["observeAbsoluteSizeState"]
       55 MOVE                             R12 R1
       56 SETLIST                          R10 R11 2 [1]
       58 CALL                             R8 2 0
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       62 NEWCLOSURE                       R9 P3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 NEWTABLE                         R10 0 2
       67 GETTABLEKS                       R11 R0 K8 ["InputPanelProps"]
       69 GETTABLEKS                       R11 R11 K9 ["OnInputChanged"]
       71 MOVE                             R12 R1
       72 SETLIST                          R10 R11 2 [1]
       74 CALL                             R8 2 1
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       78 NEWCLOSURE                       R10 P4
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 NEWTABLE                         R11 0 2
       83 GETTABLEKS                       R12 R0 K10 ["dragHelper"]
       85 MOVE                             R13 R1
       86 SETLIST                          R11 R12 2 [1]
       88 CALL                             R9 2 1
       89 GETUPVAL                         R10 2
       90 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       92 NEWCLOSURE                       R11 P5
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R1
       95 NEWTABLE                         R12 0 2
       97 GETTABLEKS                       R13 R0 K10 ["dragHelper"]
       99 MOVE                             R14 R1
      100 SETLIST                          R12 R13 2 [1]
      102 CALL                             R10 2 1
      103 GETUPVAL                         R11 2
      104 GETTABLEKS                       R11 R11 K6 ["useCallback"]
      106 NEWCLOSURE                       R12 P6
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R1
      109 NEWTABLE                         R13 0 2
      111 GETTABLEKS                       R14 R0 K10 ["dragHelper"]
      113 MOVE                             R15 R1
      114 SETLIST                          R13 R14 2 [1]
      116 CALL                             R11 2 1
      117 GETUPVAL                         R12 5
      118 GETTABLEKS                       R12 R12 K11 ["useSignalState"]
      120 GETUPVAL                         R13 6
      121 GETTABLEKS                       R13 R13 K12 ["useObserveNodeWeight"]
      123 GETTABLEKS                       R14 R0 K13 ["input"]
      125 GETTABLEKS                       R14 R14 K14 ["ConnectedNodeId"]
      127 CALL                             R13 1 -1
      128 CALL                             R12 -1 1
      129 GETUPVAL                         R13 2
      130 GETTABLEKS                       R13 R13 K15 ["useMemo"]
      132 NEWCLOSURE                       R14 P7
      133 CAPTURE                          UPVAL U7
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R12
      136 NEWTABLE                         R15 0 2
      138 GETTABLEKS                       R16 R0 K13 ["input"]
      140 MOVE                             R17 R12
      141 SETLIST                          R15 R16 2 [1]
      143 CALL                             R13 2 1
      144 GETUPVAL                         R14 2
      145 GETTABLEKS                       R14 R14 K16 ["createElement"]
      147 GETUPVAL                         R15 2
      148 GETTABLEKS                       R15 R15 K17 ["Fragment"]
      150 NEWTABLE                         R16 0 0
      152 DUPTABLE                         R17 K20 [{"Divider", "Input"}]
      153 GETUPVAL                         R18 2
      154 GETTABLEKS                       R18 R18 K16 ["createElement"]
      156 GETUPVAL                         R19 8
      157 DUPTABLE                         R20 K23 [{"Highlighted", "LayoutOrder"}]
      158 GETTABLEKS                       R21 R0 K24 ["highlighted"]
      160 SETTABLEKS                       R21 R20 K21 ["Highlighted"]
      162 MULK                             R22 R1 K26 [2]
      163 SUBK                             R21 R22 K25 [1]
      164 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      166 CALL                             R18 2 1
      167 SETTABLEKS                       R18 R17 K18 ["Divider"]
      169 GETUPVAL                         R18 2
      170 GETTABLEKS                       R18 R18 K16 ["createElement"]
      172 GETUPVAL                         R19 1
      173 GETTABLEKS                       R19 R19 K27 ["View"]
      175 DUPTABLE                         R20 K32 [{"tag", "LayoutOrder", "ref", "onStateChanged", "backgroundStyle"}]
      176 LOADK                            R22 K33 ["auto-xy gap-small size-full-700 data-testid=--compositor-node-input-%*"]
      177 MOVE                             R24 R1
      178 NAMECALL                         R22 R22 K34 ["format"]
      180 CALL                             R22 2 1
      181 MOVE                             R21 R22
      182 SETTABLEKS                       R21 R20 K28 ["tag"]
      184 MULK                             R21 R1 K26 [2]
      185 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      187 GETTABLEKS                       R21 R2 K35 ["setFrame"]
      189 SETTABLEKS                       R21 R20 K29 ["ref"]
      191 SETTABLEKS                       R7 R20 K30 ["onStateChanged"]
      193 GETUPVAL                         R22 9
      194 CALL                             R22 0 1
      195 JUMPIFNOT                        R22 ; [+18]
      196 GETTABLEKS                       R22 R0 K36 ["selected"]
      198 JUMPIFNOT                        R22 ; [+15]
      199 DUPTABLE                         R21 K39 [{"Color3", "Transparency"}]
      200 GETTABLEKS                       R22 R3 K40 ["Color"]
      202 GETTABLEKS                       R22 R22 K41 ["System"]
      204 GETTABLEKS                       R22 R22 K42 ["Emphasis"]
      206 GETTABLEKS                       R22 R22 K37 ["Color3"]
      208 SETTABLEKS                       R22 R21 K37 ["Color3"]
      210 LOADK                            R22 K43 [0.5]
      211 SETTABLEKS                       R22 R21 K38 ["Transparency"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R21
      215 SETTABLEKS                       R21 R20 K31 ["backgroundStyle"]
      217 DUPTABLE                         R21 K46 [{"Content", "DragDetector"}]
      218 GETUPVAL                         R22 2
      219 GETTABLEKS                       R22 R22 K16 ["createElement"]
      221 GETTABLEKS                       R23 R0 K8 ["InputPanelProps"]
      223 GETTABLEKS                       R23 R23 K47 ["InputBuilder"]
      225 DUPTABLE                         R24 K60 [{"NodeId", "InputBuilderProps", "InputIndex", "Input", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName", "OnChanged", "IsHoveredRef"}]
      226 GETTABLEKS                       R25 R0 K8 ["InputPanelProps"]
      228 GETTABLEKS                       R25 R25 K48 ["NodeId"]
      230 SETTABLEKS                       R25 R24 K48 ["NodeId"]
      232 GETTABLEKS                       R25 R0 K8 ["InputPanelProps"]
      234 GETTABLEKS                       R25 R25 K49 ["InputBuilderProps"]
      236 SETTABLEKS                       R25 R24 K49 ["InputBuilderProps"]
      238 GETUPVAL                         R26 10
      239 CALL                             R26 0 1
      240 JUMPIFNOT                        R26 ; [+2]
      241 MOVE                             R25 R1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R25
      244 SETTABLEKS                       R25 R24 K50 ["InputIndex"]
      246 SETTABLEKS                       R13 R24 K19 ["Input"]
      248 GETTABLEKS                       R25 R0 K51 ["GraphPayload"]
      250 SETTABLEKS                       R25 R24 K51 ["GraphPayload"]
      252 GETTABLEKS                       R25 R0 K52 ["Position"]
      254 SETTABLEKS                       R25 R24 K52 ["Position"]
      256 GETTABLEKS                       R25 R0 K53 ["Size"]
      258 SETTABLEKS                       R25 R24 K53 ["Size"]
      260 GETTABLEKS                       R25 R0 K54 ["PropertyLookup"]
      262 SETTABLEKS                       R25 R24 K54 ["PropertyLookup"]
      264 GETTABLEKS                       R25 R0 K55 ["StateLookup"]
      266 SETTABLEKS                       R25 R24 K55 ["StateLookup"]
      268 GETTABLEKS                       R25 R0 K56 ["text"]
      270 SETTABLEKS                       R25 R24 K56 ["text"]
      272 GETTABLEKS                       R25 R0 K57 ["editName"]
      274 SETTABLEKS                       R25 R24 K57 ["editName"]
      276 SETTABLEKS                       R8 R24 K58 ["OnChanged"]
      278 SETTABLEKS                       R6 R24 K59 ["IsHoveredRef"]
      280 CALL                             R22 2 1
      281 SETTABLEKS                       R22 R21 K44 ["Content"]
      283 GETUPVAL                         R22 2
      284 GETTABLEKS                       R22 R22 K16 ["createElement"]
      286 LOADK                            R23 K61 ["UIDragDetector"]
      287 NEWTABLE                         R24 4 0
      289 GETIMPORT                        R25 K65 [Enum.UIDragDetectorDragStyle.Scriptable]
      291 SETTABLEKS                       R25 R24 K66 ["DragStyle"]
      293 GETUPVAL                         R25 2
      294 GETTABLEKS                       R25 R25 K67 ["Event"]
      296 GETTABLEKS                       R25 R25 K68 ["DragStart"]
      298 SETTABLE                         R9 R24 R25
      299 GETUPVAL                         R25 2
      300 GETTABLEKS                       R25 R25 K67 ["Event"]
      302 GETTABLEKS                       R25 R25 K69 ["DragContinue"]
      304 SETTABLE                         R10 R24 R25
      305 GETUPVAL                         R25 2
      306 GETTABLEKS                       R25 R25 K67 ["Event"]
      308 GETTABLEKS                       R25 R25 K70 ["DragEnd"]
      310 SETTABLE                         R11 R24 R25
      311 CALL                             R22 2 1
      312 SETTABLEKS                       R22 R21 K45 ["DragDetector"]
      314 CALL                             R18 3 1
      315 SETTABLEKS                       R18 R17 K19 ["Input"]
      317 CALL                             R14 3 -1
      318 RETURN                           R14 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+32]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["isDragging"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["draggedIndex"]
       10 JUMPIF                           R0 ; [+2]
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K2 ["createElement"]
       16 GETUPVAL                         R1 3
       17 DUPTABLE                         R2 K5 [{"virtualRef", "draggedIndex", "inputs"}]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["virtualRef"]
       21 SETTABLEKS                       R3 R2 K3 ["virtualRef"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K1 ["draggedIndex"]
       26 SETTABLEKS                       R3 R2 K1 ["draggedIndex"]
       28 GETUPVAL                         R3 4
       29 GETTABLEKS                       R3 R3 K6 ["Inputs"]
       31 SETTABLEKS                       R3 R2 K4 ["inputs"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1
       35 GETUPVAL                         R0 1
       36 GETTABLEKS                       R0 R0 K1 ["draggedIndex"]
       38 JUMPIFNOTEQKNIL                  R0 ; [+3]
       40 LOADNIL                          R0
       41 RETURN                           R0 1
       42 GETUPVAL                         R0 2
       43 GETTABLEKS                       R0 R0 K2 ["createElement"]
       45 GETUPVAL                         R1 3
       46 DUPTABLE                         R2 K8 [{"virtualRef", "Text"}]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K3 ["virtualRef"]
       50 SETTABLEKS                       R3 R2 K3 ["virtualRef"]
       52 GETUPVAL                         R4 4
       53 GETTABLEKS                       R4 R4 K6 ["Inputs"]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K1 ["draggedIndex"]
       58 GETTABLE                         R3 R4 R5
       59 GETTABLEKS                       R3 R3 K9 ["Name"]
       61 SETTABLEKS                       R3 R2 K7 ["Text"]
       63 CALL                             R0 2 -1
       64 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 0
       12 GETTABLEKS                       R4 R0 K2 ["Inputs"]
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 LOADK                            R10 K3 ["Input%*"]
       18 MOVE                             R12 R7
       19 NAMECALL                         R10 R10 K4 ["format"]
       21 CALL                             R10 2 1
       22 MOVE                             R9 R10
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K5 ["createElement"]
       26 GETUPVAL                         R11 3
       27 DUPTABLE                         R12 K19 [{"index", "highlighted", "selected", "dragHelper", "input", "InputPanelProps", "GraphPayload", "Position", "Size", "PropertyLookup", "StateLookup", "text", "editName"}]
       28 SETTABLEKS                       R7 R12 K6 ["index"]
       30 GETTABLEKS                       R14 R2 K20 ["highlightedIndex"]
       32 JUMPIFEQ                         R14 R7 ; [+2]
       34 LOADB                            R13 0 +1
       35 LOADB                            R13 1
       36 SETTABLEKS                       R13 R12 K7 ["highlighted"]
       38 GETUPVAL                         R14 4
       39 CALL                             R14 0 1
       40 JUMPIFNOT                        R14 ; [+7]
       41 GETTABLEKS                       R13 R1 K21 ["isInputSelected"]
       43 GETTABLEKS                       R14 R0 K22 ["NodeId"]
       45 MOVE                             R15 R7
       46 CALL                             R13 2 1
       47 JUMP                             ; [+1]
       48 LOADB                            R13 0
       49 SETTABLEKS                       R13 R12 K8 ["selected"]
       51 SETTABLEKS                       R2 R12 K9 ["dragHelper"]
       53 SETTABLEKS                       R8 R12 K10 ["input"]
       55 SETTABLEKS                       R0 R12 K11 ["InputPanelProps"]
       57 GETTABLEKS                       R13 R0 K12 ["GraphPayload"]
       59 SETTABLEKS                       R13 R12 K12 ["GraphPayload"]
       61 GETTABLEKS                       R13 R0 K13 ["Position"]
       63 SETTABLEKS                       R13 R12 K13 ["Position"]
       65 GETTABLEKS                       R13 R0 K14 ["Size"]
       67 SETTABLEKS                       R13 R12 K14 ["Size"]
       69 GETTABLEKS                       R13 R0 K15 ["PropertyLookup"]
       71 SETTABLEKS                       R13 R12 K15 ["PropertyLookup"]
       73 GETTABLEKS                       R13 R0 K16 ["StateLookup"]
       75 SETTABLEKS                       R13 R12 K16 ["StateLookup"]
       77 GETTABLEKS                       R13 R0 K17 ["text"]
       79 SETTABLEKS                       R13 R12 K17 ["text"]
       81 GETTABLEKS                       R13 R0 K18 ["editName"]
       83 SETTABLEKS                       R13 R12 K18 ["editName"]
       85 CALL                             R10 2 1
       86 SETTABLE                         R10 R3 R9
       87 FORGLOOP                         R4 2 ; [-71]
       89 GETTABLEKS                       R5 R2 K20 ["highlightedIndex"]
       91 GETTABLEKS                       R8 R0 K2 ["Inputs"]
       93 LENGTH                           R7 R8
       94 ADDK                             R6 R7 K23 [1]
       95 JUMPIFEQ                         R5 R6 ; [+2]
       97 LOADB                            R4 0 +1
       98 LOADB                            R4 1
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R5 R5 K5 ["createElement"]
      102 GETUPVAL                         R6 5
      103 DUPTABLE                         R7 K26 [{"LayoutOrder", "Highlighted"}]
      104 GETTABLEKS                       R12 R0 K2 ["Inputs"]
      106 LENGTH                           R11 R12
      107 ADDK                             R10 R11 K23 [1]
      108 MULK                             R9 R10 K27 [2]
      109 SUBK                             R8 R9 K23 [1]
      110 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
      112 SETTABLEKS                       R4 R7 K25 ["Highlighted"]
      114 CALL                             R5 2 1
      115 SETTABLEKS                       R5 R3 K28 ["NextDivider"]
      117 GETUPVAL                         R5 0
      118 GETTABLEKS                       R5 R5 K5 ["createElement"]
      120 GETUPVAL                         R6 6
      121 GETTABLEKS                       R6 R6 K29 ["View"]
      123 DUPTABLE                         R7 K31 [{"tag", "LayoutOrder"}]
      124 LOADK                            R8 K32 ["col auto-y gap-small size-full-700"]
      125 SETTABLEKS                       R8 R7 K30 ["tag"]
      127 GETTABLEKS                       R11 R0 K2 ["Inputs"]
      129 LENGTH                           R10 R11
      130 ADDK                             R9 R10 K23 [1]
      131 MULK                             R8 R9 K27 [2]
      132 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
      134 DUPTABLE                         R8 K34 [{"Input"}]
      135 GETTABLEKS                       R10 R0 K35 ["InputBuilderProps"]
      137 JUMPIFNOT                        R10 ; [+90]
      138 GETTABLEKS                       R10 R0 K22 ["NodeId"]
      140 JUMPIFNOT                        R10 ; [+87]
      141 GETUPVAL                         R10 7
      142 JUMPIFNOT                        R10 ; [+85]
      143 GETUPVAL                         R9 0
      144 GETTABLEKS                       R9 R9 K5 ["createElement"]
      146 GETUPVAL                         R10 7
      147 DUPTABLE                         R11 K39 [{"Name", "DisplayName", "HideWeight", "InputBuilderProps", "Input", "NodeId", "LayoutOrder", "Position", "PropertyLookup", "Size", "StateLookup", "text", "editName", "GraphPayload"}]
      148 LOADK                            R13 K3 ["Input%*"]
      149 GETTABLEKS                       R16 R0 K2 ["Inputs"]
      151 LENGTH                           R15 R16
      152 NAMECALL                         R13 R13 K4 ["format"]
      154 CALL                             R13 2 1
      155 MOVE                             R12 R13
      156 SETTABLEKS                       R12 R11 K36 ["Name"]
      158 LOADK                            R12 K40 ["<New Input>"]
      159 SETTABLEKS                       R12 R11 K37 ["DisplayName"]
      161 LOADB                            R12 1
      162 SETTABLEKS                       R12 R11 K38 ["HideWeight"]
      164 GETTABLEKS                       R12 R0 K35 ["InputBuilderProps"]
      166 SETTABLEKS                       R12 R11 K35 ["InputBuilderProps"]
      168 DUPTABLE                         R12 K43 [{"Name", "Weight", "Value"}]
      169 LOADK                            R14 K3 ["Input%*"]
      170 GETTABLEKS                       R17 R0 K2 ["Inputs"]
      172 LENGTH                           R16 R17
      173 NAMECALL                         R14 R14 K4 ["format"]
      175 CALL                             R14 2 1
      176 MOVE                             R13 R14
      177 SETTABLEKS                       R13 R12 K36 ["Name"]
      179 LOADNIL                          R13
      180 SETTABLEKS                       R13 R12 K41 ["Weight"]
      182 GETTABLEKS                       R13 R0 K44 ["NewInputDefaultValue"]
      184 SETTABLEKS                       R13 R12 K42 ["Value"]
      186 SETTABLEKS                       R12 R11 K33 ["Input"]
      188 GETTABLEKS                       R12 R0 K22 ["NodeId"]
      190 SETTABLEKS                       R12 R11 K22 ["NodeId"]
      192 GETTABLEKS                       R14 R0 K2 ["Inputs"]
      194 LENGTH                           R13 R14
      195 ADDK                             R12 R13 K23 [1]
      196 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      198 GETTABLEKS                       R12 R0 K13 ["Position"]
      200 SETTABLEKS                       R12 R11 K13 ["Position"]
      202 GETTABLEKS                       R12 R0 K15 ["PropertyLookup"]
      204 SETTABLEKS                       R12 R11 K15 ["PropertyLookup"]
      206 GETTABLEKS                       R12 R0 K14 ["Size"]
      208 SETTABLEKS                       R12 R11 K14 ["Size"]
      210 GETTABLEKS                       R12 R0 K16 ["StateLookup"]
      212 SETTABLEKS                       R12 R11 K16 ["StateLookup"]
      214 GETTABLEKS                       R12 R0 K17 ["text"]
      216 SETTABLEKS                       R12 R11 K17 ["text"]
      218 GETTABLEKS                       R12 R0 K18 ["editName"]
      220 SETTABLEKS                       R12 R11 K18 ["editName"]
      222 GETTABLEKS                       R12 R0 K12 ["GraphPayload"]
      224 SETTABLEKS                       R12 R11 K12 ["GraphPayload"]
      226 CALL                             R9 2 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R9
      229 SETTABLEKS                       R9 R8 K33 ["Input"]
      231 CALL                             R5 3 1
      232 SETTABLEKS                       R5 R3 K45 ["NextInput"]
      234 GETUPVAL                         R5 0
      235 GETTABLEKS                       R5 R5 K46 ["useMemo"]
      237 NEWCLOSURE                       R6 P0
      238 CAPTURE                          UPVAL U4
      239 CAPTURE                          VAL R2
      240 CAPTURE                          UPVAL U0
      241 CAPTURE                          UPVAL U8
      242 CAPTURE                          VAL R0
      243 NEWTABLE                         R7 0 6
      245 GETTABLEKS                       R8 R2 K47 ["draggedIndex"]
      247 GETTABLEKS                       R9 R2 K48 ["virtualRef"]
      249 GETTABLEKS                       R10 R0 K2 ["Inputs"]
      251 GETUPVAL                         R11 4
      252 CALL                             R11 0 1
      253 GETTABLEKS                       R12 R2 K49 ["isDragging"]
      255 GETTABLEKS                       R13 R1 K50 ["getSelectedIndices"]
      257 CALL                             R13 0 -1
      258 SETLIST                          R7 R8 -1 [1]
      260 CALL                             R5 2 1
      261 GETUPVAL                         R6 0
      262 GETTABLEKS                       R6 R6 K5 ["createElement"]
      264 GETUPVAL                         R7 6
      265 GETTABLEKS                       R7 R7 K29 ["View"]
      267 DUPTABLE                         R8 K31 [{"tag", "LayoutOrder"}]
      268 LOADK                            R9 K51 ["col gap-none size-full-700 auto-y"]
      269 SETTABLEKS                       R9 R8 K30 ["tag"]
      271 GETTABLEKS                       R9 R0 K24 ["LayoutOrder"]
      273 SETTABLEKS                       R9 R8 K24 ["LayoutOrder"]
      275 DUPTABLE                         R9 K54 [{"Children", "PopOver"}]
      276 GETUPVAL                         R10 0
      277 GETTABLEKS                       R10 R10 K5 ["createElement"]
      279 GETUPVAL                         R11 0
      280 GETTABLEKS                       R11 R11 K55 ["Fragment"]
      282 NEWTABLE                         R12 0 0
      284 MOVE                             R13 R3
      285 CALL                             R10 3 1
      286 SETTABLEKS                       R10 R9 K52 ["Children"]
      288 SETTABLEKS                       R5 R9 K53 ["PopOver"]
      290 CALL                             R6 3 -1
      291 RETURN                           R6 -1

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
       74 GETTABLEKS                       R9 R0 K17 ["Contexts"]
       76 GETTABLEKS                       R9 R9 K19 ["ModifierKeysContext"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K10 ["Parent"]
       83 GETTABLEKS                       R10 R10 K20 ["NodeGraphing"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K10 ["Parent"]
       90 GETTABLEKS                       R11 R11 K21 ["React"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K10 ["Parent"]
       97 GETTABLEKS                       R12 R12 K22 ["ReactUtils"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K10 ["Parent"]
      104 GETTABLEKS                       R13 R13 K23 ["Signals"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K10 ["Parent"]
      111 GETTABLEKS                       R14 R14 K24 ["SignalsReact"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K6 ["Components"]
      118 GETTABLEKS                       R15 R15 K7 ["NodeView"]
      120 GETTABLEKS                       R15 R15 K12 ["CompositorNodeInput"]
      122 GETTABLEKS                       R15 R15 K25 ["SimpleInput"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      129 GETTABLEKS                       R16 R16 K27 ["useAbsoluteSize"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K5 [require]
      134 GETTABLEKS                       R17 R0 K28 ["Flags"]
      136 GETTABLEKS                       R17 R17 K29 ["getFFlagAnimGraphUIInputSelection"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R18 R0 K28 ["Flags"]
      143 GETTABLEKS                       R18 R18 K30 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      145 CALL                             R17 1 1
      146 DUPCLOSURE                       R18 K31 [PROTO_3]
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R16
      152 DUPCLOSURE                       R19 K32 [PROTO_13]
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R17
      164 DUPCLOSURE                       R20 K33 [PROTO_15]
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R5
      174 RETURN                           R20 1
